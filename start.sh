#!/bin/bash
set -e

function jupyter {
  jupyter-notebook  --ip="*" --allow-root
}

case "$1" in
  "jupyter")
    jupyter
    ;;
  "jupyter-custom")
    jt -t grade3 -f roboto -fs 9 -nfs 9 -cellw 95%
    jupyter
    ;;
  "*")
    echo "usage: jupyter | jupyter-custom | bash"
    exit 0
    ;;
esac
