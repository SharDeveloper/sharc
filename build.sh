sharc=/path/to/sharc
sexy=/path/to/sexy.o
STD=/path/to/STD.sharm

sourceFiles=`ls src/*.shar`
$sharc -o sharc.ll -m $STD -s $sourceFiles main.shar &&
opt -mcpu=x86-64-v3 -O3 -o sharc.bc sharc.ll &&
llc -O3 --filetype=obj --relocation-model=dynamic-no-pic -o sharc.o sharc.bc &&
clang -O3 -lm -ldl -pthread sharc.o $sexy -o sharc
