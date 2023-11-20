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
import nglview
import py3Dmol
import bs4
import wordcloud
import nltk
import streamlit
import folium
import streamlit_folium

from watermark import watermark
print(watermark(
    python=True,
    conda=True,
    machine=True,
    watermark=True,
    packages="jupyterlab,ipywidgets",
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

echo -e "\nJupyter Lab extensions:"
jupyter-labextension list
