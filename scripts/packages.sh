#!/bin/bash

apt-get install git -y
wget https://bootstrap.pypa.io/get-pip.py
chmod +x get-pip.py
./get-pip.py
python -m pip install pyyaml
python -m pip install restunlclient
python -m pip install simplejson
python -m pip install --upgrade requests
echo "PACKAGES INSTALLED"
