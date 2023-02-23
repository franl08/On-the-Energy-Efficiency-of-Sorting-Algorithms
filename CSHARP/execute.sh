dir_to_process="."

for dir in "$dir_to_process"/*/; do
  cd "$dir"
  mono *.exe
  cd ".."
done