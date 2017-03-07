#!/bin/bash
# XXX: instead of using the default '*' host wildcard it is highly recommended
# to configure a public DNS name for the dscheduler service endpoint,
# preferably with a TLS certificate and define the STATUS_ENDPOINT environment
# variable to something like "publicname:443" instead.
pip install s3fs
sudo mkdir /home/ubuntu/sharedata
sudo mount 172.18.7.7:/home/ubuntu/sharedata /home/ubuntu/sharedata
STATUS_ENDPOINT="${STATUS_ENDPOINT:-"*"}"
# exec su $BASICUSER -c "env PATH=$PATH dask-scheduler --host dscheduler --bokeh-whitelist="$STATUS_ENDPOINT" $*"
exec su $BASICUSER -c "env PATH=$PATH dask-scheduler --bokeh-whitelist="$STATUS_ENDPOINT" $*"
