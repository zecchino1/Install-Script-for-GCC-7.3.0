echo "installing gcc-c++"
yum -y install gcc-c++

echo "Downloading gcc source files..."
wget http://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-7.3.0/gcc-7.3.0.tar.gz

echo "extracting files..."
tar zxf gcc-7.3.0.tar.gz

echo "switching directories"
cd gcc-7.3.0

echo "Installing dependencies..."
yum install gmp-devel mpfr-devel libmpc-devel

echo "Installing bzip2"
yum -y install bzip2

echo "installing bzip2 dependencies"
./contrib/download_prerequisites

echo "Configuring the GCC build environment"
./configure --disable-multilib --enable-languages=c,c++

echo "Configure and install..."
make -j 4
make install
