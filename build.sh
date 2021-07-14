sourceFiles=`ls src/*.shar`
sharc -o sharc.ll -m /usr/include/shar/STD.sharm -s $sourceFiles main.shar
opt -O3 --mattr=+avx2 sharc.ll -o sharc.bc
rm sharc.ll
