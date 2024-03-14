uses graphabc;
var wdt,dst,lp,scn,wsw,wsh,x,y,i,j,t,ox,oy,vn,kc:integer; xs,ys,zs,f,a,b,xsc,ysc,zsc,e,mns,mnb,mt,mr,mg,lt,lr,ln,lg,ct,kf:real;
k:array [1..35,1..3] of integer;
l:array [1..25,1..2] of integer;

u:array [1..6,1..20] of real;
un :array [1..6] of real;
uv:array [1..6] of real;
uk:array [1..7] of real;
kx:array [1..9] of real;
ky:array [1..9] of real;
pu:array [1..6] of integer;
pt:array [1..6] of integer;
dop:array [1..20] of real;
//pu [0..40] pt [1..20]




procedure
printpoint(i:integer);
var x1,y1,z1,x2,y2,z2,x3,y3,z3,xp,yp:real;
begin
x1:=k[i,1]-xsc;
y1:=k[i,2]-ysc;
z1:=k[i,3]-zsc;

x2:=z1*cos(a)-x1*sin(a);
y2:=y1;
z2:=x1*cos(a)+z1*sin(a);

x3:=x2;
y3:=y2*cos(b)+z2*sin(b);
z3:=z2*cos(b)-y2*sin(b);

xp:=f*(x3)/(-z3);
yp:=f*(y3)/(-z3);
//If z2<f then
setbrushcolor(clblack);
circle(windowwidth div 2-round(xp),windowheight div 2+round(yp),round(f-z2) div 99+1);
//textout(windowwidth div 2-round(xp)+5,windowheight div 2+round(yp)+5,inttostr(i)+' ('+inttostr(k[i,1])+';'+inttostr(k[i,2])+';'+inttostr(k[i,3])+')');
end;

procedure
printline(n,o:integer);
var x1,y1,z1,x2,y2,z2,x3,y3,z3,xp1,yp1,xp2,yp2:real;
begin
x1:=k[n,1]-xsc;
y1:=k[n,2]-ysc;
z1:=k[n,3]-zsc;

x2:=z1*cos(a)-x1*sin(a);
y2:=y1;
z2:=x1*cos(a)+z1*sin(a);

x3:=x2;
y3:=y2*cos(b)+z2*sin(b);
z3:=z2*cos(b)-y2*sin(b);

xp1:=f*(x3)/(-z3);
yp1:=f*(y3)/(-z3);

x1:=k[o,1]-xsc;
y1:=k[o,2]-ysc;
z1:=k[o,3]-zsc;

x2:=z1*cos(a)-x1*sin(a);
y2:=y1;
z2:=x1*cos(a)+z1*sin(a);

x3:=x2;
y3:=y2*cos(b)+z2*sin(b);
z3:=z2*cos(b)-y2*sin(b);

xp2:=f*(x3)/(-z3);
yp2:=f*(y3)/(-z3);

If ((abs(xp1)<windowwidth div 2) and (abs(yp1)<windowheight div 2)) or ((abs(xp2)<windowwidth div 2) and (abs(yp2)<windowheight div 2)) then
line(windowwidth div 2-round(xp1),windowheight div 2+round(yp1),windowwidth div 2-round(xp2),windowheight div 2+round(yp2));
end;



begin
wdt:=45;
a:=-pi/2;;
dst:=900;
xs:=0;
ys:=200;
zs:=1000;
f:=1200;
b:=0;
xsc:=xs;
ysc:=ys;
zsc:=zs;

//SetConsoleIO;


k[1,3]:=80;
k[2,3]:=55;
k[3,3]:=-80;
k[4,3]:=-55;
k[5,3]:=0;
k[6,3]:=0;
k[7,3]:=60;
k[8,3]:=-60;
k[9,3]:=0;


lockdrawing;
setpenwidth(10);
setfontsize(100);
kf:=1;
lt:=200*kf;
lr:=180*kf;
ln:=200*kf;
lg:=100*kf; //D

mns:=6;
mnb:=10;
mt:=42;
mr:=8;
mg:=10;

oy:=250;
ox:=300;
WHile 1>0 do
begin
oy:=250;
ox:=300;
t:=0;
e:=0;
scn:=0;
For i:=1 to 6 do
begin
un[i]:=0;
uv[i]:=0;
pu[i]:=0;
pt[i]:=0;
end;
For i:=1 to 7 do
begin
uk[i]:=0;
end;
For i:=1 to 9 do
begin
kx[i]:=0;
ky[i]:=0;
end;
For x:=1 to 6 do
For y:=2 to 20 do
u[x,y]:=0;


