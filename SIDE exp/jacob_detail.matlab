clc;clear
syms a b s c1 c2 c3 c4 c5 o1 n1 o2 n2 o3 n3 o4 n4 o5 n5 ...
    tall tann kao  F_ANpureAN_ooon F_CMpureCM_ooon L_CMpureCM_oonn L_CMpureCM_onno ...
    F_VMpure L_VMpure F_MIXcm_ooon L_MIXcm_oonn L_MIXcm_onno F_MIXan_ooon...
    F_MIX2cm_ooon L_MIX2cm_oonn L_MIX2cm_onno F_MIX2an_ooon

jacobian([F_CMpureCM_ooon- F_ANpureAN_ooon, L_CMpureCM_oonn-L_VMpure,    L_CMpureCM_onno-L_VMpure,...
	F_VMpure- F_ANpureAN_ooon,    L_MIXcm_oonn-L_MIXcm_onno,    L_MIX2cm_oonn-L_MIX2cm_onno...
    F_MIXcm_ooon-F_MIXan_ooon, F_MIX2cm_ooon-F_MIX2an_ooon, F_MIX2cm_ooon-F_MIXcm_ooon],...
    [a,    b,    s,    c1,    c2,    c3,    c4,    c5,    o1,    n1,    o2,    n2,    o3,    n3,    o4,    n4,    o5,    n5 ...
    tall,    tann,    kao, F_ANpureAN_ooon,    F_CMpureCM_ooon,    L_CMpureCM_oonn,...
    L_CMpureCM_onno,    F_VMpure,    L_VMpure,    F_MIXcm_ooon,    L_MIXcm_oonn,    L_MIXcm_onno,    F_MIXan_ooon...
    F_MIX2cm_ooon,    L_MIX2cm_oonn,    L_MIX2cm_onno,    F_MIX2an_ooon])