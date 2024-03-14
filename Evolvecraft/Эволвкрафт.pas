{айдишечки
1 - грязь (гор А)
2 - вода
3 - песок
4 - камень
5 - гор Б
6 - гор Ц
7 - гор Д
8 - травка
9 - ствол
10 - листва
11 - росток
(o[x,y,z]/255*0.85+0.15)

}

uses graphabc;

const
nazv='Sergey Soloviov''s Evolvecraft © 2016';

var vmode,abc,xcc,ycc,visotas,dists,pku,pip,ppo,rd,ppt,razm,rz,zvo,zvr,ww,wh,cd,sif,idp,jdp,isr,jsr,cvd,sb,sg,sr,sk1,sk2,sk3,bdc,t,xc,yc,visota,c,i1,i2,i3,i4,i5,i6,i7,i8,j1,j2,j3,j4,j5,j6,j7,j8,dist,pk,wl,gl,d,x,y,z,i,m,l,j:integer; pso,vpz,rany,ranx,osv,xvc,zvc,sp,tn,tno,lg:real; opis:string;{clr:color;} pc:picture;
k:array [1..129,1..129,1..65] of byte;   //типы блоков
o:array [1..129,1..129,1..65] of byte;   //освещённость
pv:array [1..129,1..129,1..65] of byte;  //полезные вещества
v:array [1..129,1..129,1..65] of byte;   //ВРОДЕ БЫ влажность
os:array [1..129,1..129,1..65] of shortint;   //ВРОДЕ БЫ влажность
pn:array [1..5,1..129,1..129] of integer;
pno:array [1..129,1..129] of integer;
a: array [1..5] of integer;
str: array of Point;
bcv: array [1..3,1..30] of real;
psp: array [1..100] of real;


procedure mousedown(xm,ym,mb:integer);
begin
ww:=windowwidth;
wh:=windowheight;
If (xm>ww-55)and (xm<ww-5) and (ym>5) and (ym<55) then
pku:=(pku+1) mod 2;

If pku=1 then
begin

If (xm>ww-55)and (xm<ww-5) and (ym>5+70) and (ym<55+70) then
begin
  If (xm+55-ww>ym-75) and (xm+55-ww>75+50-ym) then
begin
If xcc+50<12500 then
xcc:=xcc+50
else
xcc:=12500;
end;
  If (xm+55-ww<ym-75) and (xm+55-ww<75+50-ym) then
begin
If xcc-50>500 then
xcc:=xcc-50
else
xcc:=500;
end;
  If (xm+55-ww<ym-75) and (xm+55-ww>75+50-ym) then
begin
If visotas+50<6100 then
visotas:=visotas+50
else
visotas:=6100;
end;
  If (xm+55-ww>ym-75) and (xm+55-ww<75+50-ym) then
begin
If visotas-50>500 then
visotas:=visotas-50
else
visotas:=500;
end;
end;


If (xm>ww-55)and (xm<ww-5) and (ym>5+140) and (ym<55+140) then
begin
  If (xm+55-ww>ym-145) and (xm+55-ww>145+50-ym) then
begin
If xcc+500<12500 then
xcc:=xcc+500
else
xcc:=12500;
end;
  If (xm+55-ww<ym-145) and (xm+55-ww<145+50-ym) then
begin
If xcc-500>500 then
xcc:=xcc-500
else
xcc:=500;
end;
  If (xm+55-ww<ym-145) and (xm+55-ww>145+50-ym) then
begin
If visotas+500<6100 then
visotas:=visotas+500
else
visotas:=6100;
end;
  If (xm+55-ww>ym-145) and (xm+55-ww<145+50-ym) then
begin
If visotas-500>500 then
visotas:=visotas-500
else
visotas:=500;
end;
end;

If (xm>ww-55)and (xm<ww-5) and (ym>5+210) and (ym<30+210) then
begin
ycc:=ycc-250;
bdc:=131-ycc div 100*2;
end;
If (xm>ww-55)and (xm<ww-5) and (ym>30+210) and (ym<55+210) then
begin
ycc:=ycc+250;
If bdc>3 then
bdc:=131-ycc div 100*2;
end;

If (xm>ww-55)and (xm<ww-5) and (ym>5+280) and (ym<30+280) then
dists:=dists+150;
If (xm>ww-55)and (xm<ww-5) and (ym>30+280) and (ym<55+280) then
begin
If dists-150>10 then
dists:=dists-150
else
dists:=10;
end;

If (xm>ww-65-70)and (xm<ww-15-70) and (ym>5) and (ym<55) then
vmode:=1;

If (xm>ww-65-140)and (xm<ww-15-140) and (ym>5) and (ym<55) then
vmode:=2;

end;
end;


procedure obnov;
begin
visota:=visotas;
dist:=dists;
xc:=xcc;
yc:=ycc;
if vmode=1 then
begin
ppo:=1; 
ppt:=1;
end;
if vmode=2 then
begin
ppo:=0; 
ppt:=0;
end;
end;



function getredint(cvint:integer):integer;
begin
getredint:=cvint mod 256;
end;

function getgreenint(cvint:integer):integer;
begin
getgreenint:=cvint div 256 mod 256;
end;

function getblueint(cvint:integer):integer;
begin
getblueint:=cvint div 65536;
end;

function rgbint(cvr,cvg,cvb:integer):integer;
begin
rgbint:=cvr+cvg*256+cvb*65536;
end;

function clr(cvint:integer):color;
begin
clr:=rgb(cvint mod 65536,cvint div 256 mod 256,cvint div 65536);
end;

procedure oprcv(stcv:integer);
begin
If (sp>=0) and (sp<=pi) then
begin
osv:=o[x,y,z]/255*0.75+0.25;
If k[x,y,z]=2 then
osv:=osv*(500+random(40))/500;


