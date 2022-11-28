function caseObject = distCase_test13nodes

%%  Comments:
%   Distribution test feeder, 12 nodes, unbalanced conditions for testing
%   Please see distributionCaseFormat.m for details on the case file format

%%  Single phase base power
caseObject.baseMVA = 0.1666666667;
caseObject.P_sc=00;  %mw 
%% max power for every phase  this is a big add on in the program
caseObject.P_max=00; %mw

%%  Bus data:
%{
bID	type	VmA	VmB	VmC	VaA	VaB	VaC	baseKV
%}
caseObject.bus = [
600	3	1.0625000000	1.0500000000	1.0687000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
632	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
633	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
634	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	0.2771281292;
645	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
646	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
671	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
680	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
684	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
611	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
652	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
692	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
675	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
1	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
2	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
3	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
4	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
5	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
6	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
7	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
8	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
9	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
10	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	2.4017771198;
];

%%  Generator data:
%{
bID	PgA	PgB	PgC	QgA	QgB	QgC	Status
%}
caseObject.gen = [
600	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
];

%%  Wye-load:
%{
bID	YPd0A	YPd0B	YPd0C	YQd0A	YQd0B	YQd0C	YPd1A	YPd1B	YPd1C	YQd1A	YQd1B	YQd1C	YPd2A	YPd2B	YPd2C	YQd2A	YQd2B	YQd2C	Status
%}
caseObject.yload = [
634	0.1600000000	0.1200000000	0.1200000000	0.1100000000	0.0900000000	0.0900000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
645	0.0000000000	0.1700000000	0.0000000000	0.0000000000	0.1250000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
652	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.1280000000	0.0000000000	0.0000000000	0.0860000000	0.0000000000	0.0000000000	1;
675	0.4850000000	0.0680000000	0.2900000000	0.1900000000	0.0600000000	0.2120000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	-0.2000000000	-0.2000000000	-0.2000000000	1;
611	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.1700000000	0.0000000000	0.0000000000	0.0800000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	-0.1000000000	1;
1	0.0017000000	0.0066000000	0.0117000000	0.0010000000	0.0038000000	0.0068000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
2	0.0017000000	0.0066000000	0.0117000000	0.0010000000	0.0038000000	0.0068000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
3	0.0017000000	0.0066000000	0.0117000000	0.0010000000	0.0038000000	0.0068000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
4	0.0017000000	0.0066000000	0.0117000000	0.0010000000	0.0038000000	0.0068000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
5	0.0017000000	0.0066000000	0.0117000000	0.0010000000	0.0038000000	0.0068000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
6	0.0017000000	0.0066000000	0.0117000000	0.0010000000	0.0038000000	0.0068000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
7	0.0017000000	0.0066000000	0.0117000000	0.0010000000	0.0038000000	0.0068000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
8	0.0017000000	0.0066000000	0.0117000000	0.0010000000	0.0038000000	0.0068000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
9	0.0017000000	0.0066000000	0.0117000000	0.0010000000	0.0038000000	0.0068000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
10	0.0017000000	0.0066000000	0.0117000000	0.0010000000	0.0038000000	0.0068000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
];

%%  Delta-load:
%{
bID	DPd0AB	DPd0BC	DPd0CA	DQd0AB	DQd0BC	DQd0CA	DPd1AB	DPd1BC	DPd1CA	DQd1AB	DQd1BC	DQd1CA	DPd2AB	DPd2BC	DPd2CA	DQd2AB	DQd2BC	DQd2CA	Status
%}
caseObject.dload = [
646	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.2300000000	0.0000000000	0.0000000000	0.1320000000	0.0000000000	1;
671	0.3850000000	0.3850000000	0.3850000000	0.2200000000	0.2200000000	0.2200000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
692	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.1700000000	0.0000000000	0.0000000000	0.1510000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
];

%%  Line branch data:
%{
fbus	tbus	R11	R12	R13	R22	R23	R33	X11	X12	X13	X22	X23	X33	B11	B12	B13	B22	B23	B33	Status
%}
caseObject.lineBranch = [
600	632	0.0037921251	0.0017072771	0.0017291653	0.0036936283	0.0016799169	0.0037363103	0.0111399831	0.0054906469	0.0046359140	0.0114672112	0.0042123779	0.0113249381	0.0000825923	-0.0000261655	-0.0000165124	0.0000781335	-0.0000097239	0.0000739238	1;
632	645	0.0000000000	0.0000000000	0.0000000000	0.0036372663	0.0005652619	0.0036219446	0.0000000000	0.0000000000	0.0000000000	0.0036856939	0.0012561072	0.0037125069	0.0000000000	0.0000000000	0.0000000000	0.0000154364	-0.0000029495	0.0000152925	1;
632	633	0.0020591294	0.0004322913	0.0004268193	0.0020451757	0.0004199792	0.0020345052	0.0032323352	0.0011589785	0.0013726617	0.0032785740	0.0010530945	0.0033138686	0.0000186789	-0.0000035454	-0.0000055407	0.0000169762	-0.0000021593	0.0000177795	1;
645	646	0.0000000000	0.0000000000	0.0000000000	0.0021823598	0.0003391572	0.0021731668	0.0000000000	0.0000000000	0.0000000000	0.0022114163	0.0007536643	0.0022275041	0.0000000000	0.0000000000	0.0000000000	0.0000092618	-0.0000017697	0.0000091755	1;
684	652	0.0058769731	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0022430994	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0004666806	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
671	684	0.0021731668	0.0000000000	0.0003391572	0.0000000000	0.0000000000	0.0021823598	0.0022275041	0.0000000000	0.0007536643	0.0000000000	0.0000000000	0.0022114163	0.0000091755	0.0000000000	-0.0000017697	0.0000000000	0.0000000000	0.0000092618	1;
671	680	0.0018960625	0.0008536385	0.0008645826	0.0018468142	0.0008399584	0.0018681551	0.0055699915	0.0027453235	0.0023179570	0.0057336056	0.0021061890	0.0056624690	0.0000412961	-0.0000130828	-0.0000082562	0.0000390667	-0.0000048620	0.0000369619	1;
684	611	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0021820315	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0022120730	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000088874	1;
692	675	0.0021838920	0.0008733379	0.0007794924	0.0021589942	0.0008733379	0.0021838920	0.0012210862	0.0000897415	-0.0000391251	0.0011056261	0.0000897415	0.0012210862	0.0003175633	0.0000000000	0.0000000000	0.0003175633	0.0000000000	0.0003175633	1;
632	1	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
1	2	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
2	3	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
3	4	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
4	5	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
5	6	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
6	7	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
7	8	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
8	9	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
9	10	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
10	671	0.0003447386	0.0001552070	0.0001571968	0.0003357844	0.0001527197	0.0003396646	0.0010127257	0.0004991497	0.0004214467	0.0010424737	0.0003829434	0.0010295398	0.0000075084	-0.0000023787	-0.0000015011	0.0000071030	-0.0000008840	0.0000067203	1;
671	692	0.0000100000	0.0000000000	0.0000000000	0.0000100000	0.0000000000	0.0000100000	0.0000100000	0.0000000000	0.0000000000	0.0000100000	0.0000000000	0.0000100000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
];

%%  Transformer branch data:
%{
fbus	tbus	Rpu	Xpu	TConn	PrimTap	SecTap	Status
%}
caseObject.trafoBranch = [
633	634	0.0110000000	0.0200000000	1	1.0000000000	1.0000000000	1;
];

end