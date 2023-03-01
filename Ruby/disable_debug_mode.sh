#!/bin/bash
#!/usr/bin/env ruby

for d in */;
do
cd $d;
sed -i 's/debug = true/debug = false/g' ${d::-1}.rb;

cd ..;
done;