If stcv=1 then
c:=round((round(bcv[1,k[x,y,z]]*sr*0.3*osv)+round(bcv[2,k[x,y,z]]*sg*0.3*osv)*256+round(bcv[3,k[x,y,z]]*sb*0.3*osv)*65536));
If stcv=2 then
c:=round((round(bcv[1,k[x,y,z]]*sr*(cos(sp/2)*tn+tno)*osv)+round(bcv[2,k[x,y,z]]*sg*(cos(sp/2)*tn+tno)*osv)*256+round(bcv[3,k[x,y,z]]*sb*(cos(sp/2)*tn+tno)*osv)*65536));
If stcv=3 then
c:=round((round(bcv[1,k[x,y,z]]*sr*(sin(sp)*tn+tno)*osv)+round(bcv[2,k[x,y,z]]*sg*(sin(sp)*tn+tno)*osv)*256+round(bcv[3,k[x,y,z]]*sb*(sin(sp)*tn+tno)*osv)*65536));
If stcv=4 then
c:=round((round(bcv[1,k[x,y,z]]*sr*(cos((pi-sp)/2)*tn+tno)*osv)+round(bcv[2,k[x,y,z]]*sg*(cos((pi-sp)/2)*tn+tno)*osv)*256+round(bcv[3,k[x,y,z]]*sb*(cos((pi-sp)/2)*tn+tno)*osv)*65536));
If stcv=5 then
c:=round((round(bcv[1,k[x,y,z]]*sr*0.1*osv)+round(bcv[2,k[x,y,z]]*sg*0.1*osv)*256+round(bcv[3,k[x,y,z]]*sb*0.1*osv)*65536));
end
else
begin
osv:=0.7;
If stcv=1 then
c:=round((round(bcv[1,k[x,y,z]]*sr*0.3*osv)+round(bcv[2,k[x,y,z]]*sg*0.3*osv)*256+round(bcv[3,k[x,y,z]]*sb*0.3*osv)*65536));
If stcv=2 then
c:=round((round(bcv[1,k[x,y,z]]*sr*tno*osv)+round(bcv[2,k[x,y,z]]*sg*tno*osv)*256+round(bcv[3,k[x,y,z]]*sb*tno*osv)*65536));
If stcv=3 then
c:=round((round(bcv[1,k[x,y,z]]*sr*tno*osv)+round(bcv[2,k[x,y,z]]*sg*tno*osv)*256+round(bcv[3,k[x,y,z]]*sb*tno*osv)*65536));
If stcv=4 then
c:=round((round(bcv[1,k[x,y,z]]*sr*tno*osv)+round(bcv[2,k[x,y,z]]*sg*tno*osv)*256+round(bcv[3,k[x,y,z]]*sb*tno*osv)*65536));
If stcv=5 then
c:=round((round(bcv[1,k[x,y,z]]*sr*0.1*osv)+round(bcv[2,k[x,y,z]]*sg*0.1*osv)*256+round(bcv[3,k[x,y,z]]*sb*0.1*osv)*65536));
end;


//c:=c+random(4);
setpencolor(clr(c));
setbrushcolor(pencolor);

If k[x,y,z]=2 then
begin           //0.18686 важнейшая константа: двойная прозрачность даёт одинарную
If stcv=3 then
begin           //15     128
setpencolor(argb(15,round(getredint(c)+0.2*sr*(sin(sp)*tn+tno)) div 2,round(getgreenint(c)+0.5*sg*(sin(sp)*tn+tno)) div 2,round(getblueint(c)+0.95*(sg)*(sin(sp)*tn+tno)) div 2));
setbrushcolor(argb(128,round(getredint(c)+0.2*sr*(sin(sp)*tn+tno)) div 2,round(getgreenint(c)+0.5*sg*(sin(sp)*tn+tno)) div 2,round(getblueint(c)+0.95*(sg)*(sin(sp)*tn+tno)) div 2))
end
else
begin
setbrushcolor(rgb(round(getredint(c)+0.2*sr*(sin(sp)*tn+tno)) div 2,round(getgreenint(c)+0.5*sg*(sin(sp)*tn+tno)) div 2,round(getblueint(c)+0.95*(sg)*(sin(sp)*tn+tno)) div 2));
setpencolor(brushcolor);
end;
end;
end;


function rand(rn,spr:integer):integer;
begin
If rn<>0 then
rand:=abs((x*z+y*x+z*y+spr+rn*rn)*spr mod rn)
else
rand:=0;
end;


procedure trava;
var spc:integer;
begin
If (k[x,y+1,z]=0) or (y=129-bdc) or (k[x,y+1,z]=8) then
begin

i3:=round((dist*(x*100-xc)/(yc*2-y*100+2)))+windowwidth div 2;
j3:=round((dist*(((66-z)*100)+100-visota)/(yc*2-y*100+2)))+windowheight div 2;

i4:=round((dist*((x*100+100)-xc)/(yc*2-y*100+2)))+windowwidth div 2;

i8:=round((dist*((x*100+100)-xc)/(yc*2-(y*100+100)+2)))+windowwidth div 2;
j8:=round((dist*(((66-z)*100)+100-visota)/(yc*2-(y*100+100)+2)))+windowheight div 2;

isr:=(i3+i8) div 2;
jsr:=(j3+j8) div 2;
idp:=abs(i3-i4) div 2;
jdp:=abs(j3-j8) div 2;

oprcv(3);

setpenwidth(idp div 5+1);
For spc:=1 to 10 do
begin
line(isr-idp+rand(2*idp,spc),jsr-jdp+rand(2*jdp,spc),isr-idp+rand(2*idp,spc)-(idp div 2)+rand(idp+1,spc)-1+random(3),jsr-jdp+rand(2*jdp,spc)-5-rand(2*idp,spc)-1+random(3));
end;
setpenwidth(1);
end;
end;

procedure oprk;
begin
i1:=round((dist*(x*100-xc)/(yc*2-y*100+2)))+windowwidth div 2;
j1:=round((dist*(((66-z)*100)-visota)/(yc*2-y*100+2)))+windowheight div 2;

i2:=round((dist*((x*100+100)-xc)/(yc*2-y*100+2)))+windowwidth div 2;
j2:=round((dist*(((66-z)*100)-visota)/(yc*2-y*100+2)))+windowheight div 2;

i3:=round((dist*(x*100-xc)/(yc*2-y*100+2)))+windowwidth div 2;
j3:=round((dist*(((66-z)*100)+100-visota)/(yc*2-y*100+2)))+windowheight div 2;

i4:=round((dist*((x*100+100)-xc)/(yc*2-y*100+2)))+windowwidth div 2;
j4:=round((dist*(((66-z)*100)+100-visota)/(yc*2-y*100+2)))+windowheight div 2;

i5:=round((dist*(x*100-xc)/(yc*2-(y*100+100)+2)))+windowwidth div 2;
j5:=round((dist*(((66-z)*100)-visota)/(yc*2-(y*100+100)+2)))+windowheight div 2;

i6:=round((dist*((x*100+100)-xc)/(yc*2-(y*100+100)+2)))+windowwidth div 2;
j6:=round((dist*(((66-z)*100)-visota)/(yc*2-(y*100+100)+2)))+windowheight div 2;

i7:=round((dist*(x*100-xc)/(yc*2-(y*100+100)+2)))+windowwidth div 2;
j7:=round((dist*(((66-z)*100)+100-visota)/(yc*2-(y*100+100)+2)))+windowheight div 2;

i8:=round((dist*((x*100+100)-xc)/(yc*2-(y*100+100)+2)))+windowwidth div 2;
j8:=round((dist*(((66-z)*100)+100-visota)/(yc*2-(y*100+100)+2)))+windowheight div 2;
end;



procedure st1;
begin
str[0].x:=i5;
str[0].y:=j5;

str[1].x:=i6;
str[1].y:=j6;

str[2].x:=i8;
str[2].y:=j8;

str[3].x:=i7;
str[3].y:=j7;

oprcv(1);
polygon(str);
end;

procedure st2;
begin
str[0].x:=i2;
str[0].y:=j2;

str[1].x:=i6;
str[1].y:=j6;

str[2].x:=i8;
str[2].y:=j8;

str[3].x:=i4;
str[3].y:=j4;

oprcv(2);

polygon(str);
end;

