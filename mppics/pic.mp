input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage[X2,T2A]{fontenc}
\usepackage{../memo}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(1) 
save u;
u:=1cm;

z.s=(3,2)*u;
y.l=.15*y.s;

z.h=(x.s*.2,y.s/2-y.l);

z.ss=(5,0)*u;




draw (0,0)*u--(x.s,0)--z.s--(0,y.s)--cycle;

draw (0,0)*u+z.ss--(x.s,0)+z.ss--z.s+z.ss--(0,y.s)+z.ss--cycle;

draw (0,0)*u+z.ss+(0,y.s*.25)..
(x.s,0)+z.ss+(-y.s*.5,y.s*.25){right}..
(x.s,0)+z.ss+(-y.s*.25,y.s*.5){up}..
(x.s,0)+z.ss+(-y.s*.5,y.s*.75){left}..
(0,0)+z.ss+(y.s*.4,y.s*.75){left}..
(0,0)+z.ss+(y.s*.4,y.s*.5){right}..
(x.s,0)+z.ss+(-y.s*.5,y.s*.5){right};

draw (0,0)*u+z.ss+(y.s*.125,y.s*.125)..
(x.s,0)+z.ss+(-y.s*.5,y.s*.125){right}..
(x.s,0)+z.ss+(-y.s*.125,y.s*.5){up}..
(x.s,0)+z.ss+(-y.s*.5,y.s*.875){left}..
(0,0)+z.ss+(y.s*.4,y.s*.875){left}..
(0,0)+z.ss+(y.s*.4,y.s*.365){right}..
(x.s,0)+z.ss+(-y.s*.5,y.s*.365){right}..
(x.s,0)+z.ss+(-y.s*.5,y.s*.615){left}..
(0,0)+z.ss+(y.s*.4,y.s*.615){left};

draw (x.h,0)--(x.h,y.h);
draw (2*x.h,0)--(2*x.h,y.h);
draw (3*x.h,0)--(3*x.h,y.h);
draw (4*x.h,0)--(4*x.h,y.h);

draw (x.h,y.s)--(x.h,y.s-y.h);
draw (2*x.h,y.s)--(2*x.h,y.s-y.h);
draw (3*x.h,y.s)--(3*x.h,y.s-y.h);
draw (4*x.h,y.s)--(4*x.h,y.s-y.h);

draw (x.h/2,y.s/2)--(x.s-x.h/2,y.s/2);

draw (x.h/2,y.l)--(x.h/2,y.s-y.l);
draw (x.h/2+x.h,y.l)--(x.h/2+x.h,y.s-y.l);
draw (x.h/2+2*x.h,y.l)--(x.h/2+2*x.h,y.s-y.l);
draw (x.h/2+3*x.h,y.l)--(x.h/2+3*x.h,y.s-y.l);
draw (x.h/2+4*x.h,y.l)--(x.h/2+4*x.h,y.s-y.l);

label.bot(btex моё etex, (x.s/2,-1));
label.bot(btex дедушкино etex, (x.ss+x.s/2,-2));
endfig;

end
