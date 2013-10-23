data = load("data.dat");
dataLength = size(data)(1);
#1
mise = rand(dataLength,1)*1000;
results = data(:,4);
good = find(results > 1);
bad = find(results <= 1);
mise(bad) = -mise(bad);
EG = mean(mise);
#2
zero = find(results == 0);
miss = find(results == 1);
pass = find(results == 2);
VRR0 = data(:,1)(zero);
VL0 = data(:,2)(zero);
CL0 = data(:,3)(zero)+1;
JOINED0 = contingence(VRR0, VL0, CL0);
VRR1 = data(:,1)(miss);
VL1 = data(:,2)(miss);
CL1 = data(:,3)(miss)+1;
JOINED1 = contingence(VRR1, VL1, CL1);
VRR2 = data(:,1)(pass);
VL2 = data(:,2)(pass);
CL2 = data(:,3)(pass)+1;
JOINED2 = contingence(VRR2, VL2, CL2);