procedure st3;
begin
str[0].x:=i1;
str[0].y:=j1;

str[1].x:=i2;
str[1].y:=j2;

str[2].x:=i6;
str[2].y:=j6;

str[3].x:=i5;
str[3].y:=j5;

oprcv(3);

polygon(str);
end;

procedure st4;
begin
str[0].x:=i1;
str[0].y:=j1;

str[1].x:=i5;
str[1].y:=j5;

str[2].x:=i7;
str[2].y:=j7;

str[3].x:=i3;
str[3].y:=j3;


oprcv(4);

polygon(str);
end;

procedure st5;
begin
str[0].x:=i3;
str[0].y:=j3;

str[1].x:=i4;
str[1].y:=j4;

str[2].x:=i8;
str[2].y:=j8;

str[3].x:=i7;
str[3].y:=j7;

oprcv(5);

polygon(str);
end;


procedure blv1;
begin

If (k[x+1,y,z]=0) or (k[x,y,z+1]=0) or (k[x,y+1,z]=0) or (k[x+1,y,z]=8) or (k[x,y,z+1]=8) or (k[x,y+1,z]=8) or (y=129-bdc) then
oprk;

If k[x,y,z]=8 then
trava
else
begin
If (k[x+1,y,z]=0) or (k[x+1,y,z]=8) then
st2;

If (k[x,y,z+1]=0) or (k[x,y,z+1]=8) then
st3;

If (k[x,y+1,z]=0) or (y=129-bdc) or (k[x,y+1,z]=8) then
st1;
end;
end;

procedure blv2;
begin

If (k[x+1,y,z]=0) or (k[x,y,z-1]=0) or (k[x,y+1,z]=0) or (k[x+1,y,z]=8) or (k[x,y,z-1]=8) or (k[x,y+1,z]=8) or (y=129-bdc) then
oprk;

If k[x,y,z]=8 then
trava
else
begin
If (k[x+1,y,z]=0) or (k[x+1,y,z]=8) then
st2;

If (k[x,y,z-1]=0) or (k[x,y,z-1]=8)  then
st5;

If (k[x,y+1,z]=0) or (y=129-bdc) or (k[x,y+1,z]=8) then
st1;
end;
end;

procedure blv3;
begin

If (k[x-1,y,z]=0) or (k[x,y,z+1]=0) or (k[x,y+1,z]=0) or (k[x-1,y,z]=8) or (k[x,y,z+1]=8) or (k[x,y+1,z]=8) or (y=129-bdc) then
oprk;

If k[x,y,z]=8 then
trava
else
begin
If (k[x-1,y,z]=0) or (k[x-1,y,z]=8) then
st4;

If (k[x,y,z+1]=0) or (k[x,y,z+1]=8) then
st3;

If (k[x,y+1,z]=0) or (y=129-bdc) or (k[x,y+1,z]=8) then
st1;
end;
end;

procedure blv4;
begin

If (k[x-1,y,z]=0) or (k[x,y,z-1]=0) or (k[x,y+1,z]=0) or (k[x-1,y,z]=8) or (k[x,y,z-1]=8) or (k[x,y+1,z]=8) or (y=129-bdc) then
oprk;

If k[x,y,z]=8 then
trava
else
begin
If (k[x-1,y,z]=0) or (k[x-1,y,z]=8) then
st4;

If (k[x,y,z-1]=0) or (k[x,y,z-1]=8) then
st5;

If (k[x,y+1,z]=0) or (y=129-bdc) or (k[x,y+1,z]=8) then
st1;
end;
end;



//ОТРАЖЕНИЯ
//ОТРАЖЕНИЯ
//ОТРАЖЕНИЯ



procedure st1t;
begin
str[0].x:=i5;
str[0].y:=j5;

str[1].x:=i6;
str[1].y:=j6;

str[2].x:=i8;
str[2].y:=j8;

str[3].x:=i7;
str[3].y:=j7;

oprcv(1);
polygon(str);
end;

procedure st2t;
begin
str[0].x:=i2;
str[0].y:=j2;

str[1].x:=i6;
str[1].y:=j6;

str[2].x:=i8;
str[2].y:=j8;

str[3].x:=i4;
str[3].y:=j4;

oprcv(2);

polygon(str);
end;

procedure st3t;
begin
str[0].x:=i1;
str[0].y:=j1;

str[1].x:=i2;
str[1].y:=j2;

str[2].x:=i6;
str[2].y:=j6;

str[3].x:=i5;
str[3].y:=j5;

oprcv(5);

polygon(str);
end;

procedure st4t;
begin
str[0].x:=i1;
str[0].y:=j1;

str[1].x:=i5;
str[1].y:=j5;

str[2].x:=i7;
str[2].y:=j7;

str[3].x:=i3;
str[3].y:=j3;


oprcv(4);

polygon(str);
end;
     
     
function zz(vz:integer):integer;
begin
zz:=wl*2+1-z;
end;



procedure travat;
var spc:integer;
begin
If (k[x,y+1,z]=0) or (y=129-bdc) or (k[x,y+1,z]=8) then
begin

i3:=round((dist*(x*100-xc)/(yc*2-y*100+2)))+windowwidth div 2;
j3:=round((dist*(((66-zz(z)-1)*100)+100-visota)/(yc*2-y*100+2)))+windowheight div 2;

i4:=round((dist*((x*100+100)-xc)/(yc*2-y*100+2)))+windowwidth div 2;

i8:=round((dist*((x*100+100)-xc)/(yc*2-(y*100+100)+2)))+windowwidth div 2;
j8:=round((dist*(((66-zz(z)-1)*100)+100-visota)/(yc*2-(y*100+100)+2)))+windowheight div 2;

isr:=(i3+i8) div 2;
jsr:=(j3+j8) div 2;
idp:=abs(i3-i4) div 2;
jdp:=abs(j3-j8) div 2;

oprcv(3);

setpenwidth(idp div 5+1);
For spc:=1 to 10 do
begin
//setpencolor(pencolor+2+2*256+2*256*256);
line(isr-idp+rand(2*idp,spc),jsr-jdp+rand(2*jdp,spc),isr-idp+rand(2*idp,spc)-(idp div 2)+rand(idp+1,spc)-1+random(3),jsr-jdp+rand(2*jdp,spc)+5+rand(2*idp,spc)+1-random(3));
end;
setpenwidth(1);
end;
end;


procedure toprk;
begin
i1:=round((dist*(x*100-xc)/(yc*2-y*100+2)))+windowwidth div 2;
j1:=round((dist*(((66-zz(z))*100)-visota)/(yc*2-y*100+2)))+windowheight div 2;

i2:=round((dist*((x*100+100)-xc)/(yc*2-y*100+2)))+windowwidth div 2;
j2:=round((dist*(((66-zz(z))*100)-visota)/(yc*2-y*100+2)))+windowheight div 2;

i3:=round((dist*(x*100-xc)/(yc*2-y*100+2)))+windowwidth div 2;
j3:=round((dist*(((66-zz(z))*100)+100-visota)/(yc*2-y*100+2)))+windowheight div 2;

