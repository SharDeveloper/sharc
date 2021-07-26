sharc -o threads.ll -m /usr/include/shar/STD.sharm -s main.shar
opt -O3 --mattr=+avx2 threads.ll -o threads.bc
rm threads.ll
clang -O1 -march=native -lm -ldl -pthread threads.bc /usr/lib/libshar-os-api.so -o threads
