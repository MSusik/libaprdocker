git clone https://github.com/cheesema/LibAPR.git
cd LibAPR
git checkout develop_redo
git submodule update --init --recursive
cd ..
wget https://cmake.org/files/v3.10/cmake-3.10.2-Linux-x86_64.tar.gz
tar -xzvf cmake-3.10.2-Linux-x86_64.tar.gz
cd LibAPR
mkdir build
cd build
/srv/cmake-3.10.2-Linux-x86_64/bin/cmake -DAPR_BUILD_EXAMPLES=1 -DAPR_TESTS=1 -DAPR_INSTALL=1 ..
make

cd ..
git clone https://github.com/Blosc/hdf5-blosc
cd hdf5-blosc
mkdir build
cd build
/srv/cmake-3.10.2-Linux-x86_64/bin/cmake ..
make

pip3 install h5py
pip3 install hdf5plugin
pip3 install jupyterlab

mkdir -p $HDF5_PLUGIN_PATH
cp /srv/LibAPR/hdf5-blosc/build/libH5Zblosc.so $HDF5_PLUGIN_PATH
