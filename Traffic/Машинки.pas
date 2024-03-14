uses graphabc;
const mycar=19020;    //dop,osnovnoy,red,green,blue
var best,glc,a,i,j,x,y,xp,yp,g,xc, yg, xg, x1, x2, x3, xt, w, h, t, xcr:integer; s:real;
k:array [1..3,1..30] of integer;
d:array [1..20,1..12] of integer;


procedure per;
var x,y:integer;
begin
For x:=1 to 3 do
For y:=1 to 15 do
k[x,y]:=0;

For x:=1 to 3 do
For y:=1 to 15 do
k[x,y]:=k[x,y+15];
yp:=yp-150;
end;


procedure gen;
begin
var x,y:integer;
For x:=1 to 3 do
For y:=16 to 30 do
k[x,y]:=0;


For y:=6 to 10 do
begin
If random(1)=0 then
begin
//If random(2)=0 then
//k[random(3)+1,y*3]:=random(10);
//k[random(3)+1,y*4+1]:=rgb(random(256),random(256),random(256));
k[random(3)+1,y*3]:=random(10000);
end;
end;
end;

procedure MOUSEDOWN(x,y,m:integer);
begin
If m=1 then
If glc>1 then
glc:=glc-1;

If m=2 then
if glc<3 THEN
glc:=glc+1;

end;


procedure opx;
var x,y:integer;
begin
xc:=0;
x1:=10;
x2:=10;
x3:=10;
yg:=(yp-1) div 10+1;
xg:=(xp-1) div 10+1;
For y:=yg+10 downto yg do
begin
If k[1,y]>0 then
x1:=y-yg;
If k[2,y]>0 then
x2:=y-yg;
If k[3,y]>0 then
x3:=y-yg;
end;
If x1>x2 then
begin
If x1>x3 then
xc:=1
else
xc:=3;
end
else
begin
If x2>x3 then
xc:=2
else
xc:=3;
end;
If (x1=x2) and (x2=x3) then
xc:=xg;
xc:=glc;

xcr:=xc;

If (xg=1) or (xg=3) then
begin
If (k[2,yg]>0) or (k[2,yg+1]>0) or (k[2,yg+2]>0) then
xc:=xg;
end;


If xg=2 then
begin
If glc=1 then
If (k[1,yg]>0) or (k[1,yg+1]>0) or (k[1,yg+2]>0) then
xc:=xg;
If glc=3 then
If (k[3,yg]>0) or (k[3,yg+1]>0) or (k[3,yg+2]>0) then
xc:=xg;
end;


{
If xg*xc=3 then
begin
If (k[2,yg]>0) or (k[2,yg+1]>0) or (k[2,yg+2]>0) then
xc:=xg;
end;}



end;


procedure dvx;
begin
xt:=xc*10-5+random(1);
If xp>xt then
xp:=xp-1;
If xp<xt then
xp:=xp+1;
end;


procedure vrez;
begin
If (k[xg,yg+1]>0) and (yp mod 10>1) then
g:=1;
If (k[xg,yg]>0) then
g:=1;

If (k[xg,yg]>0) then
g:=1;
If (k[xg,yg]>0) then
g:=1;
end;


procedure car(p, xs, ys, o:integer);
var p1,p2,p3,p4, i:integer;
begin
s:=w/1800;
p4:=p mod 10;
p:=p div 10;

p3:=p mod 10;
p:=p div 10;

p2:=p mod 10;
p:=p div 10;

p1:=p mod 10;
p:=p div 10;

