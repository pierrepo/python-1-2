# Conda environment for Python programming

<https://github.com/pierrepo/python-practical-env>


Try the environment in your browser with Binder:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/pierrepo/python-practical-env/master?urlpath=lab)


## Create env

The environment should already exist in the computer rooms at the university.

```bash
mamba env update -f binder/environment.yml
```

## Load env

```bash
conda activate ppoulain-python
```

## Manually install Muscle

```bash
conda install -c bioconda muscle=3.8
```

## Verify modules and tools

### Run Jupyter Lab

```bash
jupyter lab
```

open `binder/test_modules.ipynb`

`Kernel` -> `Restart Kernel And Run All Cells`

### Run script

```bash
bash binder/test_modules.sh
```
