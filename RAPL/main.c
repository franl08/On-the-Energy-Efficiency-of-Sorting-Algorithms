/*
 *  Análise e Teste de Software
 *  João Saraiva 
 *  2016-2017
 */


#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <sensors/sensors.h>
#include <sys/time.h>
#include <unistd.h>
#include "rapl.h"

#define RUNTIME
#define MIN_TEMPERATURE 60


int main (int argc, char **argv) 
{ 
  // initialize the sensors
  sensors_init(NULL);

  char command[500], res[500];
  int ntimes = 1;
  int core = 0;
  int i = 0;

#ifdef RUNTIME
  clock_t begin, end;
  double time_spent;

  struct timeval tvb,tva;
  
#endif
  
  FILE * fp;

  // printf("Program to be executed: %d",argc);
  // strcpy( command, "./" );
  strcat(command, argv[1]);
  printf("Program to be executed: %s\n",argv[1]);

  strcpy(command, "./" );
  strcat(command, argv[1]);

  ntimes = atoi(argv[2]);

  strcpy(res, command);
  strcat(res, ".J");
  printf("Command: %s  %d-times res: %s\n", command, ntimes, res);
  

  printf("\n\n RUNNING THE PARAMETRIZED PROGRAM:  %s\n\n\n",command);
  fflush(stdout);
  
  fp = fopen(res, "w");
  rapl_init(core);
  fprintf(fp,"Language, Program, Input Size ,Package , Cores , GPU , DRAM , Time \n");

  for (i = 0 ; i < ntimes ; i++)
    {   
        sleep(1);
        double temp = MIN_TEMPERATURE + 1;
        while (temp >= MIN_TEMPERATURE) {
          sensors_chip_name const *chip_name;
          int chip_nr = 0;
          while ((chip_name = sensors_get_detected_chips(NULL, &chip_nr)) != NULL) {
              sleep(1);
              // Check if the chip is a CPU coretemp chip
              if (strncmp(chip_name->prefix, "coretemp", 8) == 0) {
                  // Get a handle to the first available feature on the chip
                  sensors_feature const *feature;
                  int feature_nr = 0;
                  if ((feature = sensors_get_features(chip_name, &feature_nr)) != NULL) {
                      // Check if the feature is a temperature sensor
                      if (feature->type == SENSORS_FEATURE_TEMP) {
                          // Get the temperature reading
                          sensors_subfeature const* subfeature;
                          int subfeature_nr = 0;
                          while((subfeature = sensors_get_all_subfeatures(chip_name, feature, &subfeature_nr)) != NULL) {
                            if (subfeature->type == SENSORS_SUBFEATURE_TEMP_INPUT) {
                              double value;
                              if(sensors_get_value(chip_name, subfeature->number, &value) == 0) {
                                temp = value;
                              }
                            }
                          } 
                      }
                      if (temp < MIN_TEMPERATURE) {
                          break;
                      }
                  }
              }
          }
          if (temp <= MIN_TEMPERATURE) {
            break;
          }
        }


        //end:
        fprintf(fp, "%s , ",argv[3]);
        fprintf(fp,"%s , ",argv[1]);
        fprintf(fp,"%s , ",argv[4]);
        rapl_before(fp,core);
      
#ifdef RUNTIME
        begin = clock();
	gettimeofday(&tvb, 0);
#endif
	
        system(command);

#ifdef RUNTIME
	end = clock();
	gettimeofday(&tva, 0);
	//	time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	time_spent = (tva.tv_sec-tvb.tv_sec)*1000000 + tva.tv_usec-tvb.tv_usec;
#endif

	rapl_after(fp,core);

#ifdef RUNTIME	
	fprintf(fp," %G \n",time_spent);
#endif	
    }
    
  printf("\n\n END of PARAMETRIZED PROGRAM: \n");

  fclose(fp);
  fflush(stdout);

  // sensors cleanup
  sensors_cleanup();
  return 0;
}