If p>0 then
p1:=p1+p;
Setbrushcolor(rgb(50+p2*20,50+p3*20,50+p4*20));
rectangle(xs+round(d[p1+1,1]*s),ys+round(d[p1+1,9]*s),xs+round(d[p1+1,8]*s),ys+round(d[p1+1,12]*s));
Setbrushcolor(rgb(50+p2*15,50+p3*15,50+p4*15));
If p1=6 then
begin
If (p2+p3+p4) mod 2=1 then
Setbrushcolor(rgb(50,50,50))
else
Setbrushcolor(rgb(200,200,200));
end;
rectangle(xs+round(d[p1+1,4]*s),ys+round(d[p1+1,9]*s),xs+round(d[p1+1,5]*s),ys+round(d[p1+1,12]*s));
If p1=10 then
rectangle(xs+round(d[p1+1,5]*s),ys+round(d[p1+1,10]/3*s),xs+round(d[p1+1,7]*2*s),ys+round(d[p1+1,11]/3*s));

Setbrushcolor(rgb(100,150,200));
rectangle(xs+round(d[p1+1,3]*s),ys+round(d[p1+1,9]*s),xs+round(d[p1+1,4]*s),ys+round(d[p1+1,12]*s));
Setbrushcolor(rgb(135,200,255));
rectangle(xs+round(d[p1+1,5]*s),ys+round(d[p1+1,9]*s),xs+round(d[p1+1,6]*s),ys+round(d[p1+1,12]*s));


Setbrushcolor(clred);
rectangle(xs+round(d[p1+1,1]*s),ys+round(d[p1+1,9]*s),xs+round(d[p1+1,2]*s),ys+round(d[p1+1,10]*s));
rectangle(xs+round(d[p1+1,1]*s),ys+round(d[p1+1,11]*s),xs+round(d[p1+1,2]*s),ys+round(d[p1+1,12]*s));

Setbrushcolor(clyellow);
rectangle(xs+round(d[p1+1,7]*s),ys+round(d[p1+1,9]*s),xs+round(d[p1+1,8]*s),ys+round(d[p1+1,10]*s));
rectangle(xs+round(d[p1+1,7]*s),ys+round(d[p1+1,11]*s),xs+round(d[p1+1,8]*s),ys+round(d[p1+1,12]*s));


If (o>1) and (t div 6 mod 2=0) then
begin
If xcr>xg then
begin
setpencolor(clyellow);
For i:=1 to 10 do
line(((xs+round(d[p1+1,7]*s))+(xs+round(d[p1+1,8]*s))) div 2,((ys+round(d[p1+1,11]*s))+(ys+round(d[p1+1,12]*s))) div 2,((xs+round(d[p1+1,7]*s))+(xs+round(d[p1+1,8]*s))) div 2-w div 40+random(w div 20),((ys+round(d[p1+1,11]*s))+(ys+round(d[p1+1,12]*s))-w div 40+random(w div 20)) div 2);
setpencolor(clred);
For i:=1 to 10 do
line(((xs+round(d[p1+1,1]*s))+(xs+round(d[p1+1,2]*s))) div 2,((ys+round(d[p1+1,11]*s))+(ys+round(d[p1+1,12]*s))) div 2,((xs+round(d[p1+1,1]*s))+(xs+round(d[p1+1,2]*s))) div 2-w div 40+random(w div 20),((ys+round(d[p1+1,11]*s))+(ys+round(d[p1+1,12]*s))-w div 40+random(w div 20)) div 2);
end;

If xcr<xg then
begin
setpencolor(clyellow);
For i:=1 to 10 do
line(((xs+round(d[p1+1,7]*s))+(xs+round(d[p1+1,8]*s))) div 2,((ys+round(d[p1+1,9]*s))+(ys+round(d[p1+1,10]*s))) div 2,((xs+round(d[p1+1,7]*s))+(xs+round(d[p1+1,8]*s))) div 2-w div 40+random(w div 20),((ys+round(d[p1+1,9]*s))+(ys+round(d[p1+1,10]*s))-w div 40+random(w div 20)) div 2);
setpencolor(clred);
For i:=1 to 10 do
line(((xs+round(d[p1+1,1]*s))+(xs+round(d[p1+1,2]*s))) div 2,((ys+round(d[p1+1,9]*s))+(ys+round(d[p1+1,10]*s))) div 2,((xs+round(d[p1+1,1]*s))+(xs+round(d[p1+1,2]*s))) div 2-w div 40+random(w div 20),((ys+round(d[p1+1,9]*s))+(ys+round(d[p1+1,10]*s))-w div 40+random(w div 20)) div 2);
end;
end;
setpencolor(clblack);
end;


