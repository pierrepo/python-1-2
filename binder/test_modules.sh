#! /usr/bin/env bash

python <<EOF
import numpy
import pandas
import scipy

import matplotlib
import seaborn
import bokeh
import plotly

import requests

import sklearn
import PIL
import skimage

import rdkit
import flask
import ete3
import Bio
import biopandas
import MDAnalysis

from watermark import watermark
print(watermark(
    current_date=True,
    current_time=True,
    iso8601=True,
    python=True,
    conda=True,
    machine=True,
    watermark=True,
    iversions=True, globals_=globals()
))
EOF

muscle -version
pytest --version
streamlit --version

pylint --version | head -n 1
echo "pycodestyle $(pycodestyle --version)"
echo "pydoctyle $(pydocstyle --version)"
black --version | head -n 1
ruff --version

jupyter-labextension list
