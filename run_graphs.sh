#!/bin/bash

export PYPHI_WELCOME_OFF='yes'

for graph in $(ls executionFiles); do
  if [[ $graph == *"_tri_"* ]] || [[ $graph == *"_l1_"* ]]; then
    echo "----------" >>results_sh.txt
    echo $graph >>results_sh.txt
    python executionFiles/$graph >>results_sh.txt
  fi
done
