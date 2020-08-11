wget -O ImageMagick-7.0.10-26.tar.gz https://github.com/ImageMagick/ImageMagick/archive/7.0.10-26.tar.gz 

tar xvzf ImageMagick-7.0.10-26.tar.gz
cd ImageMagick-7.0.10-26.tar.gz
sudo apt-get build-dep imagemagick libmagickcore-dev libde265 libheif
sudo apt install libheif-dev libde265-dev libraw-dev librsvg2-dev

# configure
./configure --with-modules --with-perl --with-raw --with-heic --with-rsvg

# compile
make -j4
# run tests
make check
# sudo apt install checkinstall
sudo checkinstall
# instead of 
sudo make install
# 
sudo ldconfig

# extra commnds
make clean
make distclean
make uninstall

# References
# https://imagemagick.org/script/advanced-unix-installation.php
