// Impulse plot
// This software is totally free and comes to you without any warranty.
// You can use it freely and at your own risk.
clear;
sheets=readxls(uigetfile("*.xls"));
data=sheets(1).value;
xspe=data(:,1); // Full spectrum
yspe=data(:,2);
xlab=data(:,3); // Fragments labels
ylab=data(:,4);
absc=zeros(length(xspe),1);
x=cat(2,xspe,xspe);
y=cat(2,yspe,absc);
// Full spectrum
for i=1:length(xspe)
    plot2d(x(i,:),y(i,:),2,rect=[0,0,max(xspe)+10,105]);
end
// Fragments labels
for i=1:length(xlab)
    xstring(xlab(i),ylab(i)+2,string(xlab(i)));
    t=get("hdl");
    t.text_box_mode="centered";
end
xtitle("Acetylsalicylic acid","Mass-to-charge ratio","Relative intensity (%)");
g="\includegraphics[scale=0.05]{/home/astonfe/aspirin_structure.png}";
xstring(5,65,"$"+g+"$")
xs2eps(0,'impulse_plot.eps');
