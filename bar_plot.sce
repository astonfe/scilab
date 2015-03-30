// Bar plot 3D
// This software is totally free and comes to you without any warranty.
// You can use it freely and at your own risk.
clear;
sheets=readxls(uigetfile("*.xls"));
data=sheets(1).value;
[nr,nc]=size(data);
w=0.8;
xset("colormap",jetcolormap(128));
for i=1:nr
    for j=1:nc
        x=[zeros(4,2)+j+(1-w),ones(4,2)*w+j,zeros(4,1)+j+(1-w)];
        y=ones(4,5)*w+i;
        y(2:3,2:3)=0+i+(1-w);
        z=[zeros(2,5);ones(2,5)*data(i,j)];
        plot3d2(x,y,z);
        t=gce();
        col=(128-1)/(max(data)-min(data))*(data(i,j)-min(data))+1;
        t.color_mode=col;
    end
end
s=gca();
s.box="back_half";
s.hidden_axis_color=-1;
s.rotation_angles=[5,72];
s.x_ticks=tlist(["ticks","locations","labels"],[1.5;2.5;3.5;4.5;5.5;6.5;7.5;8.5;9.5;10.5;11.5;12.5],["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]');
s.y_ticks=tlist(["ticks","locations","labels"],[1.5;2.5;3.5;4.5;5.5],["1","2","3","4","5"]');
// s.x_label.font_angle=...;
// s.y_label.font_angle=...;
s.z_label.font_angle=270;
xtitle("Particulate matter (PM-10)","Month","Station","Concentration (µg/m³)");
xs2eps(0,'bar_plot.eps');
