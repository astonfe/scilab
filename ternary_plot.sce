// Ternary plot
// This software is totally free and comes to you without any warranty.
// You can use it freely and at your own risk.
clear;
sheets=readxls(uigetfile("*.xls"));
data=sheets(1).value;
x=data(:,1);
y=data(:,2);
z=data(:,3);
xx=(x+2*z)/(2*(x+y+z));
yy=sqrt(3)*x/(2*(x+y+z));
a=linspace(0.1,1,10);
b=linspace(sqrt(3)/20,sqrt(3)/2,10);
c=b(:,$:-1:1);
d=a(:,$:-1:1);
// Triangle
i=[0,0.5,1,0];
j=[0,cosd(30),0,0];
xfpoly(i,j,color(220,220,220));
xset("line style",8);
// Grids
for i=1:9
    xset("color",5);
    xpoly([(d(i)/2)+0.45,a(i)/2],[b(i),b(i)]); // X grid
    xset("color",3);
    xpoly([a(i)/2,a(i)],[b(i),0]); // Y grid
    xset("color",2);
    xpoly([a(i),(a(i)/2)+0.5],[0,c(i+1)]); // Z grid
end
// Axes labels
xset("font",6,4);
xstring(0.5,0.9060,"$\textbf{\mathrm{SiO_{2}}}$"); // X label
t=get("hdl");
t.font_foreground=5;
t.text_box_mode="centered";
xstring(0.0,-0.040,"$\textbf{\mathrm{CaO}}$"); // Y label
t=get("hdl");
t.font_foreground=3;
t.text_box_mode="centered";
xstring(1.0,-0.040,"$\textbf{\mathrm{Al_{2}O_{3}}}$"); // Z label
t=get("hdl");
t.font_foreground=2;
t.text_box_mode="centered";
// Data points
plot2d(xx(:,1),yy(:,1),-9,rect=[0,0,1,1]);
s=gca();
s.axes_visible="off";
for k=1:length(x)
    xstring(xx(k,1),yy(k,1)+0.04,"$\textbf{"+string(k)+"}$");
    t=get("hdl");
    t.font_foreground=0;
    t.font_size=2;
    t.text_box_mode="centered"
end
xtitle("$\Large{\mathrm{Building\ materials}}\\ \large{\mathrm{with\ a\ bit\ of\ \LaTeX}}$");
xs2eps(0,'ternary_plot.eps');
