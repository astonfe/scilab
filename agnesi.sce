// The witch of Agnesi
// This software is totally free and comes to you without any warranty.
// You can use it freely and at your own risk.
clear;
deff("[y]=f1(x)","y=(8*a^3)./(x.^2+4*a^2)");    // Agnesi
deff("[y]=f2(x)","y=b*exp(-(x-c).^2/(2*d^2))"); // Gauss
a=0.5;
b=1;
c=0;
d=1;
x1=-2:0.01:2;
x2=-1:0.01:1;
plot(x1,f1(x1),"k",x1,f2(x1),"g-.");
xpoly([-1,x2,1],[0,f1(x2),0],"lines",1);
t=get("hdl");
t.fill_mode="on";
t.polyline_style=1;
t.foreground=-1;
t.background=color(220,220,220);
labx=["-2","-1.5","x_1=-1","-0.5","0","0.5","x_2=1","1.5","2"];
laby=string(0:0.1:1);
s=gca();
s.box="off";
s.margins(3)=0.2;
s.margins(4)=0.2;
s.data_bounds=[-2,0;2,1.05];
s.tight_limits="on";
s.x_ticks.labels="$\Large\rotatebox{90}\mathrm{"+labx+"}$";
s.y_ticks.labels="$\Large\mathrm{"+laby+"}$";
xstring(-0.9,0.3,"$\Large\mathrm{\int_{-\infty}^{\infty}\frac{1}{x^{2}+1}dx=\textcolor{red}{\textbf\pi}}$");
xstring(-0.9,0.1,"$\Large\mathrm{\int_{-1}^{1}\frac{1}{x^{2}+1}dx=\textcolor{red}{\textbf\frac{\pi}{2}}}$");
title("$\huge\mathrm{y=\frac{8a^3}{x^2+4a^2}\textcolor{black}{\quad a=\sfrac{1}{2}\quad x\in[x_1,x_2]}}$","color","blue");
xlabel("$\huge\mathrm{x}$");
ylabel("$\huge\mathrm{y}$");
legends(["$\large\mathrm{The\ witch\ of\ Agnesi}$";"$\large\mathrm{The\ function\ of\ Gauss}$"],[1,3],with_box=%f,opt=1);
t=gce();
t.children(2).thickness=2;
t.children(4).thickness=2;
xs2eps(0,'agnesi.eps');
