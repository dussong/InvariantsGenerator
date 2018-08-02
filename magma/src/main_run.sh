#!/bin/bash

source parameters.conf

. ./script_gen_inv_ba.sh

cat parameters.conf >> julia_run.jl
cat julia_gen_text_inv_ba.jl >> julia_run.jl

echo "julia run"

julia julia_run.jl

rm julia_run.jl
