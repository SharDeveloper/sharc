sharc -o hello.ll -m /usr/include/shar/STD.sharm -s main.shar
opt -O3 --mattr=+avx2 hello.ll -o hello.bc
rm hello.ll
clang -O1 -march=native -lm -ldl -pthread hello.bc /usr/lib/libshar-os-api.so -o hello
