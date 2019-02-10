git clone https://github.com/cheesema/LibAPR.git
cd LibAPR
git submodule update --init --recursive
cd ..
wget https://cmake.org/files/v3.10/cmake-3.10.2-Linux-x86_64.tar.gz
tar -xzvf cmake-3.10.2-Linux-x86_64.tar.gz
cd LibAPR
mkdir build
cd build
/srv/cmake-3.10.2-Linux-x86_64/bin/cmake ..
make


