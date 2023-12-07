# ece_587_project_tsbp_reversibility
Repository for tracking code changes to SimpleScalar for the ECE 587 group 9 project

simulator/ss3/bpred.c and its accompanying header file contain the temporal stream branch prediction logic:

bpred_ts_create(): a new function that creates an instance of a TS predictor

bpred_lookup(): modifications were made to add TS predictor logic to either invert or return base prediction

bpred_update(): modifications were made to add TS update logic that include updating correctness buffer and head table and determining if replay flag should be set or disabled

simulator/ss3/sim-outorder.c has changes to add the TS predictor as a valid predictor option

