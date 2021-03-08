sudo yum update

#install development tools
sudo yum groupinstall "Development tools"

#Install dependencies for jpeg, tiff, png, freetype fontconfig bzip2 xml X11 Xt ghostscript

sudo yum install libjpeg-devel libtiff-devel libpng-devel \
                freetype-devel fontconfig-devel bzip2-devel \
                libxml2-devel libX11-devel libXt-devel ghostscript


#Download ImageMagick
wget https://www.imagemagick.org/download/ImageMagick.tar.gz 

#Untar Imagemagick
tar xvzf ImageMagick.tar.gz 

#Access the working directory
cd ImageMagick-[version_number] 

#Configure and make sure to assign prefix as install path
./configure --prefix=<install-path>

#Make
make

#Install to install path
make install

#Check install
make Check

#create backup of install as tar file
cd <install-path>/..
tar -cvzf magick.tar.gz magick/