i4:=round((dist*((x*100+100)-xc)/(yc*2-y*100+2)))+windowwidth div 2;
j4:=round((dist*(((66-zz(z))*100)+100-visota)/(yc*2-y*100+2)))+windowheight div 2;

i5:=round((dist*(x*100-xc)/(yc*2-(y*100+100)+2)))+windowwidth div 2;
j5:=round((dist*(((66-zz(z))*100)-visota)/(yc*2-(y*100+100)+2)))+windowheight div 2;

i6:=round((dist*((x*100+100)-xc)/(yc*2-(y*100+100)+2)))+windowwidth div 2;
j6:=round((dist*(((66-zz(z))*100)-visota)/(yc*2-(y*100+100)+2)))+windowheight div 2;

i7:=round((dist*(x*100-xc)/(yc*2-(y*100+100)+2)))+windowwidth div 2;
j7:=round((dist*(((66-zz(z))*100)+100-visota)/(yc*2-(y*100+100)+2)))+windowheight div 2;

i8:=round((dist*((x*100+100)-xc)/(yc*2-(y*100+100)+2)))+windowwidth div 2;
j8:=round((dist*(((66-zz(z))*100)+100-visota)/(yc*2-(y*100+100)+2)))+windowheight div 2;
end;



procedure tblv1;
begin

If (k[x+1,y,z]=0) or (k[x,y,z-1]=0) or (k[x,y+1,z]=0) or (k[x+1,y,z]=8) or (k[x,y,z-1]=8) or (k[x,y+1,z]=8) or (y=129-bdc) then
toprk;

If k[x,y,z]<>2 then
If k[x,y,z]=8 then
travat
else
begin
If (k[x+1,y,z]=0) or (k[x+1,y,z]=8) then
st2t;

If (k[x,y,z-1]=0) or (k[x,y,z-1]=8) then
st3t;

If (k[x,y+1,z]=0) or (y=129-bdc) or (k[x,y+1,z]=8) then
st1t;
end;
end;

procedure tblv3;
begin

If (k[x-1,y,z]=0) or (k[x,y,z-1]=0) or (k[x,y+1,z]=0) or (k[x-1,y,z]=8) or (k[x,y,z-1]=8) or (k[x,y+1,z]=8) or (y=129-bdc) then
toprk;

If k[x,y,z]<>2 then
If k[x,y,z]=8 then
travat
else
begin
If (k[x-1,y,z]=0) or (k[x-1,y,z]=8) then
st4t;

If (k[x,y,z-1]=0) or (k[x,y,z-1]=8) then
st3t;

If (k[x,y+1,z]=0) or (y=129-bdc) or (k[x,y+1,z]=8) then
st1t;
end;
end;
//отражения конец


begin
lockdrawing;//
setfontsize(14);
setlength(str,4);

sr:=255;         //цвета неба   красный
sg:=255;         //цвета неба   зеленый
sb:=255;         //цвета неба   синий

cvd:=128; //кадров рендера в сутки
d:=-1;       //начало в кадрах

gl:=35;    //уровень земли
wl:=32;    //уровень воды
pk:=3;     //толщина песка
sk1:=8;    //Глубина начала Б-породы
sk2:=10;   //Глубина начала Ц-породы
sk3:=15;   //Глубина начала Д-породы

t:=rgbint(20,20,20);  //ВРОДЕ БЫ соотношение освещённости разных сторон одного блока
visota:=1850;  //перемещение камеры по высоте. (0=65 блок,6500=0 блок)   1850 or 3050
dist:=750;     //фокус (расстояние от камеры до плоскости изображения рендера) 750

bdc:=3;       //блоков до края не отображать
tn:=0.5;
tno:=1-tn;
sif:=0;      //загрузить карту из файла 1/0 - да/нет

zvo:=600;    //смещение центра вращения звёзд
zvr:=1300;   //радиус звёздного диска
cd:=98234741;   //зерно генератора звёзд  98234758  98234741
vpz:=pi/9; //угол солнца над горизонтом, при котором появляются первые звёзды



rd:=15;  //редкость деревьев
xc:=65*100;      //смещение камеры влево-вправо 65*100
yc:=65*100;     //Смещение камеры вперёд-назад 65*100
lg:=0.545;   //отношение ординаты линии горизонта к ординате нижнего края экрана 0.545
ppo:=0;  //просчитывать падение отражений
ppt:=0; //Просчитывать падение теней 1/0 - да/нет
pip:=1;  //показывать индикаторы программы
vmode:=1; //Режим вывода графики
maximizewindow;
setwindowcaption(nazv);
onmousedown:=mousedown;
visotas:=visota;
dists:=dist;
xcc:=xc;
ycc:=yc;
a[5]:=(30);
a[4]:=(10);
a[3]:=random((5));
a[2]:=random((5));
a[1]:=random((2));



For i:=1 to 3 do
For j:=1 to 20 do
bcv[i,j]:=1;

i:=1;
bcv[i,1]:=0.6;          //блока цвет красный
bcv[i,2]:=0.4;
bcv[i,3]:=0.9;
bcv[i,4]:=0.6;
bcv[i,5]:=0.5;
bcv[i,6]:=0.5;
bcv[i,7]:=0;
bcv[i,8]:=0.4;
bcv[i,9]:=0.125;
bcv[i,10]:=0.3;
bcv[i,11]:=0;
bcv[i,12]:=0;
bcv[i,13]:=0;
bcv[i,14]:=0;
bcv[i,15]:=0;
bcv[i,16]:=0;
bcv[i,17]:=0;
bcv[i,18]:=0;
bcv[i,19]:=0;
bcv[i,20]:=0;
bcv[i,21]:=0;

i:=2;
bcv[i,1]:=0.4;          //блока цвет зелёный
bcv[i,2]:=0.35;
bcv[i,3]:=0.8;
bcv[i,4]:=0.4;
bcv[i,5]:=0.5;
bcv[i,6]:=0.5;
bcv[i,7]:=0;
bcv[i,8]:=0.8;
bcv[i,9]:=0.1;
bcv[i,10]:=0.7;
bcv[i,11]:=0;
bcv[i,12]:=0;
bcv[i,13]:=0;
bcv[i,14]:=0;
bcv[i,15]:=0;
bcv[i,16]:=0;
bcv[i,17]:=0;
bcv[i,18]:=0;
bcv[i,19]:=0;
bcv[i,20]:=0;
bcv[i,21]:=0;

i:=3;
bcv[i,1]:=0.1;          //блока цвет синий
bcv[i,2]:=0.7;
bcv[i,3]:=0.5;
bcv[i,4]:=0.1;
bcv[i,5]:=0.3;
bcv[i,6]:=0.5;
bcv[i,7]:=0;
bcv[i,8]:=0.4;
bcv[i,9]:=0.03;
bcv[i,10]:=0.3;
bcv[i,11]:=0;
bcv[i,12]:=0;
bcv[i,13]:=0;
bcv[i,14]:=0;
bcv[i,15]:=0;
bcv[i,16]:=0;
bcv[i,17]:=0;
bcv[i,18]:=0;
bcv[i,19]:=0;
bcv[i,20]:=0;
bcv[i,21]:=0;

