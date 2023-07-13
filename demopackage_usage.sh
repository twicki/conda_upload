#!/bin/bash

mamba create --name load_conda python
conda activate load_conda
conda install -c /home/wit/Desktop/sandbox/test_upload/my-channel/ demopackage
python -m pip list
