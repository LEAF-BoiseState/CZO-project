#!/bin/bash
#
#SBATCH -J PFCLM2_b1
#SBATCH -o log_parflow_run.o%j   		 	# output and error file name (%j expands to jobID)
#SBATCH -n 112      					# number of cores total
#SBATCH -p shortq         				# queue (partition) -- normal, development, etc.
#SBATCH -t 12:00:00      				# run time (hh:mm:ss)
#SBATCH --mail-type=END,FAIL    			# notifications for job done & fail
#SBATCH --mail-user=chaochen@boisestate.edu        	# send-to address
#SBATCH --exclusive
module load slurm intel/mpi/64/2017/7.259 intel/mkl/64/2017/7.259 intel/compiler/64/2017/17.0.7 parflow/intel/3.2.0
export PARFLOW_DIR=/cm/shared/apps/parflow/intel/3.2.0
tclsh pfclm_synthetic2_base1_i.tcl


