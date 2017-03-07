#!/bin/bash
pip install s3fs
sudo mkdir /home/ubuntu/sharedata
sudo mount 172.18.7.7:/home/ubuntu/sharedata /home/ubuntu/sharedata
exec su $BASICUSER -c "env PATH=$PATH jupyter notebook --NotebookApp.password='' --NotebookApp.token='' --NotebookApp.password_required=False --ip='*' --no-browser $*"
