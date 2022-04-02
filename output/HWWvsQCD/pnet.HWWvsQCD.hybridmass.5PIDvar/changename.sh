#!/bin/bash
for a in {0..29}
do
    mv pnet.HWWvsQCD.hybridmass.5lepvar_epoch-${a}_state.pt pnet.HWWvsQCD.hybridmass.5PIDvar_epoch-${a}_state.pt
    mv pnet.HWWvsQCD.hybridmass.5lepvar_epoch-${a}_optimizer.pt pnet.HWWvsQCD.hybridmass.5PIDvar_epoch-${a}_optimizer.pt
done
