# Download and untar linux release
# https://github.com/NASA-AMMOS/VICAR/releases/download/5.0/vicar_open_bin_x86-64-linx_5.0.tar.gz
# create symlink to avoid too long paths > [VICAR VISOR Notes · NASA-AMMOS/VICAR Wiki](https://github.com/NASA-AMMOS/VICAR/wiki/VICAR-VISOR-Notes)
cd vicar_open_bin_x86-64-linx_5.0/
ln -s vicar_open_5.0 v5.0
# create image 
cd docker
docker build -t ubuntu-server:22.04 .
# back to top dir, run it
docker run -it --rm -v $PWD/vicar_open_bin_x86-64-linx_5.0:/vicar -w /vicar ubuntu-server:22.04 /bin/tcsh
# set this :
# setenv V2TOP vicar/v5.0
# follow the official docs > https://github.com/NASA-AMMOS/VICAR/blob/master/vos/docsource/vicar/VICAR_guide_5.0.pdf
