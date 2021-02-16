#!/bin/bash
#
#SBATCH --output=table4.csv
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=2
#SBATCH --time=10:00
#SBATCH -p short-40core

module load R/3.6.0
module load shared
module load intel/compiler/64/2017/17.0.0
module load intel/mkl/64/2017/0.098
module load intel/mpi/64/2017/0.098
/gpfs/home/weicdeng/project/hw1/project1_4.R
