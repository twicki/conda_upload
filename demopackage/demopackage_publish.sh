#!/bin/bash
mamba env create -f demopackage/requirements.yml
conda activate test_upload
pip install -e demopackage/
python -m pip list
mamba install -c conda-forge conda-build
conda-build demopackage/
cp /home/wit/miniconda3/envs/test_upload/conda-bld/linux-64/demopackage-0.1-py311_0.tar.bz2 my-channel/linux-64/
conda index my-channel/
