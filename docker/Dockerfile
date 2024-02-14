FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y ubuntu-server tcsh build-essential gfortran

# this is a copy of https://github.com/mariodamore/vicar-docker/blob/master/README.md
#
# # Run VICAR under UBUNTU server in Docker
# 
# ## Description
# 
# [VICAR, which stands for Video Image Communication And Retrieval,](https://www.hou.usra.edu/meetings/planetdata2015/pdf/7059.pdf) is a general purpose image processing software system that has been developed since 1966 to digitally process multi-dimensional imaging data.
# 
# The VICAR core contains a large number of multimission application programs and utilities.  The general VICAR web page is [https://www-mipl.jpl.nasa.gov/vicar.html](https://www-mipl.jpl.nasa.gov/vicar.html).
# 
# ## Quickstat
# 
# Download and untar linux release
# 
#     wget https://github.com/NASA-AMMOS/VICAR/releases/download/5.0/vicar_open_bin_x86-64-linx_5.0.tar.gz
#     tar xvfz vicar_open_ext_x86-64-linx_5.0.tar.gz
# 
# create symlink to avoid too long paths (https://github.com/NASA-AMMOS/VICAR/wiki/VICAR-VISOR-Notes) that leads to this error `[TAE-BADPAR] '$USER_START' is an undefined parameter or unknown qualifier.`:
# 
#     cd vicar_open_bin_x86-64-linx_5.0/
#     ln -s vicar_open_5.0 v5.0
# 
# create image, with all dependencies, namely `apt-get install -y ubuntu-server tcsh build-essential gfortran` 
# 
#     cd docker
#     docker build -t ubuntu-server:22.04 .
# 
# back to top dir, run it, binding vicar dir to `/vicar` in the container:
# 
#     docker run -it --rm -v $PWD/vicar_open_bin_x86-64-linx_5.0:/vicar -w /vicar ubuntu-server:22.04 /bin/tcsh
# 
# follow the official [docs](https://github.com/NASA-AMMOS/VICAR/blob/master/vos/docsource/vicar/VICAR_guide_5.0.pdf), the only difference it to set `V2TOP`
#     
#     setenv V2TOP vicar/v5.0
# 
# after that, everythin is like in the documentations.
# Set up the environment:
# 
#     source $V2TOP/vicset1.csh
#     source $V2TOP/vicset2.csh
# 
# run suggested test:
# 
#     $R2LIB/gen a
#     $R2LIB/list
#     $R2LIB/copy a b
#     $R2LIB/label -list b
#     $R2LIB/list b
#     $R2LIB/gen c 1024 1024
# 
# Everything works.
