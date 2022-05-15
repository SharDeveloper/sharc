sharc=/path/to/sharc
sexy=/path/to/sexy.o
STD=/path/to/STD.sharm

$sharc -o hello.ll -m $STD -s main.shar &&
opt -O3 -mcpu=x86-64-v3 hello.ll -o hello.bc &&
llc -O3 --filetype=obj --relocation-model=dynamic-no-pic -o hello.o hello.bc &&
clang -O3 -lm -ldl -pthread hello.o $sexy -o hello
