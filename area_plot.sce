// Area plot
// This software is totally free and comes to you without any warranty.
// You can use it freely and at your own risk.
clear;
sheets=readxls(uigetfile("*.xls"));
data=sheets(1).value;
[nr,nc]=size(data);
x=(1:nr)';
y1=data(:,1);
y2=data(:,2);
base=zeros(nr,1);
// First area
plot(x,y1,"k");
xfpoly([x,x($:-1:1)],[base,y1($:-1:1)],color(30,144,255));
// Second area
plot(x,y2,"k");
xfpoly([x,x($:-1:1)],[base,y2($:-1:1)],color(255,160,122));
xgrid([-1,color(192,192,192)],1,8);
xtitle("Recovery","Chemical compound id","Recovery (%)");
legends(["Technique 1";"Technique 2"],[-11,-11],with_box=%t,opt=1);
t=gce();
t.children(2).mark_background=color(255,160,122);
t.children(4).mark_background=color(30,144,255);
xs2eps(0,'area_plot.eps');