procedure graph;
var i, x, y:integer;
begin
setpenwidth(w div 500+1);
setfontsize(w div 50);

For i:=1 to 0 do
j:=round(sin(cos(arctan(10))));
clearwindow;
setbrushcolor(clblack);
setpencolor(clred);
setpencolor(clblack);
//rectangle(xg*10+1,yg*10,xg*10+10,yg*10+9);
setbrushcolor(clgreen);
rectangle(-50,-50,w+50,h+50);

line(0,h div 2-w div 12+w div 18*3,w+1,h div 2-w div 12+w div 18*3);
setbrushcolor(clgray);
rectangle(-50,h div 2-w div 12+w div 18*3,w+1+50,h div 2-w div 12+w div 18*0);
setbrushcolor(clblack);
line(0,h div 2-w div 12+w div 18*0,w+1,h div 2-w div 12+w div 18*0);
//setpenstyle(psdash);
setpencolor(clwhite);
line(0,h div 2-w div 12+w div 18*1,w+1,h div 2-w div 12+w div 18*1);
line(0,h div 2-w div 12+w div 18*2,w+1,h div 2-w div 12+w div 18*2);
//setpenstyle(pssolid);
setpencolor(clblack);
For x:=1 to 3 do
For y:=1 to 30 do
If k[x,y]>0 then
begin
setbrushcolor(rgb((k[x,y]) mod 255,(k[x,y]) div 255 mod 255,(k[x,y]) div 255 div 255));
//rectangle(x*50,y*50,x*50+50,y*50+50);
//rectangle(y*w div 9-round(yp*w/90)+w div 9*2,   h div 2-w div 12+w div 18*x   ,y*w div 9+w div 9-round(yp*w/90)+w div 9*2,   h div 2-w div 12+w div 18*(x-1));
car(k[x,y],y*w div 9-round(yp*w/90)+w div 9*2+w div 18,((h div 2-w div 12+w div 18*x)+(h div 2-w div 12+w div 18*(x-1))) div 2,1);//car//car//car//car//car//car//car//car//car//car
end;
setbrushcolor(clblack);
//setpencolor(clred);
//rectangle(w div 3,h div 2-w div 12+w div 36+round(xp*w/180),w div 3+w div 9,h div 2-w div 12-w div 36+round(xp*w/180));
car(mycar,w div 3+w div 18,h div 2-w div 12+round(xp*w/180),2);
setpencolor(clblack);

setbrushcolor(clgreen);
setfontsize(15);
if t div 5>best then
best:=t div 5;
textout(1,1,inttostr(t div 5));
textout(1,windowheight-25,inttostr(best));

{rectangle(x*50,y*50,x*50+50,y*50+50);
rectangle(xp*5+35,yp*5+50,xp*5+65,yp*5+100);
textout(100,10,inttostr(x1)+' '+inttostr(x2)+' '+inttostr(x3)+' ');
textout(100,30,inttostr(xc));
textout(100,50,inttostr(xp)+' '+inttostr(yp));
textout(100,70,inttostr(xg)+' '+inttostr(yg));
line(50,1,50,1000);
line(100,1,100,1000);
line(150,1,150,1000);
line(200,1,200,1000);    }

{setbrushcolor(clgray);
For i:=0 to 8 do
rectangle(i*w-round(t*w/90)+w div 9*2,   h div 2-w div 12+w div 18*4   ,i*w+w div 9-round(t*w/90)+w div 9*2,   h div 2-w div 12+w div 18*(4-1));}


line(0,h div 2-w div 12+w div 18*(-1),w+1,h div 2-w div 12+w div 18*(-1));
line(0,h div 2-w div 12+w div 18*4,w+1,h div 2-w div 12+w div 18*4);

