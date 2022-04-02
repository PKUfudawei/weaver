#!/bin/bash
for a in {0..29}
do
    mv pnet.HWWvsQCD.sdmass.5lepvar_epoch-${a}_state.pt pnet.HWWvsQCD.sdmass.5PIDvar_epoch-${a}_state.pt
    mv pnet.HWWvsQCD.sdmass.5lepvar_epoch-${a}_optimizer.pt pnet.HWWvsQCD.sdmass.5PIDvar_epoch-${a}_optimizer.pt
done
