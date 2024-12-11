#/usr/bin/bash

#pwd

cd CODE/

pgfortran -Mcuda -Mcudalib=cufft -lcufft -ta=tesla:cc60 -DOUBLE -c precision_m.CUF
pgfortran -Mcuda -Mcudalib=cufft -lcufft -ta=tesla:cc60 -c cufft_m.CUF
pgfortran -Mcuda -Mcudalib=cufft -lcufft -ta=tesla:cc60 -o ../a.out main.CUF cufft_m.o precision_m.o 


cd ..
time ./a.out 
rm -f a.out


exit
