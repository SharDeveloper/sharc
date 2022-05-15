sharc=/path/to/sharc
sexy=/path/to/sexy.o
STD=/path/to/STD.sharm

$sharc -o threads.ll -m $STD -s main.shar &&
opt -O3 -mcpu=x86-64-v3 threads.ll -o threads.bc &&
llc -O3 --filetype=obj --relocation-model=dynamic-no-pic -o threads.o threads.bc &&
clang -O3 -lm -ldl -pthread threads.o $sexy -o threads
