function caseObject = distCase_4Dyn1

%%  Comments:
%   IEEE distribution test feeder, 4 nodes, step-down distribution
%   transformer, Dyn1 connection.
%   Please see distributionCaseFormat.m for details on the case file format

%%  Single phase base power
caseObject.baseMVA = 2.0000000000;
caseObject.P_sc=00;  %mw 
%% max power for every phase  this is a big add on in the program
caseObject.P_max=00; %mw
%%  Bus data:
%{
bID	type	VmA	VmB	VmC	VaA	VaB	VaC	baseKV
%}
caseObject.bus = [
1	3	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	7.1995578568;
2	1	1.0000000000	1.0000000000	1.0000000000	0.0000000000	-120.0000000000	120.0000000000	7.1995578568;
3	1	1.0000000000	1.0000000000	1.0000000000	-30.0000000000	-150.0000000000	90.0000000000	2.4017771198;
4	1	1.0000000000	1.0000000000	1.0000000000	-30.0000000000	-150.0000000000	90.0000000000	2.4017771198;
];

%%  Generator data:
%{
bID	PgA	PgB	PgC	QgA	QgB	QgC	Status
%}
caseObject.gen = [
1	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
];

%%  Wye-load:
%{
bID	YPd0A	YPd0B	YPd0C	YQd0A	YQd0B	YQd0C	YPd1A	YPd1B	YPd1C	YQd1A	YQd1B	YQd1C	YPd2A	YPd2B	YPd2C	YQd2A	YQd2B	YQd2C	Status
%}
caseObject.yload = [
4	1.2750000000	1.8000000000	2.3750000000	0.7902000000	0.8718000000	0.7806000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
];

%%  Delta-load:
%{
bID	DPd0AB	DPd0BC	DPd0CA	DQd0AB	DQd0BC	DQd0CA	DPd1AB	DPd1BC	DPd1CA	DQd1AB	DQd1BC	DQd1CA	DPd2AB	DPd2BC	DPd2CA	DQd2AB	DQd2BC	DQd2CA	Status
%}
caseObject.dload = [
];

%%  Line branch data:
%{
fbus	tbus	R11	R12	R13	R22	R23	R33	X11	X12	X13	X22	X23	X33	B11	B12	B13	B22	B23	B33	Status
%}
caseObject.lineBranch = [
1	2	0.0058652101	0.0013928595	0.0013928595	0.0058652101	0.0013928595	0.0058652101	0.0206561213	0.0124451194	0.0106196404	0.0206561213	0.0114030325	0.0206561213	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
3	4	0.0751201923	0.0255927403	0.0251987533	0.0765976436	0.0259374790	0.0757604212	0.1769658376	0.0823597038	0.0631856687	0.1720738321	0.0695387095	0.1748481574	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1;
];

%%  Transformer branch data:
%{
fbus	tbus	Rpu	Xpu	TConn	PrimTap	SecTap	Status
%}
caseObject.trafoBranch = [
2	3	0.0100000000	0.0600000000	7	1.0000000000	1.0000000000	1;
];

end