#!/bin/bash

export LD_LIBRARY_PATH=vtkLibs/linux_64bit:$LD_LIBRARY_PATH

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $DIR
./.do_launch.sh vtkLibs/linux_64bit/vtk.jar