psp[1]:=1;       //пропусная способность со здвигом на один в большую сторону
psp[2]:=0.7;
psp[3]:=0.8;
psp[4]:=0.4;
psp[5]:=0.2;
psp[6]:=0.1;
psp[7]:=0.05;
psp[8]:=0;
psp[9]:=0.8;
psp[10]:=0.5;
psp[11]:=0.8;
psp[12]:=0;
psp[13]:=0;
psp[14]:=0;
psp[15]:=0;
psp[16]:=0;
psp[17]:=0;
psp[18]:=0;
psp[19]:=0;
psp[20]:=0;
psp[21]:=0;

For i:=5 downto 1 do
begin
clearwindow;
textout(5,5,'Генерация шумов: слой '+inttostr(i));
redraw;
m:=6-i;
l:=round(power(2,i));
For y:=1 to 129 do
begin
For x:=1 to 129 do
begin
If (x mod l=1) and (y mod l=1) then
begin
pn[i,x,y]:=random(a[i])*(random(2)*2-1);
end;
end;
end;




clearwindow;
textout(5,5,'Интерполяция по оси х');
redraw;

For y:=1 to 129 do
For x:=1 to 129 do
If pn[i,x,y]=0 then
If (y mod l=1) and (x mod l<>1) then
pn[i,x,y]:=round((pn[i,((x-1) div l)*l+1,y]*(((cos((((x-1) mod l)/l)*pi)+1)/2))+(pn[i,((x-1) div l+1)*l+1,y]*(1-(((cos((((x-1) mod l)/l)*pi)+1)/2))))));


                                                                                                            //((cos((((x-1) mod l)/l)*pi)+1)/2)       ((cos((((x-1) mod l)/l)*pi)+1)/2)


clearwindow;
textout(5,5,'Интерполяция по оси у');
redraw;

For y:=1 to 129 do
For x:=1 to 129 do
If pn[i,x,y]=0 then
If (y mod l<>1) then
pn[i,x,y]:=round((pn[i,x,((y-1) div l)*l+1]*(((cos((((y-1) mod l)/l)*pi)+1)/2)))+(pn[i,x,((y-1) div l+1)*l+1]*(1-((cos((((y-1) mod l)/l)*pi)+1)/2))));
end;


If sif=1 then
begin
clearwindow;
opis:='C:\Users\Господин\Desktop\155.png';
pc:=Picture.Create(opis);
pc.Load(opis);
pc.Draw(1,1);
redraw;

For x:=1 to 129 do
For y:=1 to 129 do
pn[5,x,y]:=(128-getred(getpixel(x,y))) {div 2-15};
For x:=1 to 129 do
For y:=1 to 129 do
pn[4,x,y]:=0;
end;



clearwindow;
textout(5,5,'Сложение шумов');
redraw;
For i:=1 to 5 do
For y:=1 to 129 do
For x:=1 to 129 do
pno[x,y]:=pn[i,x,y]+pno[x,y];


clearwindow;
textout(5,5,'Конвертация карты высот в трёхмерный массив');
redraw;
For z:=1 to 65 do
For y:=1 to 129 do
For x:=1 to 129 do
begin
If (pno[x,y]+gl<=65) and (pno[x,y]+gl>=1) then
k[x,y,pno[x,y]+gl]:=1;

If pno[x,y]+gl>65 then
k[x,y,65]:=1;

If (pno[x,y]+gl<1) then
k[x,y,1]:=1;
end;

clearwindow;
textout(5,5,'Заполнение трёхмерного массива');
redraw;
For z:=64 downto 1 do
For y:=1 to 129 do
For x:=1 to 129 do
begin
If k[x,y,z+1]=1 then
k[x,y,z]:=1;
end;


clearwindow;
textout(5,5,'Генерация открытой воды');
redraw;
//вода
For z:=1 to wl do
For y:=1 to 129 do
For x:=1 to 129 do
If k[x,y,z]=0 then
k[x,y,z]:=2;


clearwindow;
textout(5,5,'Генерация пляжей');
redraw;
//песок
For z:=1 to 64 do
For y:=1 to 129 do
For x:=1 to 129 do
If (k[x,y,z+1]=2) and (k[x,y,z]=1) then
k[x,y,z]:=3;



For i:=1 to pk do
begin
For z:=1 to 64 do
For y:=1 to 129 do
For x:=1 to 129 do
If (k[x,y,z]=2) or (k[x,y,z]=3) then
begin
If (x<129) then
If k[x+1,y,z]=1 then
k[x+1,y,z]:=4;
If (x>1) then
If k[x-1,y,z]=1 then
k[x-1,y,z]:=4;

If (y<129) then
If k[x,y+1,z]=1 then
k[x,y+1,z]:=4;
If (y>1) then
If k[x,y-1,z]=1 then
k[x,y-1,z]:=4;

If (z<65) then
If k[x,y,z+1]=1 then
k[x,y,z+1]:=4;
If (z>1) then
If k[x,y,z-1]=1 then
k[x,y,z-1]:=4;
end;

For z:=1 to 64 do
For y:=1 to 129 do
For x:=1 to 129 do
If k[x,y,z]=4 then
k[x,y,z]:=3;
end;


clearwindow;
textout(5,5,'Заполнение подземелий породой');
redraw;
//камень
For z:=1 to 65-sk1 do
For y:=1 to 129 do
For x:=1 to 129 do
If (k[x,y,z+sk1]=3) or (k[x,y,z+sk1]=1) then
k[x,y,z]:=4;

For z:=1 to 65-sk2 do
For y:=1 to 129 do
For x:=1 to 129 do
If k[x,y,z+sk2-random(2)]=4 then
k[x,y,z]:=5;

For z:=1 to 65-sk3 do
For y:=1 to 129 do
For x:=1 to 129 do
If (k[x,y,z+sk3-random(2)]=5) or (z=1) or (z=random(3)) then
k[x,y,z]:=6;









//деревья
clearwindow;
textout(5,5,'Генерация деревьев');
redraw;
For z:=1 to 55 do
For y:=2 to 128 do
For x:=2 to 128 do                                                                                                                 //редкость
If (k[x,y,z]=1) and (k[x,y,z+1]=0) and (k[x+1,y,z+1]=0) and (k[x-1,y,z+1]=0) and (k[x,y+1,z+1]=0) and (k[x,y-1,z+1]=0) and (random(rd)=0) then
begin
If random(10)=0 then
For i:=x-1 to x+1 do
For j:=y-1 to y+1 do
k[i,j,z+2]:=10;
For i:=x-1 to x+1 do
For j:=y-1 to y+1 do
k[i,j,z+3]:=10;

k[x,y,z+1]:=9;
k[x,y,z+2]:=9;
k[x,y,z+3]:=9;

i:=random(3)+1;
For j:=1 to i do
begin
For l:=x-1 to x+1 do
For m:=y-1 to y+1 do
k[l,m,z+3+j]:=10;

