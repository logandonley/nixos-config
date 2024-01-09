# Adapted from https://www.reddit.com/r/NixOS/comments/1706v6p/comment/k3jry2z/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1
# /u/stuzenz is a hero!

with import <nixpkgs> { };

let
  pythonPackages = python311Packages; # Change to Python 3.10
in pkgs.mkShell rec {
  name = "impurePythonEnv";
  venvDir = "./.venv";
  buildInputs = [

    pkgs.stdenv.cc.cc.lib

    pythonPackages.ipykernel
    pythonPackages.jupyterlab
    pythonPackages.venvShellHook
    pythonPackages.pip
    pythonPackages.numpy
    pythonPackages.pandas
    pythonPackages.requests

    taglib
    openssl
    git
    libxml2
    libxslt
    libzip
    zlib

  ];

  postVenvCreation = ''
    unset SOURCE_DATE_EPOCH
    
    python -m ipykernel install --user --name=hack --display-name="hack"
    pip install -r requirements.txt
  '';

  postShellHook = ''
    # allow pip to install wheels
    unset SOURCE_DATE_EPOCH
  '';
}
