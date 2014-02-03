#! /bin/bash
#
# x_make_data.sh
# Copyright (C) 2014 gareth <gareth@GDS-Desktop>
#
# Distributed under terms of the MIT license.
#

rm -rf data
mkdir data
gfortran -o xmake_data make_data.f90
./xmake_data
rm xmake_data