k[x,y,z+3+j]:=9;
end;

If random(2)=0 then
begin
k[x-1,y-1,z+3+i]:=0;
k[x+1,y-1,z+3+i]:=0;
k[x+1,y+1,z+3+i]:=0;
k[x-1,y+1,z+3+i]:=0;
k[x,y,z+3+i]:=10;
end
else
k[x,y,z+4+i]:=10;

//clearwindow;
{textout(5,5,'Генерация деревьев '+inttostr(129-x)+' '+inttostr(129-y)+' '+inttostr(65-z)); }
end;










clearwindow;
textout(5,5,'Генерация травы');
redraw;
For z:=2 to 65 do
For y:=1 to 129 do
For x:=1 to 129 do
If (k[x,y,z]=0) and (k[x,y,z-1]=1) then
If random(5)<3 then
k[x,y,z]:=8;
{

For x:=1 to 129 do
For y:=1 to 129 do
For z:=1 to 65 do
If sqrt(sqr(x-65)+sqr(y-65)+sqr(z-33))>31 then
k[x,y,z]:=0;}

          {

For x:=1 to 129 do
For y:=1 to 129 do
If round(sqrt(sqr(x-64)+sqr(y-64)))=50 then
k[x,y,50]:=1;
For x:=1 to 129 do
For y:=1 to 129 do
If round(sqrt(sqr(x-64)+sqr(y-90)))<20 then
k[x,y,54]:=1;     }          {
For x:=1 to 129 do
For y:=1 to 129 do
For z:=1 to 65 do
If round(sqrt(sqr(z-53)+sqr(x-64)+sqr(y-90)))=20 then
k[x,y,z]:=2;
                                                           }






clearwindow;
textout(5,5,'Начало');
redraw;
While 1>0 do
begin
{
While d<=cvd do
begin

xc:=round((40+0.195*d)*100);
xc:=202;
yc:=6500+20000;}

ww:=windowwidth;
wh:=windowheight;
d:=d+1;
sp:=d mod cvd/(cvd/2)*pi;
sr:=0;
sg:=0;
sb:=0;
If (sin(sp)*9>=0) and (sin(sp)*9<=1) then
sr:=round(sin(sp)*9*255);
If (sin(sp)*9>1) and (sin(sp)*9<=9) then
sr:=255;

If (sin(sp)*9>=0) and (sin(sp)*9<=3) then
sg:=round((sin(sp)*9)/3*255);
If (sin(sp)*9>3) and (sin(sp)*9<=9) then
sg:=255;

If (sin(sp)*9>=3) and (sin(sp)*9<=6) then
sb:=round((sin(sp)*9)/6*200);
If (sin(sp)*9>6) and (sin(sp)*9<=9) then
sb:=200;

If sr<25 then
sr:=25;
If sg<25 then
sg:=25;
If sb<25 then
sb:=25;

For z:=1 to 65 do
For y:=1 to 129 do
For x:=1 to 129 do
o[x,y,z]:=255;



//Падение блоков
For z:=1 to 64 do
For x:=1 to 129 do
For y:=1 to 129 do
If (k[x,y,z+1]>0) and (k[x,y,z]=0) and (k[x,y,z+1]<>10) then
begin
k[x,y,z]:=k[x,y,z+1];
k[x,y,z+1]:=0;
end;




If ppt=1 then
begin
If sin(sp)>=0 then
begin

If cos(sp)>sin(sp) then
begin


For y:=1 to 129 do
For x:=1 to 129 do
begin
//o[x,y,65]:=255;
xvc:=x;
zvc:=65;
While (xvc-1>=1) and (zvc-sin(sp)/cos(sp)>=1) do
begin
xvc:=xvc-1;
zvc:=zvc-sin(sp)/cos(sp);
//If o[round(xvc),y,round(zvc)]=255 then
If (xvc+1<=129) and (zvc+1<=65.5) then
if (k[round(xvc)+1,y,round(zvc)+1]=0) and (k[round(xvc),y,round(zvc)]>0) then
o[round(xvc),y,round(zvc)]:=round(o[round(xvc)+1,y,round(zvc)+1]*psp[k[round(xvc)+1,y,round(zvc)+1]+1])
else
o[round(xvc),y,round(zvc)]:=round(o[round(xvc+1),y,round(zvc+sin(sp)/cos(sp))]*psp[k[round(xvc+1),y,round(zvc+sin(sp)/cos(sp))]+1]);
end;
end;
For y:=1 to 129 do
For z:=65 downto 1 do
begin
//o[x,y,65]:=255;
xvc:=129;
zvc:=z;
While (xvc-1>=1) and (zvc-sin(sp)/cos(sp)>=1) do
begin
xvc:=xvc-1;
zvc:=zvc-sin(sp)/cos(sp);
If (xvc+1<=129) and (zvc+1<=65) then
if (k[round(xvc)+1,y,round(zvc)+1]=0) and (k[round(xvc),y,round(zvc)]>0) then
o[round(xvc),y,round(zvc)]:=round(o[round(xvc)+1,y,round(zvc)+1]*psp[k[round(xvc)+1,y,round(zvc)+1]+1])
else
o[round(xvc),y,round(zvc)]:=round(o[round(xvc+1),y,round(zvc+sin(sp)/cos(sp))]*psp[k[round(xvc+1),y,round(zvc+sin(sp)/cos(sp))]+1]);
end;
end;
end;


If cos(pi-sp)>sin(sp) then
begin
For y:=1 to 129 do
For x:=129 downto 1 do
begin
//o[x,y,65]:=255;
xvc:=x;
zvc:=65;
While (xvc+1<=129) and (zvc+sin(sp)/cos(sp)>=1) do
begin
xvc:=xvc+1;
zvc:=zvc+sin(sp)/cos(sp);
//If o[round(xvc),y,round(zvc)]=255 then
If (xvc-1>=1) and (zvc+1<=65) then
if (k[round(xvc)-1,y,round(zvc)+1]=0) and (k[round(xvc),y,round(zvc)]>0) then
o[round(xvc),y,round(zvc)]:=round(o[round(xvc)-1,y,round(zvc)+1]*psp[k[round(xvc)-1,y,round(zvc)+1]+1])
else
o[round(xvc),y,round(zvc)]:=round(o[round(xvc-1),y,round(zvc-sin(sp)/cos(sp))]*psp[k[round(xvc-1),y,round(zvc-sin(sp)/cos(sp))]+1]);
end;
end;
For y:=1 to 129 do
For z:=65 downto 1 do
begin
//o[x,y,65]:=255;
xvc:=1;
zvc:=z;
While (xvc+1<=129) and (zvc+sin(sp)/cos(sp)>=1) do
begin
xvc:=xvc+1;
zvc:=zvc+sin(sp)/cos(sp);
If (xvc-1>=1) and (zvc+1<=65) then
if (k[round(xvc)-1,y,round(zvc)+1]=0) and (k[round(xvc),y,round(zvc)]>0) then
o[round(xvc),y,round(zvc)]:=round(o[round(xvc)-1,y,round(zvc)+1]*psp[k[round(xvc)-1,y,round(zvc)+1]+1])
else
o[round(xvc),y,round(zvc)]:=round(o[round(xvc-1),y,round(zvc-sin(sp)/cos(sp))]*psp[k[round(xvc-1),y,round(zvc-sin(sp)/cos(sp))]+1]);
end;
end;
end;

