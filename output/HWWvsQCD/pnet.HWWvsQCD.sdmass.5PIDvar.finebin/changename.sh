#!/bin/bash
for a in {0..29}
do
    mv pnet.HWWvsQCD.5PIDvar.finebin_epoch-${a}_optimizer.pt pnet.HWWvsQCD.sdmass.5PIDvar.finebin_epoch-${a}_optimizer.pt
    mv pnet.HWWvsQCD.5PIDvar.finebin_epoch-${a}_state.pt pnet.HWWvsQCD.sdmass.5PIDvar.finebin_epoch-${a}_optimizer.pt
done
