// Time plot
// This software is totally free and comes to you without any warranty.
// You can use it freely and at your own risk.
clear;
sheets=readxls(uigetfile("*.xls"));
data=sheets(1).value;
y=data(:,1);
m=data(:,2);
d=data(:,3);
p=data(:,4);
t=datenum(y,m,d);
xx=linspace(min(t),max(t),1000)';
// not_a_knot, clamped, natural, periodic, monotone, fast, fast_periodic
df=splin(t,p,"fast");
[yyf,yy1f,yy2f]=interp(xx,t,p,df);
plot(xx,yyf,"b-",t,p,"bo");
s=gca();
s.children.children.mark_background=12;
locs=s.x_ticks.locations;
time=datevec(locs);
labs=string(time(:,1))+"-"+string(time(:,2))+"-"+string(time(:,3));
s.x_ticks=tlist(["ticks","locations","labels"],locs,labs);
xgrid(color(192,192,192),1,8);
xtitle("Diesel fuel","","Price (€/L)");
xs2eps(0,'time_plot.eps');