If (cos(sp)<=sin(sp)) and (cos(sp)>=0) then
begin
For y:=1 to 129 do
For x:=1 to 129 do
begin
//o[x,y,65]:=255;
xvc:=x;
zvc:=65;
While (xvc-cos(sp)/sin(sp)>=1) and (zvc-1>=1) do
begin
xvc:=xvc-cos(sp)/sin(sp);
zvc:=zvc-1;
o[round(xvc),y,round(zvc)]:=round(o[round(xvc+cos(sp)/sin(sp)),y,round(zvc+1)]*psp[k[round(xvc+cos(sp)/sin(sp)),y,round(zvc+1)]+1]);
end;
end;
For y:=1 to 129 do
For z:=1 to 65 do
begin
//o[x,y,65]:=255;
xvc:=129;
zvc:=z;
While (xvc-cos(sp)/sin(sp)>=1) and (zvc-1>=1) do
begin
xvc:=xvc-cos(sp)/sin(sp);
zvc:=zvc-1;
o[round(xvc),y,round(zvc)]:=round(o[round(xvc+cos(sp)/sin(sp)),y,round(zvc+1)]*psp[k[round(xvc+cos(sp)/sin(sp)),y,round(zvc+1)]+1]);
end;
end;
end;


If (cos(pi-sp)<=sin(sp)) and (cos(sp)<0) then
begin
For y:=1 to 129 do
For x:=1 to 129 do
begin
//o[x,y,65]:=255;
xvc:=x;
zvc:=65;
While (xvc-cos(sp)/sin(sp)<=129) and (zvc-1>=1) do
begin
xvc:=xvc-cos(sp)/sin(sp);
zvc:=zvc-1;
o[round(xvc),y,round(zvc)]:=round(o[round(xvc+cos(sp)/sin(sp)),y,round(zvc+1)]*psp[k[round(xvc+cos(sp)/sin(sp)),y,round(zvc+1)]+1]);
end;
end;
For y:=1 to 129 do
For z:=1 to 65 do
begin
//o[x,y,65]:=255;
xvc:=1;
zvc:=z;
While (xvc-cos(sp)/sin(sp)<=129) and (zvc-1>=1) do
begin
xvc:=xvc-cos(sp)/sin(sp);
zvc:=zvc-1;
o[round(xvc),y,round(zvc)]:=round(o[round(xvc+cos(sp)/sin(sp)),y,round(zvc+1)]*psp[k[round(xvc+cos(sp)/sin(sp)),y,round(zvc+1)]+1]);
end;
end;
end;
end;
end
else
For x:=1 to 129 do
For y:=1 to 129 do
For z:=1 to 65 do
o[x,y,z]:=200;








If ppt=1 then
begin
If sin(sp)>=0 then
begin

If cos(sp)>sin(sp) then
begin
For z:=1 to 64 do
For x:=2 to 128 do
For y:=1 to 129 do
begin
If (k[x,y,z]<>0) and (((k[x,y,z+1]=0) or (k[x+1,y,z]=0) or (k[x-1,y,z]=0)) or ((k[x,y,z+1]=8) or (k[x+1,y,z]=8) or (k[x-1,y,z]=8))) then
begin
xvc:=x;
zvc:=z;
pso:=1;
While (xvc+1<=129) and (zvc+sin(sp)/cos(sp)<=65) and (pso>0) do
begin
xvc:=xvc+1;
zvc:=zvc+sin(sp)/cos(sp);
If (xvc+1<=129) and (zvc+sin(sp)/cos(sp)<=65) then
pso:=pso*psp[k[round(xvc),y,round(zvc)]+1];
end;
o[x,y,z]:=round(pso*255);
end;
end;
end;





If cos(pi-sp)>sin(sp) then
begin

For z:=1 to 64 do
For x:=2 to 128 do
For y:=1 to 129 do
begin
If (k[x,y,z]<>0) and (((k[x,y,z+1]=0) or (k[x+1,y,z]=0) or (k[x-1,y,z]=0)) or ((k[x,y,z+1]=8) or (k[x+1,y,z]=8) or (k[x-1,y,z]=8))) then
begin
xvc:=x;
zvc:=z;
pso:=1;
While (xvc-1>=1) and (zvc-sin(sp)/cos(sp)<=65) and (pso>0) do
begin
xvc:=xvc-1;
zvc:=zvc-sin(sp)/cos(sp);
If (xvc-1>=1) and (zvc-sin(sp)/cos(sp)<=65) then
pso:=pso*psp[k[round(xvc),y,round(zvc)]+1];
end;
o[x,y,z]:=round(pso*255);
end;
end;
end;




If (cos(sp)<=sin(sp)) and (cos(sp)>=0) then
begin
For z:=1 to 64 do
For x:=2 to 128 do
For y:=1 to 129 do
begin
If (k[x,y,z]<>0) and (((k[x,y,z+1]=0) or (k[x+1,y,z]=0) or (k[x-1,y,z]=0)) or ((k[x,y,z+1]=8) or (k[x+1,y,z]=8) or (k[x-1,y,z]=8))) then
begin
xvc:=x;
zvc:=z;
pso:=1;
While (xvc+cos(sp)/sin(sp)<=129) and (zvc+1<=65) and (pso>0) do
begin
xvc:=xvc+cos(sp)/sin(sp);
zvc:=zvc+1;
If (xvc+cos(sp)/sin(sp)<=129) and (zvc+1<=65) then
pso:=pso*psp[k[round(xvc),y,round(zvc)]+1];
end;
o[x,y,z]:=round(pso*255);
end;
end;
end;



If (cos(pi-sp)<=sin(sp)) and (cos(sp)<0) then
begin
For z:=1 to 64 do
For x:=2 to 128 do
For y:=1 to 129 do
begin
If (k[x,y,z]<>0) and (((k[x,y,z+1]=0) or (k[x+1,y,z]=0) or (k[x-1,y,z]=0)) or ((k[x,y,z+1]=8) or (k[x+1,y,z]=8) or (k[x-1,y,z]=8))) then
begin
xvc:=x;
zvc:=z;
pso:=1;
While (xvc+cos(sp)/sin(sp)>=1) and (zvc+1<=65) and (pso>0) do
begin
xvc:=xvc+cos(sp)/sin(sp);
zvc:=zvc+1;
If (xvc+cos(sp)/sin(sp)>=1) and (zvc+1<=65) then
pso:=pso*psp[k[round(xvc),y,round(zvc)]+1];
end;
o[x,y,z]:=round(pso*255);
end;
end;
end;
end;
end;








