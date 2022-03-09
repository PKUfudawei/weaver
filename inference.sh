PREFIX=HWWvsQCD.sdmass.5PIDvar.finebin
GPU=0
datacard=/home/olympus/fudawei/weaver/data/HWW/ak8_points_pf_sv_mass_decorr_${PREFIX//./_}.yaml
dir=pnet.${PREFIX}
inference='/mldata/licq/deepjetak8/20220301_ak8_UL17_v3/GluGluToBulkGravitonToHHTo4W_JHUGen_M-1000_narrow_v3/01/output_all.root'
python train.py --predict \
--data-test ${inference} \
--data-config ${datacard} \
--network-config networks/particle_net_pf_sv.py \
--model-prefix output/HWWvsQCD/${dir}/${dir}_best_epoch_state.pt \
--gpus ${GPU} --batch-size 512 --start-lr 5e-3 --num-workers 3 \
--predict-output predict/HWWvsQCD/${dir}/HHWW_M1000_new.root

PREFIX=HWWvsQCD.sdmass.5PIDvar.finebin
GPU=0
datacard=/home/olympus/fudawei/weaver/data/HWW/ak8_points_pf_sv_mass_decorr_${PREFIX//./_}.yaml
dir=pnet.${PREFIX}
inference='/mldata/licq/deepjetak8/20200601_ak8_UL17_flat/QCD*/*/*/*/output_*.root'
python train.py --predict \
--data-test ${inference} \
--data-config ${datacard} \
--network-config networks/particle_net_pf_sv.py \
--model-prefix output/HWWvsQCD/${dir}/${dir}_best_epoch_state.pt \
--gpus ${GPU} --batch-size 512 --start-lr 5e-3 --num-workers 10 \
--predict-output predict/HWWvsQCD/${dir}/QCD_allPt_WW_new.root
