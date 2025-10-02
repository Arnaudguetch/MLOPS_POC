#!/bin/bash

set -e
set -x

mkdir -p /logs

echo "======== Lancement de tous les scripts en asynchrone ========"

python3 /notebooks/model.py > /logs/model.log 2>&1

python3 /sqlite/database.py > /logs/database.log 2>&1

echo "======== Fin de lancement des scripts ========"

tail -f /dev/null