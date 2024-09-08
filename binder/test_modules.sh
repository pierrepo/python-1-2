#! /usr/bin/env bash

python <<EOF
import numpy
import pandas
import openpyxl
import xarray
import scipy
import statsmodels
import polars

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
import Bio
import biopandas
import MDAnalysis
import nglview
import py3Dmol
import bs4
import wordcloud
import nltk
import streamlit
import networkx

from watermark import watermark
# Python implementation and version, and machine architecture
print(watermark())
# Packages versions
print(watermark(
    watermark=True,
    packages="jupyterlab,ipywidgets",
    iversions=True, globals_=globals()
))
# Conda env name
print(watermark(conda=True))
EOF

pytest --version
streamlit --version

pylint --version | head -n 1
echo "pycodestyle $(pycodestyle --version)"
echo "pydoctyle $(pydocstyle --version)"
black --version | head -n 1
ruff --version

echo -e "\nJupyter Lab extensions:"
jupyter-labextension list
