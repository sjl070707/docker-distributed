#!/bin/bash
pip install dask[complete]
exec su $BASICUSER -c "env PATH=$PATH jupyter notebook --NotebookApp.password='' --NotebookApp.token='' --NotebookApp.password_required=False --ip='*' --no-browser $*"