For y:=-3 to 10 do
begin
setbrushcolor(clgray);
//rectangle(x*50,y*50,x*50+50,y*50+50);
circle(y*w*5 div 9+w div 9-round(yp*w/90*2)+w div 9*2+5,   h div 2+w div 12+w div 18, w div 78);
circle(y*w*5 div 9-round(yp*w/90*2)+w div 9*2,   h div 2-w div 12-w div 18   ,w div 78);
end;



redraw;
end;


procedure vzriv(p, xs, ys, o:integer);
var p1,p2,p3,p4, i:integer;
begin
s:=w/1800;
p4:=p mod 10;
p:=p div 10;

p3:=p mod 10;
p:=p div 10;

p2:=p mod 10;
p:=p div 10;

p1:=p mod 10;
p:=p div 10;

For i:=1 to 100 do
begin
setbrushcolor(rgb(200+random(56),50+random(206),random(64)));
circle((xs+round(d[p1+1,1]*s)+xs+round(d[p1+1,8]*s)) div 2+w div 15-random(w div 15*2), (ys+round(d[p1+1,9]*s)+ys+round(d[p1+1,12]*s)) div 2+h div 15-random(h div 15*2), random(i*3 div 2));
redraw;
end;
end; 

begin


x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-80;   y:=y+1; d[x,y]:=-70;   y:=y+1; d[x,y]:=-50;   y:=y+1; d[x,y]:=-40;   y:=y+1; d[x,y]:=40;   y:=y+1; d[x,y]:=60;   y:=y+1; d[x,y]:=75;   y:=y+1; d[x,y]:=85;
   y:=y+1; d[x,y]:=-37;   y:=y+1; d[x,y]:=-28;   y:=y+1; d[x,y]:=28;   y:=y+1; d[x,y]:=37;

x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-95;   y:=y+1; d[x,y]:=-90;   y:=y+1; d[x,y]:=-90;   y:=y+1; d[x,y]:=-90;   y:=y+1; d[x,y]:=61;   y:=y+1; d[x,y]:=75;   y:=y+1; d[x,y]:=85;   y:=y+1; d[x,y]:=95;
   y:=y+1; d[x,y]:=-45;   y:=y+1; d[x,y]:=-33;   y:=y+1; d[x,y]:=33;   y:=y+1; d[x,y]:=45;

x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-80;   y:=y+1; d[x,y]:=-65;   y:=y+1; d[x,y]:=-80;   y:=y+1; d[x,y]:=-80;   y:=y+1; d[x,y]:=15;   y:=y+1; d[x,y]:=40;   y:=y+1; d[x,y]:=75;   y:=y+1; d[x,y]:=85;
   y:=y+1; d[x,y]:=-45;   y:=y+1; d[x,y]:=-35;   y:=y+1; d[x,y]:=35;   y:=y+1; d[x,y]:=45;

x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-80;   y:=y+1; d[x,y]:=-70;   y:=y+1; d[x,y]:=-55;   y:=y+1; d[x,y]:=-45;   y:=y+1; d[x,y]:=32;   y:=y+1; d[x,y]:=63;   y:=y+1; d[x,y]:=75;   y:=y+1; d[x,y]:=85;
   y:=y+1; d[x,y]:=-37;   y:=y+1; d[x,y]:=-28;   y:=y+1; d[x,y]:=28;   y:=y+1; d[x,y]:=37;

x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-70;   y:=y+1; d[x,y]:=-60;   y:=y+1; d[x,y]:=-40;   y:=y+1; d[x,y]:=-30;   y:=y+1; d[x,y]:=40;   y:=y+1; d[x,y]:=55;   y:=y+1; d[x,y]:=70;   y:=y+1; d[x,y]:=80;
   y:=y+1; d[x,y]:=-33;   y:=y+1; d[x,y]:=-23;   y:=y+1; d[x,y]:=23;   y:=y+1; d[x,y]:=33;


   
