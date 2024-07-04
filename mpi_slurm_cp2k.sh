#!/bin/bash

#list of modules you want to use, for example
#module load cp2k/9.1/gcc-8.3.1-wr

#export CP2K_DATA_DIR=/home/softwares/spack/opt/spack/linux-centos7-cascadelake/gcc-11.2.1/cp2k-2023.1-oaqxfdehpplndhilbikuu2yxefibuze5/share/data

#name of the executable 
#exe="cp2k.psmp"

#export OMP_NUM_THREADS=1

#run the application 
#mpirun -n 20 $exe -i cp2k.inp -o cp2k.out

docker run -v $PWD:/mnt --shm-size=1g cp2k/cp2k:9.1 mpiexec -genv OMP_NUM_THREADS=1 -np 8 cp2k -i cp2k_input.inp -o cp2k.out
#mpirun -bootstrap slurm -n $SLURM_NTASKS $exe -i pdi-l-1.restart -o cp2k.out
