#!/bin/bash
#SBATCH --job-name=styletran
#SBATCH --output=logs/st_%j.txt  # output file
#SBATCH -e logs/st_%j.err        # File to which STDERR will be written
#SBATCH --partition=titanx-long # Partition to submit to
#SBATCH --gres=gpu:3
#SBATCH --mem=42G
#
#SBATCH --ntasks=1

python -u constructEmbeddingDump.py