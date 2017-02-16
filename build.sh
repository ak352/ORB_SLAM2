echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release #-DCMAKE_C_COMPILER=/usr/local/bin/gcc-6 -DCMAKE_CXX_COMPILER=/usr/local/bin/g++-6
make -j

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release # -DCMAKE_C_COMPILER=/usr/local/bin/gcc-6 -DCMAKE_CXX_COMPILER=/usr/local/bin/g++-6
make -j

cd ../../../

echo "Uncompress vocabulary ..."

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "Configuring and building ORB_SLAM2 ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release #-DCMAKE_C_COMPILER=/usr/local/bin/gcc-6 -DCMAKE_CXX_COMPILER=/usr/local/bin/g++-6
make -j
