// Radar plot
// This software is totally free and comes to you without any warranty.
// You can use it freely and at your own risk.
clear;
sheets=readxls(uigetfile("*.xls"));
data=sheets(1).value;
[nr,nc]=size(data);
scale=5;
data=scale-data;
data=[data,data(:,1)];
mx=max(data)*1.1;
labx=["1","2","3","4","5","6","7","8","9"];
labs=["","4","3","2","1"];
cols=[5,3,2];
sh=-4; // Left shift
// Axes
axr=linspace(0,max(data),scale);
[M,axr]=meshgrid(ones(1,nc),axr);
axr=[axr,axr(:,1)];
[axt,M]=meshgrid(2*%pi/nc*[0:nc]+%pi/nc,ones(1,size(axr,1)));
axx=axr.*sin(axt);
axy=axr.*cos(axt);
plot(axx+sh,axy,"c-",axx'+sh,axy',"c-");
s=gca();
s.data_bounds=[-mx,-mx;mx,mx];
s.isoview="on";
s.children.children.foreground=color(192,192,192);
for i=1:scale
    xstring(0+sh,(axr(i)*cos(%pi/nc)),string(labs(i)),0,0);
    t=get("hdl");
    t.box="on";
    t.fill_mode="on";
    t.foreground=8;
    t.font_foreground=color(192,192,192);
    t.text_box_mode="centered"
end
// Axes labels
lbt=2*%pi/nc*[0:nc-1]+%pi/nc;
lbx=mx.*sin(lbt);
lby=mx.*cos(lbt);
for i=1:nc
    xstring(lbx(i)+sh,lby(i),labx(i),0,0);
    t=get("hdl");
    t.font_foreground=0;
    t.text_box_mode="centered"
end
// Data points
[th,M]=meshgrid(2*%pi/nc*[0:nc]+%pi/nc,ones(1,nr));
X=data.*sin(th);
Y=data.*cos(th);
plot(X'+sh,Y',"k-","linewidth",2);
for i=1:nr
    s=gca();
    s.children(1).children(i).foreground=cols(i);
end
s.box="off";
s.axes_visible="off";
xstring(2,-3,["COMFORT";"1. Daylight";"2. Thermal environment";"3. Indoor air quality";"ENERGY";"4. Energy demand";"5. Energy supply";"6. Primary energy performance";"ENVIRONMENT";"7. Environmental load";"8. Freshwater consumption";"9. Sustainable construction"]);
s.children(1).clip_state="off";
s.children(4).clip_state="off";
s.children(5).clip_state="off";
s.children(17).children.clip_state="off";
xtitle("Radar plot","","");
legends(["Building 1";"Building 2";"Building 3"],[2,3,5],with_box=%f,opt=4);
t=gce();
t.children(2).thickness=2;
t.children(4).thickness=2;
t.children(6).thickness=2;
xs2eps(0,'radar_plot.eps');
