#!/bin/bash
exec su $BASICUSER -c "env PATH=$PATH jupyter notebook --config NotebookApp.password='' --config NotebookApp.token='' --config NotebookApp.password_required=False --ip='*' --no-browser $*"