un[1]:=0;
un[2]:=random(90)+45;
un[3]:=0;
un[4]:=random(100)+80;
un[5]:=-45+random(90);
un[6]:=-45+random(90);

For i:=1 to 6 do
begin
pu[i]:=random(35);
pt[i]:=random(20);
end;{


un[1]:=0;
un[2]:=75;
un[3]:=0;
un[4]:=135;
un[5]:=90;
un[6]:=110;

pu[1]:=21;
pu[2]:=30;
pu[3]:=20;
pu[4]:=27;
pu[5]:=32;
pu[6]:=1;

pt[1]:=0;
pt[2]:=14;
pt[3]:=0;
pt[4]:=19;
pt[5]:=6;
pt[6]:=12;
      }

{
lp:=loadpicture('C:\Users\Господин\Desktop\Pascal pictures\PMH\'+'8 2 202 324'+'.jpg');
drawpicture(lp,-1,-1);
redraw;
For x:=0 to 5 do
begin
pc:=2;
While getred(getpixel(pc,x))<50 do
begin
pc:=pc+1;
pu[x+1]:=pc;
end;
end;
For x:=6 to 11 do
begin
pc:=0;
While getred(getpixel(pc,x))<50 do
begin
pc:=pc+1;
pt[x-5]:=pc;
end;
end;
For x:=12 to 17 do
begin
pc:=0;
While getred(getpixel(pc,x))<50 do
begin
pc:=pc+1;
un[x-11]:=pc;
end;
end;        }




For i:=1 to 6 do
un[i]:=un[i]/180*pi;

For y:=1 to 20 do
u[5,y]:=(sin(y/20*2*pi)-sin(((y-1)/20)*2*pi))*pu[5]/20;
For y:=1 to 20 do
u[6,y]:=(sin(y/20*2*pi)-sin(((y-1)/20)*2*pi))*pu[6]/20;

For y:=1 to 20 do
u[1,y]:=-((cos(y/20*2*pi)-cos(((y-1)/20)*2*pi))*pu[1])/30;
For y:=1 to 20 do
u[3,y]:=-((cos(y/20*2*pi)-cos(((y-1)/20)*2*pi))*pu[3])/30;

For y:=1 to 20 do
u[2,y]:=((cos(y/20*2*pi)-cos(((y-1)/20)*2*pi))*pu[2])/30;
For y:=1 to 20 do
u[4,y]:=((cos(y/20*2*pi)-cos(((y-1)/20)*2*pi))*pu[4])/30;

For x:=1 to 6 do
For y:=1 to 20 do
begin
If (x=5) or (x=6) then
e:=e+abs(mr*u[x,y]);
If (x=1) or (x=2) then
e:=e+abs(mns*u[x,y]);
If (x=3) or (x=4) then
e:=e+abs((mns+mnb)*u[x,y]);
end;


For x:=1 to 6 do
u[x,1]:=un[x]+u[x,1];

For x:=1 to 6 do
For y:=2 to 20 do
u[x,y]:=u[x,y-1]+u[x,y];
 {
For y:=1 to 20 do
u[6,y]:=u[5,(y+11) mod 20+1]-un[5]+un[6];
For y:=1 to 20 do
u[3,y]:=u[1,(y+11) mod 20+1]-un[1]+un[3];
For y:=1 to 20 do
u[4,y]:=u[2,(y+11) mod 20+1]-un[2]+un[4];
                                           }
For x:=1 to 6 do
begin
For y:=1 to 20 do
dop[(y-1+pt[x]) mod 20+1]:=u[x,y];
For y:=1 to 20 do
u[x,y]:=dop[y];
end;


For i:=1 to 6 do
uv[i]:=un[i];


kx[1]:=300;
ky[1]:=0.1;
ky[3]:=5;



While ((ky[3]<0) or (ky[3]>1)) or (ky[6]<0) do
begin
uk[1]:=uk[1]+0.01;
uk[2]:=uk[1]+uv[1];
uk[5]:=uv[2]+uk[2]-pi/2;
uk[4]:=uk[2]+uv[1]-uv[4];
uk[3]:=uk[4]-uv[3];
uk[6]:=uk[5]-uv[5]+pi/2;
uk[7]:=uk[5]-uv[6]+pi/2;
//kx[1]:=;
//ky[1]:=;
kx[2]:=kx[1]+cos(uk[1])*ln/2;
ky[2]:=ky[1]+sin(uk[1])*ln/2;
kx[5]:=kx[2]+cos(uk[2])*ln/2;
ky[5]:=ky[2]+sin(uk[2])*ln/2;
kx[4]:=kx[5]-cos(uk[4])*ln/2;
ky[4]:=ky[5]-sin(uk[4])*ln/2;
kx[3]:=kx[4]-cos(uk[3])*ln/2;
ky[3]:=ky[4]-sin(uk[3])*ln/2;
kx[6]:=kx[5]+cos(uk[5])*lt;
ky[6]:=ky[5]+sin(uk[5])*lt;
kx[7]:=kx[6]-cos(uk[6])*lr;
ky[7]:=ky[6]-sin(uk[6])*lr;
kx[8]:=kx[6]-cos(uk[7])*lr;
ky[8]:=ky[6]-sin(uk[7])*lr;
kx[9]:=kx[6]+cos(uk[5])*lg/2;
ky[9]:=ky[6]+sin(uk[5])*lg/2;
clearwindow;{
line(round(kx[1]+ox),windowheight-round(ky[1]+oy),round(kx[2]+ox),windowheight-round(ky[2]+oy));
line(round(kx[5]+ox),windowheight-round(ky[5]+oy),round(kx[2]+ox),windowheight-round(ky[2]+oy));
line(round(kx[5]+ox),windowheight-round(ky[5]+oy),round(kx[4]+ox),windowheight-round(ky[4]+oy));
line(round(kx[3]+ox),windowheight-round(ky[3]+oy),round(kx[4]+ox),windowheight-round(ky[4]+oy));
line(round(kx[5]+ox),windowheight-round(ky[5]+oy),round(kx[6]+ox),windowheight-round(ky[6]+oy));
line(round(kx[6]+ox),windowheight-round(ky[6]+oy),round(kx[7]+ox),windowheight-round(ky[7]+oy));
line(round(kx[6]+ox),windowheight-round(ky[6]+oy),round(kx[8]+ox),windowheight-round(ky[8]+oy));
circle(round(kx[9]+ox),windowheight-round(ky[9]+oy),round(lg/2));}
end;


 

While kc=0 do
begin
setfontsize(100);
t:=t+1;
For i:=1 to 6 do
uv[i]:=u[i,t mod 20+1];


ct:=((kx[1]+kx[2])/2*mns+(kx[2]+kx[5])/2*mnb+(kx[3]+kx[4])/2*mns+(kx[4]+kx[5])/2*mnb+(kx[5]+kx[6])/2*mt+(kx[6]+kx[7])/2*mr+(kx[6]+kx[8])/2*mr+kx[9]*mg)/(2*mns+2*mnb+mt+2*mr+mg);
If sqrt(sqr(kx[1]-ct)+sqr(ky[1]))<sqrt(sqr(kx[3]-ct)+sqr(ky[3])) then
vn:=1
else vn:=3;
//writeln(sqrt(sqr(kx[1]-ct)+sqr(ky[1])),' ',sqrt(sqr(kx[3]-ct)+sqr(ky[3])))
If vn=1 then
begin
If ky[1]>1 then
If (abs(1/(ct-kx[1]))+0.5)*500<ky[1] then
begin
ky[1]:=ky[1]-(abs(1/(ct-kx[1]))+0.5)*500
end
else
ky[1]:=0;


uk[1]:=uk[1]+(kx[1]-ct)/1000;
uk[2]:=uk[1]+uv[1];
uk[4]:=uk[2]+uv[2]-uv[4];
uk[3]:=uk[4]-uv[3];
kx[2]:=kx[1]+cos(uk[1])*ln/2;
ky[2]:=ky[1]+sin(uk[1])*ln/2;
kx[5]:=kx[2]+cos(uk[2])*ln/2;
ky[5]:=ky[2]+sin(uk[2])*ln/2;
kx[4]:=kx[5]-cos(uk[4])*ln/2;
ky[4]:=ky[5]-sin(uk[4])*ln/2;
kx[3]:=kx[4]-cos(uk[3])*ln/2;
ky[3]:=ky[4]-sin(uk[3])*ln/2;
While (ky[3]<0) {or (ky[4]<0)} do
begin
If kx[1]>kx[3] then
uk[1]:=uk[1]-sqrt(sqr(kx[1]-kx[3])+sqr(ky[1]-ky[3]))/10000
else
uk[1]:=uk[1]+sqrt(sqr(kx[1]-kx[3])+sqr(ky[1]-ky[3]))/10000;
uk[2]:=uk[1]+uv[1];
uk[4]:=uk[2]+uv[2]-uv[4];
uk[3]:=uk[4]-uv[3];
kx[2]:=kx[1]+cos(uk[1])*ln/2;
ky[2]:=ky[1]+sin(uk[1])*ln/2;
kx[5]:=kx[2]+cos(uk[2])*ln/2;
ky[5]:=ky[2]+sin(uk[2])*ln/2;
kx[4]:=kx[5]-cos(uk[4])*ln/2;
ky[4]:=ky[5]-sin(uk[4])*ln/2;
kx[3]:=kx[4]-cos(uk[3])*ln/2;
ky[3]:=ky[4]-sin(uk[3])*ln/2;
end;




uk[2]:=uk[1]+uv[1];
uk[5]:=uv[2]+uk[2]-pi/2;
uk[4]:=uk[2]+uv[2]-uv[4];
uk[3]:=uk[4]-uv[3];
uk[6]:=uk[5]-uv[5]+pi/2;
uk[7]:=uk[5]-uv[6]+pi/2;
//kx[1]:=;
//ky[1]:=;
kx[2]:=kx[1]+cos(uk[1])*ln/2;
ky[2]:=ky[1]+sin(uk[1])*ln/2;
kx[5]:=kx[2]+cos(uk[2])*ln/2;
ky[5]:=ky[2]+sin(uk[2])*ln/2;
kx[4]:=kx[5]-cos(uk[4])*ln/2;
ky[4]:=ky[5]-sin(uk[4])*ln/2;
kx[3]:=kx[4]-cos(uk[3])*ln/2;
ky[3]:=ky[4]-sin(uk[3])*ln/2;

kx[6]:=kx[5]+cos(uk[5])*lt;
ky[6]:=ky[5]+sin(uk[5])*lt;
kx[7]:=kx[6]-cos(uk[6])*lr;
ky[7]:=ky[6]-sin(uk[6])*lr;
kx[8]:=kx[6]-cos(uk[7])*lr;
ky[8]:=ky[6]-sin(uk[7])*lr;
kx[9]:=kx[6]+cos(uk[5])*lg/2;
ky[9]:=ky[6]+sin(uk[5])*lg/2;




end;

If vn=3 then
begin
If ky[3]>1 then
If (abs(1/(ct-kx[3]))+0.5)*500<ky[3] then
begin
ky[3]:=ky[3]-(abs(1/(ct-kx[3]))+0.5)*500
end
else
ky[3]:=0;


uk[3]:=uk[3]+(kx[3]-ct)/1000;
uk[4]:=uk[3]+uv[3];
uk[5]:=uk[4]+uv[4]-pi/2;
uk[2]:=uk[4]+uv[4]-uv[2];
uk[1]:=uk[2]-uv[1];
kx[4]:=kx[3]+cos(uk[3])*ln/2;
ky[4]:=ky[3]+sin(uk[3])*ln/2;
kx[5]:=kx[4]+cos(uk[4])*ln/2;
ky[5]:=ky[4]+sin(uk[4])*ln/2;
kx[2]:=kx[5]-cos(uk[2])*ln/2;
ky[2]:=ky[5]-sin(uk[2])*ln/2;
kx[1]:=kx[2]-cos(uk[1])*ln/2;
ky[1]:=ky[2]-sin(uk[1])*ln/2;
While (ky[1]<0){ or (ky[2]<0) }do
begin
If kx[3]>kx[1] then
uk[3]:=uk[3]-sqrt(sqr(kx[1]-kx[3])+sqr(ky[1]-ky[3]))/10000
else
uk[3]:=uk[3]+sqrt(sqr(kx[1]-kx[3])+sqr(ky[1]-ky[3]))/10000;
uk[4]:=uk[3]+uv[3];
uk[5]:=uk[4]+uv[4]-pi/2;
uk[2]:=uk[4]+uv[4]-uv[2];
uk[1]:=uk[2]-uv[1];
kx[4]:=kx[3]+cos(uk[3])*ln/2;
ky[4]:=ky[3]+sin(uk[3])*ln/2;
kx[5]:=kx[4]+cos(uk[4])*ln/2;
ky[5]:=ky[4]+sin(uk[4])*ln/2;
kx[2]:=kx[5]-cos(uk[2])*ln/2;
ky[2]:=ky[5]-sin(uk[2])*ln/2;
kx[1]:=kx[2]-cos(uk[1])*ln/2;
ky[1]:=ky[2]-sin(uk[1])*ln/2;
end;








uk[4]:=uk[3]+uv[3];
uk[5]:=uk[4]+uv[4]-pi/2;
uk[2]:=uk[4]+uv[4]-uv[2];
uk[1]:=uk[2]-uv[1];
uk[6]:=uk[5]-uv[5]+pi/2;
uk[7]:=uk[5]-uv[6]+pi/2;
//kx[3]:=;
//ky[3]:=;
kx[4]:=kx[3]+cos(uk[3])*ln/2;
ky[4]:=ky[3]+sin(uk[3])*ln/2;
kx[5]:=kx[4]+cos(uk[4])*ln/2;
ky[5]:=ky[4]+sin(uk[4])*ln/2;
kx[2]:=kx[5]-cos(uk[2])*ln/2;
ky[2]:=ky[5]-sin(uk[2])*ln/2;
kx[1]:=kx[2]-cos(uk[1])*ln/2;
ky[1]:=ky[2]-sin(uk[1])*ln/2;

kx[6]:=kx[5]+cos(uk[5])*lt;
ky[6]:=ky[5]+sin(uk[5])*lt;
kx[7]:=kx[6]-cos(uk[6])*lr;
ky[7]:=ky[6]-sin(uk[6])*lr;
kx[8]:=kx[6]-cos(uk[7])*lr;
ky[8]:=ky[6]-sin(uk[7])*lr;
kx[9]:=kx[6]+cos(uk[5])*lg/2;
ky[9]:=ky[6]+sin(uk[5])*lg/2;
end;



clearwindow;

setpencolor(clblack);
//line(0,windowheight-oy,windowwidth,windowheight-oy);
textout(0,0,inttostr(t div 15));
//textout(round(ct+ox),windowheight-round(0+oy)+15,inttostr(round(ct/200*kf)));
setbrushcolor(clblack);
a+=pi/100;

//b:=(sin(a+pi/8))*pi/6;
ys:=(tan(b)*dst)+200;

xsc:=round(ct)div 500*500-dst*cos(a);
ysc:=ys;
zsc:=xs-dst*sin(a);


For i:=1 to 9 do
begin
k[i,1]:=round(kx[i]);
k[i,2]:=round(ky[i]);
end;
//writeln(kx[i]);
k[10,1]:=round(ct);
k[10,2]:=round(0);
k[11,1]:=round(ct);
k[11,2]:=round(0);
k[12,1]:=round(ct);
k[12,2]:=round(0);
k[13,1]:=round(ct);
k[13,2]:=round(0);

k[14,1]:=round(ct);
k[14,2]:=round(0);

k[15,1]:=round(ct)div 500*500+50;
k[16,1]:=round(ct)div 500*500-50;
k[17,1]:=round(ct)div 500*500;
k[17,3]:=50;
k[18,1]:=round(ct)div 500*500;
k[18,3]:=-50;
printline(15,16);
printline(17,18);


For i:=1 to 18 do
printpoint(i);

setpencolor(clred);
printpoint(14);
setpencolor(clblack);

printline(1,2);
printline(5,2);
printline(5,4);
printline(3,4);
printline(5,6);
printline(6,7);
printline(6,8);


{
line(round(kx[1]+ox),windowheight-round(ky[1]+oy),round(kx[2]+ox),windowheight-round(ky[2]+oy));
line(round(kx[5]+ox),windowheight-round(ky[5]+oy),round(kx[2]+ox),windowheight-round(ky[2]+oy));
line(round(kx[5]+ox),windowheight-round(ky[5]+oy),round(kx[4]+ox),windowheight-round(ky[4]+oy));
line(round(kx[3]+ox),windowheight-round(ky[3]+oy),round(kx[4]+ox),windowheight-round(ky[4]+oy));
line(round(kx[5]+ox),windowheight-round(ky[5]+oy),round(kx[6]+ox),windowheight-round(ky[6]+oy));
line(round(kx[6]+ox),windowheight-round(ky[6]+oy),round(kx[7]+ox),windowheight-round(ky[7]+oy));
line(round(kx[6]+ox),windowheight-round(ky[6]+oy),round(kx[8]+ox),windowheight-round(ky[8]+oy));
circle(round(kx[9]+ox),windowheight-round(ky[9]+oy),round(lg/2));}
setpencolor(clred);
//circle(round(ct+ox),windowheight-round(0+oy),5);
setbrushcolor(clwhite);
If ct>windowwidth-ox then
ox:=ox-windowwidth;


If (ky[9]<0) or (ky[5]<0) then
begin
textout(0,150,'Падение!');
kc:=1;
end;

If (t>200) and (ct<-150) then
begin
textout(0,150,'Реверс!');
kc:=1;
end;

If (t>300) and (ct>-150) and (ct<200) then
begin
textout(0,150,'Статика!');
kc:=1;
end;

If (t>100000) then
begin
textout(0,150,'Долго!');
kc:=1;
end;

If (t>300) and (ct>50*200) and (scn=0) then
begin
scn:=1;
wsh:=windowheight;
wsw:=windowwidth;
setwindowsize(1000,1000);
clearwindow;
For x:=1 to 6 do
For y:=1 to pu[x] do
setpixel(y,x,clblack);
For x:=1 to 6 do
For y:=1 to pt[x] do
setpixel(y,x+6,clblack);
For x:=1 to 6 do
For y:=1 to round(un[x]*180/pi) do
setpixel(y,x+6*2,clblack);
For y:=1 to round(lg) do
setpixel(y,1+6*3,clblack);
For y:=1 to round(lr) do
setpixel(y,2+6*3,clblack);
For y:=1 to round(lt) do
setpixel(y,3+6*3,clblack);
For y:=1 to round(ln) do
setpixel(y,4+6*3,clblack);
For y:=1 to round(mg) do
setpixel(y,5+6*3,clblack);
For y:=1 to round(mr) do
setpixel(y,6+6*3,clblack);
For y:=1 to round(mt) do
setpixel(y,7+6*3,clblack);
For y:=1 to round(mnb) do
setpixel(y,8+6*3,clblack);
For y:=1 to round(mns) do
setpixel(y,9+6*3,clblack);
For y:=1 to round(kf*100) do
setpixel(y,10+6*3,clblack);
setfontsize(25);
textout(1,50,'Углы  Задержка');
setfontsize(38);
For x:=1 to 6 do
begin
textout(1,x*50+30,inttostr(pu[x]));
textout(fontsize*3,x*50+30,inttostr(pt[x]));
end;
setfontsize(25);
textout(1,6*50+93,'Начальные углы');
setfontsize(38);
For x:=1 to 6 do
textout(1,x*50+7*50+30,inttostr(round(un[x]*180/pi)));
setfontsize(25);
textout(1,14*50+41,'Коэфф.');
setfontsize(38);
textout(1,15*50+46,inttostr(round(kf*100))+' %');
setpencolor(clblack);
line(250,0,250,windowheight);
setfontsize(100);
textout(260,0,'V='+inttostr(round(ct/t*15/2))+' см/с');
textout(260,150,'E='+inttostr(round(e))+' у.е.');
textout(260,300,'K='+inttostr(round(ct/t*15/2/e*1000)));
line(250,450,windowwidth,450);
setfontsize(38);
textout(260,570,'Голова');
textout(260,670,'Рука');
textout(260,770,'Торс');
textout(260,870,'Нога');
  textout(500,470,'Масса (%)');
  textout(740,470,'Длина (см)');
textout(500,570,inttostr(round(lg/kf/2)));
textout(500,670,inttostr(round(lr/kf/2)));
textout(500,770,inttostr(round(lt/kf/2)));
textout(500,870,inttostr(round((ln/kf/2+1)) div 2)+'+'+inttostr(round(ln/kf/2) div 2));


textout(740,570,inttostr(round(mg)));
textout(740,670,inttostr(round(mr)));
textout(740,770,inttostr(round(mt)));
textout(740,870,inttostr(round(mnb+1))+'+'+inttostr(round(mns)));
redraw;
If lp=0 then
savewindow('C:\Users\Господин\Desktop\Pascal pictures\PMH\'+inttostr(round(ct/t*15/2/e*1000))+' '+inttostr(round(ct/t*15/2))+' '+inttostr(round(e))+' '+inttostr(random(1000))+'.jpg');
setwindowsize(wsw,wsh);

kc:=1;
end;

redraw;

end;
kc:=0;



end;
end.
