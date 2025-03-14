#!/bin/bash
#SBATCH --job-name=001
#SBATCH --partition=batch
#SBATCH --ntasks-per-node=6
#SBATCH --nodes=1
#SBATCH --time=00:30:00
#SBATCH --output=%j.out
#SBATCH --error=%j.err


module load gcc/9.4.0-eewq4j6  openmpi/4.1.2-nfk6aky quantum-espresso/7.1-jzwixr3

#export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK



#srun pw.x -in scf_graphene.in > scf_graphene.out
#srun pw.x -in nscf_dos_graphene.in > nscf_dos_graphene.out
#srun dos.x -in dos.in > dos.out
projwfc.x -in pdos.in > pdos.out


echo "Run finished with exit code $? at: `date`"