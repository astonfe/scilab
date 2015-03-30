// Ribbon plot
// This software is totally free and comes to you without any warranty.
// You can use it freely and at your own risk.
clear;
sheets=readxls(uigetfile("*.xls"));
data=sheets(1).value;
[nr,nc]=size(data);
xset("colormap",rainbowcolormap(128));
for i=1:nc
    surf(i:i+1,1:nr,cat(2,data(:,i),data(:,i)));
end
s=gca();
s.box="back_half";
s.hidden_axis_color=-1;
s.children.color_flag=3;
s.x_ticks=tlist(["ticks","locations","labels"],[1.5;2.5;3.5;4.5;5.5;6.5;7.5;8.5],["1","2","3","4","5","6","7","8"]');
s.y_ticks=tlist(["ticks","locations","labels"],[2;7;12;17;22],["350","400","450","500","550"]');
// s.x_label.font_angle=...;
// s.y_label.font_angle=...;
s.z_label.font_angle=270;
xtitle("Molecular spectra","Spectrum","λ (nm)","Absorbance");
xs2eps(0,'ribbon_plot.eps');
