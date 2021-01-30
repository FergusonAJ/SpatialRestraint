#!/bin/bash

######################################################
################## AUTO GENERATED ####################
######################################################
# Auto Generated (do not touch unless you know what you're doing!)
# Also, these have to be at the top, sorry!
# Experiment name -> name of current directory
SR_EXP_NAME=$(pwd | grep -oP "/\K[^/]+$")
# Experiment directory -> current directory
SR_EXP_DIR=$(pwd)
# Root directory -> The root level of the repo, should be directory just above 'experiments'
SR_ROOT_DIR=$(pwd | grep -oP ".+/(?=experiments/)")
source ${SR_ROOT_DIR}/experiments/config_global.sh

######################################################
################## CONFIG OPTIONS ####################
######################################################

#### GLOBAL EXPERIMENT VARIABLES
# Cost of unrestrained cells [Comma separated list of integers]
SR_COST=0
# Size of multicells (length of one side of a square) [Comma separated list of integers]
SR_MC_SIZE=8,16,32,64,128,256,512
# Number of samples per restraint level (count of ones) [Integer]
SR_SAMPLES=1000
# Do restrained multicells check only one cell? 
    # (Alternative:they keep looking for empty neighbor)
SR_ONE_CHECK=True
# Do organisms have an infinite genome? [bool]
SR_INFINITE=True

#### EVOLUTION VARIABLES
# Starting ones, where does the ancestor start? [Comma separated list of integers]
SR_EVO_ONES=50
# Mutation rate of multicells. [Comma separated list of floats]
SR_EVO_MUT_RATE=0.2
# Number of generations to run evolution [Integer] 
SR_EVO_GENS=1000
# Time allotment for each slurm job [Format: HH:MM:SS]
SR_EVO_TIME=3:58:00
# Memory allotment for each slurm job [Format: xG for x gigs]
SR_EVO_MEMORY=1G
# Value of the first seed (rest of the jobs follow seqeuntially [Integer]
SR_EVO_SEED_OFFSET=0
# Number of replicates for each treatment
SR_EVO_REPS=100
# Number of jobs per treatment 
SR_EVO_JOBS=1
# Number of multicells in the populations 
SR_EVO_POP_SIZE=200
# Directory where the timing jobs will go [Path] (Unlikely to change)
SR_EVO_DIR=${SR_EXP_DIR}/evolution
# Directory where the timing jobs will go [Path] (Unlikely to change)
SR_EVO_JOB_DIR=${SR_EVO_DIR}/jobs
# Directory where the raw timing data will go [Path] (Unlikely to change)
SR_EVO_OUTPUT_DIR=${SR_SCRATCH_ROOT}/${SR_EXP_NAME}/evolution


#### TIMING VARIABLES
# One values to compute distributions for [Comma separated list of integers]
SR_TIMING_ONES="0->100"
# Mutation rate of cells. [Comma separated list of floats]
SR_TIMING_MUT_RATE=0.2
# Time allotment for each slurm job [Format: HH:MM:SS]
SR_TIMING_TIME=2:00:00
# Memory allotment for each slurm job [Format: xG for x gigs]
SR_TIMING_MEMORY=1G
# Value of the first seed (rest of the jobs follow seqeuntially [Integer]
SR_TIMING_SEED_OFFSET=0
# Number of jobs for each treatment [Integer]
SR_TIMING_JOBS=1
# Number of tasks for each job [Integer]
SR_TIMING_TASKS=1
# Directory where the timing jobs will go [Path] (Unlikely to change)
SR_TIMING_DIR=${SR_EXP_DIR}/timing_distributions
# Directory where the timing jobs will go [Path] (Unlikely to change)
SR_TIMING_JOB_DIR=${SR_TIMING_DIR}/jobs
# Directory where the raw timing data will go [Path] (Unlikely to change)
SR_TIMING_OUTPUT_DIR=${SR_SCRATCH_ROOT}/${SR_EXP_NAME}/timing_distributions