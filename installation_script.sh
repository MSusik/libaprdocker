#!/bin/bash

cd PyLibAPR
if python -c "import pyApr"; then
	echo "PyApr has been already installed"
else
	python setup.py install
fi
cd ..

jupyter lab --ip=0.0.0.0 --allow-root --port=8888