x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-90;   y:=y+1; d[x,y]:=-75;   y:=y+1; d[x,y]:=-50;   y:=y+1; d[x,y]:=-40;   y:=y+1; d[x,y]:=40;   y:=y+1; d[x,y]:=60;   y:=y+1; d[x,y]:=80;   y:=y+1; d[x,y]:=95;
   y:=y+1; d[x,y]:=-37;   y:=y+1; d[x,y]:=-28;   y:=y+1; d[x,y]:=28;   y:=y+1; d[x,y]:=37;

x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-90;   y:=y+1; d[x,y]:=-76;   y:=y+1; d[x,y]:=-60;   y:=y+1; d[x,y]:=-43;   y:=y+1; d[x,y]:=40;   y:=y+1; d[x,y]:=60;   y:=y+1; d[x,y]:=75;   y:=y+1; d[x,y]:=85;
   y:=y+1; d[x,y]:=-37;   y:=y+1; d[x,y]:=-28;   y:=y+1; d[x,y]:=28;   y:=y+1; d[x,y]:=37;

x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-65;   y:=y+1; d[x,y]:=-56;   y:=y+1; d[x,y]:=-56;   y:=y+1; d[x,y]:=-45;   y:=y+1; d[x,y]:=30;   y:=y+1; d[x,y]:=50;   y:=y+1; d[x,y]:=60;   y:=y+1; d[x,y]:=70;
   y:=y+1; d[x,y]:=-37;   y:=y+1; d[x,y]:=-28;   y:=y+1; d[x,y]:=28;   y:=y+1; d[x,y]:=37;

x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-80;   y:=y+1; d[x,y]:=-70;   y:=y+1; d[x,y]:=-60;   y:=y+1; d[x,y]:=-30;   y:=y+1; d[x,y]:=35;   y:=y+1; d[x,y]:=65;   y:=y+1; d[x,y]:=75;   y:=y+1; d[x,y]:=85;
   y:=y+1; d[x,y]:=-37;   y:=y+1; d[x,y]:=-23;   y:=y+1; d[x,y]:=23;   y:=y+1; d[x,y]:=37;

x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-80;   y:=y+1; d[x,y]:=-70;   y:=y+1; d[x,y]:=-50;   y:=y+1; d[x,y]:=-40;   y:=y+1; d[x,y]:=40;   y:=y+1; d[x,y]:=60;   y:=y+1; d[x,y]:=75;   y:=y+1; d[x,y]:=85;
   y:=y+1; d[x,y]:=-37;   y:=y+1; d[x,y]:=-28;   y:=y+1; d[x,y]:=28;   y:=y+1; d[x,y]:=37;


x:=x+1; y:=0;
   y:=y+1; d[x,y]:=-95;   y:=y+1; d[x,y]:=-70;   y:=y+1; d[x,y]:=-50;   y:=y+1; d[x,y]:=-50;   y:=y+1; d[x,y]:=40;   y:=y+1; d[x,y]:=40;   y:=y+1; d[x,y]:=70;   y:=y+1; d[x,y]:=95;
   y:=y+1; d[x,y]:=-46;   y:=y+1; d[x,y]:=-40;   y:=y+1; d[x,y]:=40;   y:=y+1; d[x,y]:=46;
   onmousedown:=MOUSEDOWN;
   glc:=2;
  maximizewindow;
   lockdrawing;
xp:=15;
yp:=0;
   
   While 1>0 do
begin

w:=windowwidth;
h:=windowheight;
For x:=1 to 30 do
For y:=1 to 3 do
k[y,x]:=0;
t:=0;
x:=0;
y:=0;
g:=0;

while g=0 do
begin
t:=t+1;
yp:=yp+1;
w:=windowwidth;
h:=windowheight;

If yp=201 then
begin
per;
gen;
end;

opx;
dvx;
vrez;

graph;

end;
vzriv(mycar,w div 3+w div 18,h div 2-w div 12+round(xp*w/180),2);;


end;
end.