//For abc:=0 to 1 do
begin
//graph abc begin
//clearwindow;
obnov;
//onmousedown:=lol;
c:=round((round(0.2*sr*(sin(sp)*tn+tno))+round(0.5*sg*(sin(sp)*tn+tno))*256+round(0.95*(sg)*(sin(sp)*tn+tno))*65536));
setpencolor(clr(c));
setbrushcolor(pencolor);
rectangle(0,0,ww,wh);

{
setpencolor(clr(rgbint(40+random(5),40+random(5),100+2*32)));
setbrushcolor(pencolor);}
c:=round((round(0.4*sr*(sin(sp)*tn+tno))+round(0.35*sg*(sin(sp)*tn+tno))*256+round(0.7*sb*(sin(sp)*tn+tno))*65536));
c:=round(getredint(c)+0.2*sr*(sin(sp)*tn+tno)) div 2+round(getgreenint(c)+0.5*sg*(sin(sp)*tn+tno)) div 2*256+round(getblueint(c)+0.95*(sg)*(sin(sp)*tn+tno)) div 2*65536;
setpencolor(clr(c));
setbrushcolor(clr(c));
rectangle(0,wh,ww,round(wh*lg));


//звезды
If sin(sp)<sin(vpz) then
begin
If (sp>=0) and (sp<=pi) then
begin

If sin(sp)<sin(vpz) then
rz:=2;
If sin(sp)<sin(vpz/2) then
rz:=1;
setpencolor(clr(round(  round(0.2*sr*(sin(sp)*tn+tno))  +  (255-round(0.2*sr*(sin(sp)*tn+tno)))*(1-sin(sp)/sin(vpz))  ) + round(round(0.5*sg*(sin(sp)*tn+tno))+(255-round(0.5*sg*(sin(sp)*tn+tno)))*(1-sin(sp)/sin(vpz)))*256 + round(round(0.95*sb*(sin(sp)*tn+tno))+(255-round(0.95*sb*(sin(sp)*tn+tno)))*(1-sin(sp)/sin(vpz)))*65536));
setbrushcolor(pencolor);
//writeln(1-sin(sp)/sin(vpz));
end
else
begin
rz:=0;
setpencolor(clwhite);
setbrushcolor(clwhite);
end;

For x:=1 to 1000 do
begin
ranx:=(round(x*573*cd/2598) mod 27891*round(x*499*cd/27914) mod 2763) mod 512/511*2*pi;
rany:=round(ranx+round(cd/313-x*87) mod 71428) mod 512/512;
razm:=round(ranx*117+rany*162) mod 3+1-rz;
If razm>0 then
//writeln(ranx,' ',rany);
If (round(wh*lg)+zvo-round(sin(ranx+sp)*zvr*rany)<round(wh*lg)) then
begin
circle(ww div 2+round(cos(ranx+sp)*zvr*rany),round(wh*lg)+zvo-round(sin(ranx+sp)*zvr*rany),razm);
If ppo=1 then
circle(ww div 2+round(cos(ranx+sp)*zvr*rany),round(wh*lg)-zvo+round(sin(ranx+sp)*zvr*rany),razm);
end;
//writeln(ww div 2+round(cos(ranx)*zvr*rany),' ',wh div 2-zvo-round(sin(ranx)*zvr*rany));  //sp
end;
end;
//конец звезд


// If ms=3 then
// ms:=4;
//For z:=65 downto 1 do
For y:=1 to 129-bdc do

begin
//redraw;

If ppo=1 then
begin
For z:=65 downto wl+1 do
For x:=1 to xc div 100-1 do
begin
If (k[x,y,z]>0) and (k[x,y,z]<>2) then
tblv1;
end;



For z:=65 downto wl+1 do
For x:=129 downto xc div 100 do
begin
If (k[x,y,z]>0) and (k[x,y,z]<>2) then
tblv3;
end;
end;







For z:=1 to 65-visota div 100 do
For x:=1 to xc div 100-1 do
begin
If k[x,y,z]>0 then
blv1;
end;

For z:=65 downto 65-visota div 100+1  do
For x:=1 to xc div 100 do
begin
If k[x,y,z]>0 then
blv2;
end;

For z:=1 to 65-visota div 100 do
For x:=129 downto xc div 100 do
begin
If k[x,y,z]>0 then
blv3;
end;

For z:=65 downto 65-visota div 100+1  do
For x:=129 downto xc div 100 do
begin
If k[x,y,z]>0 then
blv4;
end;
end;


{
For x:=1 to 129 do
//For y:=1 to 129 do
For z:=1 to 65 do
begin
setpencolor(clblack);
If k[x,118,z]>0 then
setpencolor(clgreen);
setbrushcolor(redcolor(o[x,118,z]));
rectangle(500+x*5,500+(66-z)*5,500+x*5+5,500+(66-z)*5+5)
end;}

If pip=1 then
begin
setpenwidth(4);
setpencolor(clblack);
setbrushcolor(argb(100,255,255,255));
textout(50,5,inttostr(d));


circle(25,25,20);
line(25+round(cos(sp)*20),25-round(sin(sp)*20),25,25);




rectangle(ww-5,5,ww-55,55);

If pku=1 then
begin
rectangle(ww-15-70,5,ww-65-70,55);
rectangle(ww-15-140,5,ww-65-140,55);
rectangle(ww-15-210,5,ww-65-210,55);

rectangle(ww-5,5+70,ww-55,55+70);
line(ww-5,5+70,ww-55,55+70);
line(ww-55,5+70,ww-5,55+70);
rectangle(ww-5,5+140,ww-55,55+140);
line(ww-5,5+140,ww-55,55+140);
line(ww-55,5+140,ww-5,55+140);
rectangle(ww-5,5+210,ww-55,55+210);
line(ww-5,30+210,ww-55,30+210);
rectangle(ww-5,5+280,ww-55,55+280);
line(ww-5,30+280,ww-55,30+280);

setfontsize(14);
setbrushcolor(argb(0,0,0,0));
setpencolor(brushcolor);
setfontcolor(clblack);
textout(ww-150,68,'x='+inttostr(xc));
textout(ww-150,88,'y='+inttostr(yc));
textout(ww-150,108,'z='+inttostr(6500-visota));
setbrushcolor(rgb(0,0,0));
setpencolor(brushcolor);
setfontcolor(rgb(0,0,0));
end;

setpenwidth(1);
end;

setfontsize(14);
setbrushcolor(argb(0,0,0,0));
setpencolor(brushcolor);
setfontcolor(argb(round( (sin(sp)+abs(sin(sp)))/2*10+5),255,255,255));
textout(ww-335,wh-40,nazv);
setbrushcolor(rgb(0,0,0));
setpencolor(brushcolor);
setfontcolor(clblack);

redraw;
obnov;
//onmousedown:=mousedown;
//savew;
//savewindow('C:\Users\Господин\Desktop\Pascal pictures\VCR\'+inttostr(d)+{' '+inttostr(round(sp*180/pi))+'`'+inttostr(round(sp*3600/pi)mod 60)+}' '+inttostr(abc)+'.png');
//graph end.
end;


end;
end.