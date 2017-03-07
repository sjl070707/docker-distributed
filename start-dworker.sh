#!/bin/bash
NCPUS=`python -c "import multiprocessing as mp; print(mp.cpu_count())"`
echo "Detected $NCPUS cpus"
pip install s3fs
sudo mkdir /home/ubuntu/sharedata
sudo mount 172.18.7.7:/home/ubuntu/sharedata /home/ubuntu/sharedata
# Alternatively start one python process per CPU
# exec su $BASICUSER -c "env PATH=$PATH dask-worker dscheduler:8786 --nthreads 1 --nprocs $NCPUS $*"
exec su $BASICUSER -c "env PATH=$PATH dask-worker dscheduler:8786 $*"
