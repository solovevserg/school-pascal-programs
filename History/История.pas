uses graphabc;
var i,j,l,m,n,o,p,q,r,s,gci1,gcj1,gci2,gcj2,geni,genj,pr,rni,rnj,dri,drj,day,resdr1,resdr2,resj1,resj2,respc1,respc2,plani1,plani2,meli1,melj1,meli2,melj2,minei1,minej1,minei2,minej2,kazi1,kazi2,kazj1,kazj2:integer;

k: array [1..40,1..80] of integer;
ktr: array [1..40,1..80] of integer;

plan1: array [1..500] of integer;
plan2: array [1..500] of integer;

kri1: array [1..30] of integer;
krj1: array [1..30] of integer;
krd1: array [1..30] of integer;
krz1: array [1..30] of integer;
krgr1: array [1..30] of integer;

soli1: array [1..30] of integer;
solj1: array [1..30] of integer;
sold1: array [1..30] of integer;
solz1: array [1..30] of integer;


kri2: array [1..30] of integer;
krj2: array [1..30] of integer;
krd2: array [1..30] of integer;
krz2: array [1..30] of integer;
krgr2: array [1..30] of integer;

soli2: array [1..30] of integer;
solj2: array [1..30] of integer;
sold2: array [1..30] of integer;
solz2: array [1..30] of integer;

up1: array [1..100] of integer;
up2: array [1..100] of integer;

updr: array [1..100] of integer;
uppc: array [1..100] of integer;
upj: array [1..100] of integer;



begin
//Ups
updr[1]:=50;   uppc[1]:=0;  upj[1]:=25;          //Топоры (быстрее рубится дерево)  +
updr[2]:=50;   uppc[2]:=0;  upj[2]:=25;          //косы (косится зерно быстрее)      +
updr[3]:=50;   uppc[3]:=0;  upj[3]:=25;          //Кирки (быстрее собирается камень)  +
updr[4]:=10;   uppc[4]:=0;  upj[4]:=100;          //Мечи (удар солдатов)               +
updr[5]:=50;   uppc[5]:=0;  upj[5]:=150;          //Щиты (защита солдатов)              +
updr[6]:=120;   uppc[6]:=0;  upj[6]:=25;          //Копья (удар+2)                       +
updr[7]:=0;   uppc[7]:=0;  upj[7]:=100;          //Шлемы (Защита солдатов)                +
updr[8]:=0;   uppc[8]:=0;  upj[8]:=0;          //Доспех (Защита солдатов)                  +
updr[9]:=100;   uppc[9]:=100;  upj[9]:=0;          //Новые сорта пшеницы  (скорость созревания)
updr[10]:=50;  uppc[10]:=150;  upj[10]:=50;        //Новый способ посадки (чаще сажают)
updr[11]:=50;  uppc[11]:=0;  upj[11]:=75;        //Ножи у крестьян (сильнее удар)
updr[12]:=250;  uppc[12]:=0;  upj[12]:=100;        //Новые стены
updr[13]:=120;  uppc[13]:=0;  upj[13]:=300;        //Улучшение конструкции зданий
updr[14]:=150;  uppc[14]:=0;  upj[14]:=200;        //Зажигательные бомбы(больший урон зданиям)
updr[15]:=100;  uppc[15]:=150;  upj[15]:=50;        //лекарства (здоровье солдатов +)
updr[16]:=400;  uppc[16]:=0;  upj[16]:=0;        //Новый способ лесорубства (эффективность+)
updr[17]:=0;  uppc[17]:=500;  upj[17]:=0;        //Снопы (больше переносит)
updr[18]:=0;  uppc[18]:=0;  upj[18]:=350;        //Тачки для руды (больше переносит)
updr[19]:=50;  uppc[19]:=500;  upj[19]:=0;        //Поле дольше держится
updr[20]:=0;  uppc[20]:=0;  upj[20]:=0;        //
updr[21]:=0;  uppc[21]:=0;  upj[21]:=0;        //
updr[22]:=0;  uppc[22]:=0;  upj[22]:=0;        //
updr[23]:=0;  uppc[23]:=0;  upj[23]:=0;        //
updr[24]:=0;  uppc[24]:=0;  upj[24]:=0;        //
updr[25]:=0;  uppc[25]:=0;  upj[25]:=0;        //
updr[26]:=0;  uppc[26]:=0;  upj[26]:=0;        //
updr[27]:=0;  uppc[27]:=0;  upj[27]:=0;        //
updr[28]:=0;  uppc[28]:=0;  upj[28]:=0;        //
updr[29]:=0;  uppc[29]:=0;  upj[29]:=0;        //
updr[30]:=0;  uppc[30]:=0;  upj[30]:=0;        //
updr[31]:=0;  uppc[31]:=0;  upj[31]:=0;        //
updr[32]:=0;  uppc[32]:=0;  upj[32]:=0;        //
updr[33]:=0;  uppc[33]:=0;  upj[33]:=0;        //
updr[34]:=0;  uppc[34]:=0;  upj[34]:=0;        //
updr[35]:=0;  uppc[35]:=0;  upj[35]:=0;        //
updr[36]:=0;  uppc[36]:=0;  upj[36]:=0;        //
updr[37]:=0;  uppc[37]:=0;  upj[37]:=0;        //

//generation
{ktr[1,1]:=random(20);
For j:=2 to 50 do
begin
repeat
ktr[1,j]:=ktr[1,j-1]+random(3)-1;
until (ktr[i,j]>=0) and (ktr[i,j]<=20);
end;
For i:=2 to 50 do
for j:=2 to 100 do
begin
repeat
ktr[i,j]:=ktr[i-1,j]+random(3)-1;
until (ktr[i,j]>=0) and (ktr[i,j]<=20);
end;}

lockdrawing;

//
resdr1:=50;
resj1:=12;
respc1:=500;

resdr2:=50;
resj2:=12;
respc2:=500;

SetWindowWidth(1200);
SetWindowHeight(760);

rectangle(1,601,1200,605);
{rectangle(1201,1,1205,600);
rectangle(1201,601,1205,605);
 }
repeat
gci1:=random(40)+1;
gcj1:=random(80)+1;
gci2:=random(40)+1;
gcj2:=random(80)+1;
until (abs(gci1-gci2)>25) and (abs(gcj1-gcj2)>60);


For i:=1 to 40 do
For j:=1 to 80 do
begin
If random(1000)=0 then
   begin
   {k[i,j]:=29;
   for l:=1 to 120 do
   begin
   repeat
   geni:=random(11)-5+random(7)-3;
   genj:=random(11)-5+random(7)-3;
   until (i+geni>0) and (i+geni<=50) and (j+genj>0) and (j+genj<=100);
   k[i+geni,j+genj]:=20+random(10);
   end;}
   end
else
    If random(300)=0 then
       begin

       k[i,j]:=19;
       for l:=1 to 70 do
       begin
       repeat
   geni:=random(11)-5+random(7)-3;
   genj:=random(11)-5+random(7)-3;
   until (i+geni>0) and (i+geni<=40) and (j+genj>0) and (j+genj<=80);
   k[i+geni,j+genj]:=10+random(10);
      end;
       end
    else
        If random(250)=0 then
           begin
           k[i,j]:=39;
           end;







end;

k[gci1,gcj1]:=50;
k[gci2,gcj2]:=60;


//generation


//begin
while (gci1>0) and (gci2>0) do
begin
fillrect(0,0,80*15,40*15);
fillrect(0,40*15+6,80*15,40*15+150);
//floodfill(400,400,rgb(50,200,50));
day:=day+1;
//graph
For i:=1 to 40  do
begin
For j:=1 to 80 do
begin

//fillrect(1+(j-1)*15, 1+(i-1)*15, j*15, i*15);

If (k[i,j]>=10) and (k[i,j]<=19) then
begin
circle(8+(j-1)*15,8+(i-1)*15,3+(k[i,j]-10) div 2);
floodfill(8+(j-1)*15,8+(i-1)*15,256*(200-(k[i,j]-10)*10));
end;

If (k[i,j]>=20) and (k[i,j]<=29) then
begin
circle(8+(j-1)*15,8+(i-1)*15,3+(k[i,j]-20) div 2);
floodfill(8+(j-1)*15,8+(i-1)*15,256*(200-(k[i,j]-20)*10)+(200-(k[i,j]-20)*10)+(200-(k[i,j]-20)*10)*256*256);
end;

If (k[i,j]>=30) and (k[i,j]<=39) then
begin
rectangle(1+(j-1)*15, 1+(i-1)*15, j*15, i*15);
floodfill(2+(j-1)*15,2+(i-1)*15,256*(200-(k[i,j]-30)*15)+(200-(k[i,j]-30)*15)+(200-(k[i,j]-30)*15)*256*256);
end;

If (k[i,j]>=40) and (k[i,j]<=49) then
begin
rectangle(1+(j-1)*15, 1+(i-1)*15, j*15, i*15);
floodfill(2+(j-1)*15,2+(i-1)*15,rgb((k[i,j]-40)*(k[i,j]-40)*3+2,250,0));
end;

If k[i,j]=50 then
begin
rectangle(1+(j-1)*15, 1+(i-1)*15, j*15, i*15);
floodfill(2+(j-1)*15,2+(i-1)*15,clbrown);
rectangle(5+(j-1)*15, 5+(i-1)*15, j*15-4, i*15-4);
floodfill(6+(j-1)*15,6+(i-1)*15,250);
end;

If k[i,j]=51 then
begin
rectangle(5+(j-1)*15, 1+(i-1)*15, j*15-4, i*15);
floodfill(6+(j-1)*15,(i-1)*15+8,clbrown);
rectangle(1+(j-1)*15, 5+(i-1)*15, j*15, i*15-4);
floodfill(6+(j-1)*15,(i-1)*15+8,clbrown);
rectangle(5+(j-1)*15, 5+(i-1)*15, j*15-4, i*15-4);
floodfill(6+(j-1)*15,6+(i-1)*15,250);
end;

If k[i,j]=61 then
begin
rectangle(5+(j-1)*15, 1+(i-1)*15, j*15-4, i*15);
floodfill(6+(j-1)*15,(i-1)*15+8,clbrown);
rectangle(1+(j-1)*15, 5+(i-1)*15, j*15, i*15-4);
floodfill(6+(j-1)*15,(i-1)*15+8,clbrown);
rectangle(5+(j-1)*15, 5+(i-1)*15, j*15-4, i*15-4);
floodfill(6+(j-1)*15,6+(i-1)*15,rgb(0,0,250));
end;

If k[i,j]=52 then
begin
rectangle(1+(j-1)*15, 1+(i-1)*15, 10+(j-1)*15, 14+(i-1)*15);
floodfill(2+(j-1)*15,2+(i-1)*15,clbrown);
rectangle(1+(j-1)*15, 10+(i-1)*15, j*15, i*15);
floodfill(2+(j-1)*15, 11+(i-1)*15,clgray);

rectangle(1+(j-1)*15, 1+(i-1)*15, 8+(j-1)*15, 8+(i-1)*15);
floodfill(2+(j-1)*15,2+(i-1)*15,250);
end;

If k[i,j]=62 then
begin
rectangle(1+(j-1)*15, 1+(i-1)*15, 10+(j-1)*15, 14+(i-1)*15);
floodfill(2+(j-1)*15,2+(i-1)*15,clbrown);
rectangle(1+(j-1)*15, 10+(i-1)*15, j*15, i*15);
floodfill(2+(j-1)*15, 11+(i-1)*15,clgray);

rectangle(1+(j-1)*15, 1+(i-1)*15, 8+(j-1)*15, 8+(i-1)*15);
floodfill(2+(j-1)*15,2+(i-1)*15,rgb(0,0,250));
end;


If k[i,j]=53 then
begin
rectangle(1+(j-1)*15, 1+(i-1)*15, 6+(j-1)*15, 14+(i-1)*15);
floodfill(2+(j-1)*15,2+(i-1)*15,clgray);
rectangle(10+(j-1)*15, 1+(i-1)*15, 15+(j-1)*15, 15+(i-1)*15);
floodfill(11+(j-1)*15,2+(i-1)*15,clgray);
rectangle(1+(j-1)*15, 8+(i-1)*15, 15+(j-1)*15, 15+(i-1)*15);
floodfill(2+(j-1)*15, 11+(i-1)*15,clgray);

rectangle(1+(j-1)*15, 1+(i-1)*15, 6+(j-1)*15, 5+(i-1)*15);
floodfill(2+(j-1)*15,2+(i-1)*15,250);
rectangle(10+(j-1)*15, 1+(i-1)*15, 15+(j-1)*15, 5+(i-1)*15);
floodfill(11+(j-1)*15,2+(i-1)*15,250);
end;

If k[i,j]=63 then
begin
rectangle(1+(j-1)*15, 1+(i-1)*15, 6+(j-1)*15, 14+(i-1)*15);
floodfill(2+(j-1)*15,2+(i-1)*15,clgray);
rectangle(10+(j-1)*15, 1+(i-1)*15, 15+(j-1)*15, 15+(i-1)*15);
floodfill(11+(j-1)*15,2+(i-1)*15,clgray);
rectangle(1+(j-1)*15, 8+(i-1)*15, 15+(j-1)*15, 15+(i-1)*15);
floodfill(2+(j-1)*15, 11+(i-1)*15,clgray);

rectangle(1+(j-1)*15, 1+(i-1)*15, 6+(j-1)*15, 5+(i-1)*15);
floodfill(2+(j-1)*15,2+(i-1)*15,RGB(0,0,250));
rectangle(10+(j-1)*15, 1+(i-1)*15, 15+(j-1)*15, 5+(i-1)*15);
floodfill(11+(j-1)*15,2+(i-1)*15,RGB(0,0,250));
end;


If k[i,j]=54 then
begin
rectangle(1+(j-1)*15, 3+(i-1)*15, 15+(j-1)*15, 8+(i-1)*15);
floodfill(2+(j-1)*15,4+(i-1)*15,clbrown);
rectangle(1+(j-1)*15, 8+(i-1)*15, 15+(j-1)*15, 13+(i-1)*15);
floodfill(2+(j-1)*15,9+(i-1)*15,clbrown);

rectangle(1+(j-1)*15, 3+(i-1)*15, 6+(j-1)*15, 8+(i-1)*15);
floodfill(2+(j-1)*15,4+(i-1)*15,250);
end;

If k[i,j]=64 then
begin
rectangle(1+(j-1)*15, 3+(i-1)*15, 15+(j-1)*15, 8+(i-1)*15);
floodfill(2+(j-1)*15,4+(i-1)*15,clbrown);
rectangle(1+(j-1)*15, 8+(i-1)*15, 15+(j-1)*15, 13+(i-1)*15);
floodfill(2+(j-1)*15,9+(i-1)*15,clbrown);

rectangle(1+(j-1)*15, 3+(i-1)*15, 6+(j-1)*15, 8+(i-1)*15);
floodfill(2+(j-1)*15,4+(i-1)*15,RGB(0,0,250));
end;

If k[i,j]=60 then
begin
rectangle(1+(j-1)*15, 1+(i-1)*15, j*15, i*15);
floodfill(2+(j-1)*15,2+(i-1)*15,clbrown);
rectangle(5+(j-1)*15, 5+(i-1)*15, j*15-4, i*15-4);
floodfill(6+(j-1)*15,6+(i-1)*15,rgb(0,0,255));
end;


end;


For l:=1 to 30 do
begin
If (kri2[l]>0) then
begin
circle(8+(krj2[l]-1)*15,8+(kri2[l]-1)*15,5);
floodfill(8+(krj2[l]-1)*15,8+(kri2[l]-1)*15,rgb(0,0,250));

If krd2[l]=1 then
begin

If up2[1]=1 then
begin
line(4+(krj2[l]-1)*15, 1+(kri2[l]-1)*15, 4+(krj2[l]-1)*15, 14+(kri2[l]-1)*15);
rectangle((krj2[l]-1)*15, 1+(kri2[l]-1)*15, 4+(krj2[l]-1)*15, 6+(kri2[l]-1)*15);
end;
end;


If krd2[l]=4 then
begin

If up2[2]=1 then
begin
line(4+(krj2[l]-1)*15, 1+(kri2[l]-1)*15, 4+(krj2[l]-1)*15, 14+(kri2[l]-1)*15);
rectangle((krj2[l]-1)*15, 10+(kri2[l]-1)*15, 4+(krj2[l]-1)*15, 14+(kri2[l]-1)*15);
end;

end;


If krd2[l]=3 then
begin

If up2[3]=1 then
begin
line(3+(krj2[l]-1)*15, 1+(kri2[l]-1)*15, 3+(krj2[l]-1)*15, 14+(kri2[l]-1)*15);
rectangle((krj2[l]-1)*15, (kri2[l]-1)*15, 8+(krj2[l]-1)*15, 4+(kri2[l]-1)*15);
end;

end;


If (krgr2[l]>=10) and (krgr2[l]<=19) then
begin

If up2[17]=1 then
begin
rectangle(7+(krj2[l]-1)*15, 2+(kri2[l]-1)*15, 15+(krj2[l]-1)*15, 5+(kri2[l]-1)*15);
floodfill(8+(krj2[l]-1)*15, 3+(kri2[l]-1)*15, clbrown);
end;

rectangle(7+(krj2[l]-1)*15, 5+(kri2[l]-1)*15, 15+(krj2[l]-1)*15, 10+(kri2[l]-1)*15);
floodfill(8+(krj2[l]-1)*15, 6+(kri2[l]-1)*15, clbrown);
end;

If (krgr2[l]>=30) and (krgr2[l]<=39) then
begin
If up2[18]=1 then
begin
circle(13+(krj2[l]-1)*15, 11+(kri2[l]-1)*15,3);
floodfill(13+(krj2[l]-1)*15, 11+(kri2[l]-1)*15,0);
end;

rectangle(7+(krj2[l]-1)*15, 6+(kri2[l]-1)*15, 15+(krj2[l]-1)*15, 11+(kri2[l]-1)*15);
floodfill(8+(krj2[l]-1)*15, 9+(kri2[l]-1)*15, clgray);

end;

If (krgr2[l]>=40) and (krgr2[l]<=49) then
begin

rectangle(9-up2[17]+(krj2[l]-1)*15, 2+(kri2[l]-1)*15, 13+(krj2[l]-1)*15+up2[17], 10+(kri2[l]-1)*15);
floodfill(10-up2[17]+(krj2[l]-1)*15, 3+(kri2[l]-1)*15, clyellow);

If up2[17]=1 then
begin
rectangle(8+(krj2[l]-1)*15, 5+(kri2[l]-1)*15, 14+(krj2[l]-1)*15, 8+(kri2[l]-1)*15);
floodfill(9+(krj2[l]-1)*15,  6+(kri2[l]-1)*15, clred);
end;
end;
end;






If (kri1[l]>0) then
begin
circle(8+(krj1[l]-1)*15,8+(kri1[l]-1)*15,5);
floodfill(8+(krj1[l]-1)*15,8+(kri1[l]-1)*15,clred);

If krd1[l]=1 then
begin

If up1[1]=1 then
begin
line(4+(krj1[l]-1)*15, 1+(kri1[l]-1)*15, 4+(krj1[l]-1)*15, 14+(kri1[l]-1)*15);
rectangle((krj1[l]-1)*15, 1+(kri1[l]-1)*15, 4+(krj1[l]-1)*15, 6+(kri1[l]-1)*15);
end;
end;


If krd1[l]=4 then
begin

If up1[2]=1 then
begin
line(4+(krj1[l]-1)*15, 1+(kri1[l]-1)*15, 4+(krj1[l]-1)*15, 14+(kri1[l]-1)*15);
rectangle((krj1[l]-1)*15, 10+(kri1[l]-1)*15, 4+(krj1[l]-1)*15, 14+(kri1[l]-1)*15);
end;

end;


If krd1[l]=3 then
begin

If up1[3]=1 then
begin
line(3+(krj1[l]-1)*15, 1+(kri1[l]-1)*15, 3+(krj1[l]-1)*15, 14+(kri1[l]-1)*15);
rectangle((krj1[l]-1)*15, (kri1[l]-1)*15, 8+(krj1[l]-1)*15, 4+(kri1[l]-1)*15);
end;

end;


If (krgr1[l]>=10) and (krgr1[l]<=19) then
begin

If up1[17]=1 then
begin
rectangle(7+(krj1[l]-1)*15, 2+(kri1[l]-1)*15, 15+(krj1[l]-1)*15, 5+(kri1[l]-1)*15);
floodfill(8+(krj1[l]-1)*15, 3+(kri1[l]-1)*15, clbrown);
end;

rectangle(7+(krj1[l]-1)*15, 5+(kri1[l]-1)*15, 15+(krj1[l]-1)*15, 10+(kri1[l]-1)*15);
floodfill(8+(krj1[l]-1)*15, 6+(kri1[l]-1)*15, clbrown);
end;

If (krgr1[l]>=30) and (krgr1[l]<=39) then
begin
If up1[18]=1 then
begin
circle(13+(krj1[l]-1)*15, 11+(kri1[l]-1)*15,3);
floodfill(13+(krj1[l]-1)*15, 11+(kri1[l]-1)*15,0);
end;

rectangle(7+(krj1[l]-1)*15, 6+(kri1[l]-1)*15, 15+(krj1[l]-1)*15, 11+(kri1[l]-1)*15);
floodfill(8+(krj1[l]-1)*15, 9+(kri1[l]-1)*15, clgray);

end;

If (krgr1[l]>=40) and (krgr1[l]<=49) then
begin

rectangle(9-up1[17]+(krj1[l]-1)*15, 2+(kri1[l]-1)*15, 13+(krj1[l]-1)*15+up1[17], 10+(kri1[l]-1)*15);
floodfill(10-up1[17]+(krj1[l]-1)*15, 3+(kri1[l]-1)*15, clyellow);

If up1[17]=1 then
begin
rectangle(8+(krj1[l]-1)*15, 5+(kri1[l]-1)*15, 14+(krj1[l]-1)*15, 8+(kri1[l]-1)*15);
floodfill(9+(krj1[l]-1)*15,  6+(kri1[l]-1)*15, clred);
end;
end;



end;

If (soli2[l]>0) then
begin

If up2[7]=1 then
begin
circle(8+(solj2[l]-1)*15, 3+(soli2[l]-1)*15,4);
floodfill(7+(solj2[l]-1)*15, 3+(soli2[l]-1)*15,RGB(200,200,200));
end;

rectangle(5+(solj2[l]-1)*15, 4+(soli2[l]-1)*15, 10+(solj2[l]-1)*15, 15+(soli2[l]-1)*15);
floodfill(6+(solj2[l]-1)*15,5+(soli2[l]-1)*15,rgb(0,0,250));



If up2[6]=1 then
begin
line(2+(solj2[l]-1)*15, 1+(soli2[l]-1)*15, 2+(solj2[l]-1)*15, 15+(soli2[l]-1)*15);
line(2+(solj2[l]-1)*15, 1+(soli2[l]-1)*15, 0+(solj2[l]-1)*15, 3+(soli2[l]-1)*15);
line(2+(solj2[l]-1)*15, 1+(soli2[l]-1)*15, 4+(solj2[l]-1)*15, 3+(soli2[l]-1)*15);
end
else
begin
If up2[4]=1 then
begin
line(3+(solj2[l]-1)*15, 1+(soli2[l]-1)*15, 3+(solj2[l]-1)*15, 11+(soli2[l]-1)*15);
line(1+(solj2[l]-1)*15, 8+(soli2[l]-1)*15, 6+(solj2[l]-1)*15, 8+(soli2[l]-1)*15);
end
else
begin
line(3+(solj2[l]-1)*15, 4+(soli2[l]-1)*15, 3+(solj2[l]-1)*15, 12+(soli2[l]-1)*15);
line(2+(solj2[l]-1)*15, 8+(soli2[l]-1)*15, 5+(solj2[l]-1)*15, 8+(soli2[l]-1)*15);
end;
end;
end;

If up2[5]=1 then
begin
rectangle(8+(solj2[l]-1)*15, 6+(soli2[l]-1)*15, 14+(solj2[l]-1)*15, 14+(soli2[l]-1)*15);
floodfill(11+(solj2[l]-1)*15, 7+(soli2[l]-1)*15,RGB(100,100,100));
end;





If (soli1[l]>0) then
begin

If up1[7]=1 then
begin
circle(8+(solj1[l]-1)*15, 3+(soli1[l]-1)*15,4);
floodfill(7+(solj1[l]-1)*15, 3+(soli1[l]-1)*15,RGB(200,200,200));
end;

rectangle(5+(solj1[l]-1)*15, 4+(soli1[l]-1)*15, 10+(solj1[l]-1)*15, 15+(soli1[l]-1)*15);
floodfill(6+(solj1[l]-1)*15,5+(soli1[l]-1)*15,clred);



If up1[6]=1 then
begin
line(2+(solj1[l]-1)*15, 1+(soli1[l]-1)*15, 2+(solj1[l]-1)*15, 15+(soli1[l]-1)*15);
line(2+(solj1[l]-1)*15, 1+(soli1[l]-1)*15, 0+(solj1[l]-1)*15, 3+(soli1[l]-1)*15);
line(2+(solj1[l]-1)*15, 1+(soli1[l]-1)*15, 4+(solj1[l]-1)*15, 3+(soli1[l]-1)*15);
end
else
begin
If up1[4]=1 then
begin
line(3+(solj1[l]-1)*15, 1+(soli1[l]-1)*15, 3+(solj1[l]-1)*15, 11+(soli1[l]-1)*15);
line(1+(solj1[l]-1)*15, 8+(soli1[l]-1)*15, 6+(solj1[l]-1)*15, 8+(soli1[l]-1)*15);
end
else
begin
line(3+(solj1[l]-1)*15, 4+(soli1[l]-1)*15, 3+(solj1[l]-1)*15, 12+(soli1[l]-1)*15);
line(2+(solj1[l]-1)*15, 8+(soli1[l]-1)*15, 5+(solj1[l]-1)*15, 8+(soli1[l]-1)*15);
end;
end;
end;

If up1[5]=1 then
begin
rectangle(8+(solj1[l]-1)*15, 6+(soli1[l]-1)*15, 14+(solj1[l]-1)*15, 14+(soli1[l]-1)*15);
floodfill(11+(solj1[l]-1)*15, 7+(soli1[l]-1)*15,RGB(100,100,100));
end;

end;

rectangle(80,615,90,740);
Floodfill(81,616,255);
rectangle(580,615,590,740);
Floodfill(581,616,RGB(0,0,250));
textout(10,610,'День: '+inttostr(day div 12));
textout(100,610,'Дерево:  '+inttostr(resdr1));
textout(100,630,'Железо:  '+inttostr(resj1));
textout(100,650,'Пшеница: '+inttostr(respc1));
textout(600,610,'Дерево:  '+inttostr(resdr2));
textout(600,630,'Железо:  '+inttostr(resj2));
textout(600,650,'Пшеница: '+inttostr(respc2));



//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика
     //Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика
         //Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика//Статистика
circle(8+(15)*15,8+(41)*15,5);
floodfill(8+(15)*15,8+(41)*15,clred);

circle(8+(48)*15,8+(41)*15,5);
floodfill(8+(48)*15,8+(41)*15,rgb(0,0,250));

line(4+(15)*15, 1+(43)*15, 4+(15)*15, 14+(43)*15);
rectangle((15)*15, 1+(43)*15, 4+(15)*15, 6+(43)*15);

line(3+(15)*15, 1+(45)*15, 3+(15)*15, 14+(45)*15);
rectangle((15)*15, (45)*15, 8+(15)*15, 4+(45)*15);

line(4+(15)*15, 1+(47)*15, 4+(15)*15, 14+(47)*15);
rectangle((15)*15, 10+(47)*15, 4+(15)*15, 14+(47)*15);

line(3+(15)*15, 1+(49)*15, 3+(15)*15, 11+(49)*15);
line(1+(15)*15, 8+(49)*15, 6+(15)*15, 8+(49)*15);



rectangle(5+(20)*15, 4+(41)*15, 10+(20)*15, 15+(41)*15);
floodfill(6+(20)*15,5+(41)*15,clred);

line(3+(20)*15, 1+(43)*15, 3+(20)*15, 11+(43)*15);
line(1+(20)*15, 8+(43)*15, 6+(20)*15, 8+(43)*15);

rectangle(4+(20)*15, 6+(45)*15, 10+(20)*15, 14+(45)*15);
floodfill(5+(20)*15, 7+(45)*15,RGB(100,100,100));

rectangle(2+(20)*15, 6+(47)*15, 13+(20)*15, 9+(47)*15);
floodfill(3+(20)*15, 7+(47)*15,clred);
rectangle(6+(20)*15, 2+(47)*15, 9+(20)*15, 14+(47)*15);
floodfill(7+(20)*15, 3+(47)*15,clred);

line(5+(20)*15, 5+(49)*15, 5+(20)*15, 14+(49)*15);
rectangle(4+(20)*15, 4+(49)*15, 7+(20)*15, 7+(49)*15);
floodfill(5+(20)*15, 5+(49)*15,clred);


textout((16)*15, 4+(43)*15,' + '+inttostr(up1[1]+up1[16]));
textout((16)*15, 4+(45)*15,' + '+inttostr(up1[3]+up1[18]));
textout((16)*15, 4+(47)*15,' + '+inttostr(up1[17]+up1[2]));
textout((16)*15, 4+(49)*15,' + '+inttostr(up1[11]));



textout((21)*15, 4+(43)*15,' + '+inttostr(up1[4]+up1[6]));
textout((21)*15, 4+(45)*15,' + '+inttostr(up1[7]+up1[5]));
textout((21)*15, 4+(47)*15,' + '+inttostr(up1[15]));
textout((21)*15, 4+(49)*15,' + '+inttostr(up1[14]));



circle(8+48*15,8+(41)*15,5);
floodfill(8+48*15,8+(41)*15,clred);

circle(8+(48)*15,8+(41)*15,5);
floodfill(8+(48)*15,8+(41)*15,rgb(0,0,250));

line(4+48*15, 1+(43)*15, 4+48*15, 14+(43)*15);
rectangle(48*15, 1+(43)*15, 4+48*15, 6+(43)*15);

line(3+48*15, 1+(45)*15, 3+48*15, 14+(45)*15);
rectangle(48*15, (45)*15, 8+48*15, 4+(45)*15);

line(4+48*15, 1+(47)*15, 4+48*15, 14+(47)*15);
rectangle(48*15, 10+(47)*15, 4+48*15, 14+(47)*15);

line(3+48*15, 1+(49)*15, 3+48*15, 11+(49)*15);
line(1+48*15, 8+(49)*15, 6+48*15, 8+(49)*15);



rectangle(5+(53)*15, 4+(41)*15, 10+(53)*15, 15+(41)*15);
floodfill(6+(53)*15,5+(41)*15,rgb(0,0,250));

line(3+(53)*15, 1+(43)*15, 3+(53)*15, 11+(43)*15);
line(1+(53)*15, 8+(43)*15, 6+(53)*15, 8+(43)*15);

rectangle(4+(53)*15, 6+(45)*15, 10+(53)*15, 14+(45)*15);
floodfill(5+(53)*15, 7+(45)*15,RGB(100,100,100));

rectangle(2+(53)*15, 6+(47)*15, 13+(53)*15, 9+(47)*15);
floodfill(3+(53)*15, 7+(47)*15,rgb(0,0,250));
rectangle(6+(53)*15, 2+(47)*15, 9+(53)*15, 14+(47)*15);
floodfill(7+(53)*15, 3+(47)*15,rgb(0,0,250));

line(5+(53)*15, 5+(49)*15, 5+(53)*15, 14+(49)*15);
rectangle(4+(53)*15, 4+(49)*15, 7+(53)*15, 7+(49)*15);
floodfill(5+(53)*15, 5+(49)*15,rgb(0,0,250));


textout((49)*15, 4+(43)*15,' + '+inttostr(up2[1]+up2[16]));
textout((49)*15, 4+(45)*15,' + '+inttostr(up2[3]+up2[18]));
textout((49)*15, 4+(47)*15,' + '+inttostr(up2[17]+up2[2]));
textout((49)*15, 4+(49)*15,' + '+inttostr(up2[11]));



textout((54)*15, 4+(43)*15,' + '+inttostr(up2[4]+up2[6]));
textout((54)*15, 4+(45)*15,' + '+inttostr(up2[7]+up2[5]));
textout((54)*15, 4+(47)*15,' + '+inttostr(up2[15]));
textout((54)*15, 4+(49)*15,' + '+inttostr(up2[14]));




end;
//graph end
redraw;
//int begin


For i:=1 to 40 do
For j:=1 to 80 do
begin
rnj:=0;
rni:=0;
If (k[i,j]>=17) and (k[i,j]<=19) then
              while rnj*rnj+rni*rni=0 do
              begin
rni:=random(3)-1;
rnj:=random(3)-1;
              end;
                                                                                               {-}
If (k[i,j]>=17) and (k[i,j]<=19) and (i>1) and (i<40) and (j>1) and (j<80) and (k[i+rni,j+rnj]=0) and (random(2500)=0) then
begin
k[i+rni,j+rnj]:=10;
end;

If (k[i,j]>=40) and (k[i,j]<=48) and (random(50 div (1+up1[9]))=0) then
k[i,j]:=k[i,j]+1;

If (k[i,j]>=10) and (k[i,j]<=18) and (random(500)=0) then
k[i,j]:=k[i,j]+1;
end;



pr:=0;
For l:=1 to 30 do
begin

If (kri1[l]>0) then
begin
pr:=0;
     For m:=1 to 30 do
     begin
     If soli2[l]>0 then
     If (abs(soli2[m]-kri1[l])<=3) and (abs(solj2[m]-krj1[l])<=3) then
     begin
     pr:=l;
     end;
     end;
If pr>0 then
begin
//atack
o:=0;
For m:=30 downto 1 do
begin
If solz2[m]>0 then
If (abs(soli2[m]-kri1[l])<=3) and (abs(solj2[m]-krj1[l])<=3) then
begin
o:=m;
end;
end;
If o>0 then
begin
If (abs(soli2[o]-kri1[l])<=1) and (abs(solj2[o]-krj1[l])<=1) then
begin
solz2[o]:=solz2[o]-1+random(1+up2[5])-up1[11];
end;
If (abs(soli2[o]-kri1[l])>1) or (abs(solj2[o]-krj1[l])>1) then
begin

If soli2[o]-kri1[l]>0 then
kri1[l]:=kri1[l]+1;
If soli2[o]-kri1[l]<0 then
kri1[l]:=kri1[l]-1;

If solj2[o]-krj1[l]>0 then
krj1[l]:=krj1[l]+1;
If solj2[o]-krj1[l]<0 then
krj1[l]:=krj1[l]-1;

end;
end;
//atack
end
else
begin
If krgr1[l]>0 then
begin
//gruz
If (krgr1[l]>=10) and (krgr1[l]<=19) then     //dr
begin
If (kri1[l]=gci1) and (krj1[l]=gcj1) then
begin
resdr1:=resdr1+krgr1[l]-9;
krgr1[l]:=0;
end
else
                                          begin
                                          If gci1-kri1[l]>0 then
                                          kri1[l]:=kri1[l]+1;
                                          If gci1-kri1[l]<0 then
                                          kri1[l]:=kri1[l]-1;

                                          if gcj1-krj1[l]>0 then
                                          krj1[l]:=krj1[l]+1;
                                          If gcj1-krj1[l]<0 then
                                          krj1[l]:=krj1[l]-1;
                                          end;
end;

If (krgr1[l]>=30) and (krgr1[l]<=39) then     //jz
begin
If (kri1[l]=gci1) and (krj1[l]=gcj1) then
begin
resj1:=resj1+krgr1[l]-29;
krgr1[l]:=0;
end
else
                                          begin
                                          If gci1-kri1[l]>0 then
                                          kri1[l]:=kri1[l]+1;
                                          If gci1-kri1[l]<0 then
                                          kri1[l]:=kri1[l]-1;

                                          if gcj1-krj1[l]>0 then
                                          krj1[l]:=krj1[l]+1;
                                          If gcj1-krj1[l]<0 then
                                          krj1[l]:=krj1[l]-1;
                                          end;
end;

If (krgr1[l]>=40) and (krgr1[l]<=49) then     //pc
begin
If (kri1[l]=meli1) and (krj1[l]=melj1) then
begin
respc1:=respc1+krgr1[l]-39;
krgr1[l]:=0;
end
else
                                          begin
                                          If meli1-kri1[l]>0 then
                                          kri1[l]:=kri1[l]+1;
                                          If meli1-kri1[l]<0 then
                                          kri1[l]:=kri1[l]-1;

                                          if melj1-krj1[l]>0 then
                                          krj1[l]:=krj1[l]+1;
                                          If melj1-krj1[l]<0 then
                                          krj1[l]:=krj1[l]-1;
                                          end;
end;
//gruz
end
else
    begin
    dri:=0;
    drj:=0;
    //delo
    
    
    If krd1[l]=1 then
    begin
    If (k[kri1[l],krj1[l]]>=10) and (k[kri1[l],krj1[l]]<=19) then
    begin
    If (k[kri1[l],krj1[l]]>=11) and (k[kri1[l],krj1[l]]<=19) then
    begin
    k[kri1[l],krj1[l]]:=k[kri1[l],krj1[l]]-1;
    krgr1[l]:=10+up1[1]+up1[16];
    end;
    If k[kri1[l],krj1[l]]=10 then
    begin
    k[kri1[l],krj1[l]]:=0;
    krgr1[l]:=10+up1[1]+up1[16];
    end;
    end
    else
    begin
    dri:=0;
    drj:=0;

    For q:=1 to 80 do
    begin
    If dri=0 then
    begin

    For r:=kri1[l]-q to kri1[l]+q do
    begin

    If (r>0) and (r<=40) and (krj1[l]+q>0) and (krj1[l]+q<=80) then
    begin
    If (k[r,krj1[l]+q]>=10) and (k[r,krj1[l]+q]<=19) then
    begin
    dri:=r;
    drj:=krj1[l]+q;
    end;
    end;

    If (r>0) and (r<=40) and (krj1[l]-q>0) and (krj1[l]-q<=80) then
    begin
    If (k[r,krj1[l]-q]>=10) and (k[r,krj1[l]-q]<=19) then
    begin
    dri:=r;
    drj:=krj1[l]-q;
    end;
    end;

    end;

    For r:=krj1[l]-q to krj1[l]+q do
    begin

    If (r>0) and (r<=80) and (kri1[l]+q>0) and (kri1[l]+q<=40) then
    begin
    If (k[kri1[l]+q,r]>=10) and (k[kri1[l]+q,r]<=19) then
    begin
    drj:=r;
    dri:=kri1[l]+q;
    end;
    end;

    If (r>0) and (r<=80) and (kri1[l]-q>0) and (kri1[l]-q<=40) then
    begin
    If (k[kri1[l]-q,r]>=10) and (k[kri1[l]-q,r]<=19) then
    begin
    drj:=r;
    dri:=kri1[l]-q;
    end;
    end;

    end;


    end;
    end;
    If (dri>0) and (dri<=40) and (drj>0) and (drj<=80) then
    begin
    
    If dri-kri1[l]>0 then
    kri1[l]:=kri1[l]+1;
    If dri-kri1[l]<0 then
    kri1[l]:=kri1[l]-1;

    if drj-krj1[l]>0 then
    krj1[l]:=krj1[l]+1;
    If drj-krj1[l]<0 then
    krj1[l]:=krj1[l]-1;
    
    
    end;
    end;
    end;

    If krd1[l]=3 then
    begin
    //shaxterstvo
    If (k[kri1[l],krj1[l]]=52) then
    begin
    If random(20 div (1+up1[3]))=0 then
    begin
    If random(10000)=1233 then
    begin
    k[minei1,minej1]:=0;
    minei1:=0;
    minej1:=0;
    end;
    krgr1[l]:=30+up1[18];
    end;
    end
    else
    begin


    If minei1-kri1[l]>0 then
    kri1[l]:=kri1[l]+1;
    If minei1-kri1[l]<0 then
    kri1[l]:=kri1[l]-1;

    if minej1-krj1[l]>0 then
    krj1[l]:=krj1[l]+1;
    If minej1-krj1[l]<0 then
    krj1[l]:=krj1[l]-1;


    end;
    end;

    If krd1[l]=4 then
    begin
    //pshenica
        If k[kri1[l],krj1[l]]=49 then
    begin
    If random(10 div (1+up1[2]))=0 then
    begin
    If random(50*(1+3*up1[19]))=0 then
    k[kri1[l],krj1[l]]:=0;
    krgr1[l]:=40+up1[17];
    end;
    end
    else
    begin
    dri:=0;
    drj:=0;

    For q:=1 to 30 do
    begin
    If dri=0 then
    begin

    For r:=kri1[l]-q to kri1[l]+q do
    begin

    If (r>0) and (r<=40) and (krj1[l]+q>0) and (krj1[l]+q<=80) then
    begin
    If k[r,krj1[l]+q]=49 then
    begin
    dri:=r;
    drj:=krj1[l]+q;
    end;
    end;

    If (r>0) and (r<=40) and (krj1[l]-q>0) and (krj1[l]-q<=80) then
    begin
    If k[r,krj1[l]-q]=49 then
    begin
    dri:=r;
    drj:=krj1[l]-q;
    end;
    end;

    end;

    For r:=krj1[l]-q to krj1[l]+q do
    begin

    If (r>0) and (r<=80) and (kri1[l]+q>0) and (kri1[l]+q<=40) then
    begin
    If k[kri1[l]+q,r]=49 then
    begin
    drj:=r;
    dri:=kri1[l]+q;
    end;
    end;

    If (r>0) and (r<=80) and (kri1[l]-q>0) and (kri1[l]-q<=40) then
    begin
    If k[kri1[l]-q,r]=49 then
    begin
    drj:=r;
    dri:=kri1[l]-q;
    end;
    end;

    end;


    end;
    end;
    If (dri>0) and (dri<=40) and (drj>0) and (drj<=80) then
    begin

    If dri-kri1[l]>0 then
    kri1[l]:=kri1[l]+1;
    If dri-kri1[l]<0 then
    kri1[l]:=kri1[l]-1;

    if drj-krj1[l]>0 then
    krj1[l]:=krj1[l]+1;
    If drj-krj1[l]<0 then
    krj1[l]:=krj1[l]-1;


    end;
    end;
    end;
    

    //delo
    end;
end;
end;
//COLDAT
If (soli1[l]>0) then
begin     //1
pr:=0;
     For m:=1 to 30 do
     begin
     If solz2[m]>0 then
     If ((abs(soli2[m]-soli1[l])<=10) and (abs(solj2[m]-solj1[l])<=10)) or ((abs(kri2[m]-soli1[l])<=5) and (abs(krj2[m]-solj1[l])<=5)) then
     begin
     pr:=l;
     p:=2;
     end;
     end;
     

If pr>0 then
begin        //2
//atack
o:=0;
p:=0;
For m:=30 downto 1 do
begin

If krz2[m]>0 then
If (abs(kri2[m]-soli1[l])<=5) and (abs(krj2[m]-solj1[l])<=5) then
begin
o:=m;
p:=1;
end;
end;

For m:=30 downto 1 do
begin
If solz2[m]>0 then
If (abs(soli2[m]-soli1[l])<=10) and (abs(solj2[m]-solj1[l])<=10) then
begin
o:=m;
p:=2;
end;
end;

If o>0 then
begin

If p=2 then
begin
If (abs(soli2[o]-soli1[l])<=1) and (abs(solj2[o]-solj1[l])<=1) then
begin
solz2[o]:=solz2[o]-1-up1[4]*(1-up2[7])+random(1+up2[5])-up1[6]*(1-up2[8]);
end;
If (abs(soli2[o]-soli1[l])>1) or (abs(solj2[o]-solj1[l])>1) then
begin
If soli2[o]-soli1[l]>0 then
soli1[l]:=soli1[l]+1;
If soli2[o]-soli1[l]<0 then
soli1[l]:=soli1[l]-1;

If solj2[o]-solj1[l]>0 then
solj1[l]:=solj1[l]+1;
If solj2[o]-solj1[l]<0 then
solj1[l]:=solj1[l]-1;
end;
end;

If p=1 then
begin
If (abs(kri2[o]-soli1[l])<=1) and (abs(krj2[o]-solj1[l])<=1) then
begin
krz2[o]:=krz2[o]-1-up1[4]-up1[6];
end;
If (abs(kri2[o]-soli1[l])>1) or (abs(krj2[o]-solj1[l])>1) then
begin

If kri2[o]-soli1[l]>0 then
soli1[l]:=soli1[l]+1;
If kri2[o]-soli1[l]<0 then
soli1[l]:=soli1[l]-1;

If krj2[o]-solj1[l]>0 then
solj1[l]:=solj1[l]+1;
If krj2[o]-solj1[l]<0 then
solj1[l]:=solj1[l]-1;
end;
end;

end;
//atack
end
else
begin          //3
//delo

If (sold1[l]=1) or (sold1[l]=2) then
begin
dri:=0;
drj:=0;
dri:=gci1+(l mod 4+2)*(-2*(l mod 2)+1);
drj:=gcj1+(l mod 5+2)*((l+1) mod 3);
If dri<=0 then
dri:=0-dri+1;
If dri>=40 then
dri:=40+40-dri-1;
If drj<=0 then
drj:=0-drj+1;
If drj>=80 then
drj:=80+80-drj-1;

If (soli1[l]<>gci1) or (solj1[l]<>gcj1) then
begin
If dri-soli1[l]>0 then
    soli1[l]:=soli1[l]+1;
    If dri-soli1[l]<0 then
    soli1[l]:=soli1[l]-1;

    if drj-solj1[l]>0 then
    solj1[l]:=solj1[l]+1;
    If drj-solj1[l]<0 then
    solj1[l]:=solj1[l]-1;
    dri:=0;
    drj:=0;
end;
end;



If sold1[l]=3 then
begin    //4

If (k[soli1[l],solj1[l]]>=60) and  (k[soli1[l],solj1[l]]<70) then
begin

If k[soli1[l],solj1[l]]=60 then
begin
If random(20*(1+up2[12]+up2[13]))=0 then
begin
k[soli1[l],solj1[l]]:=0;
gci2:=0;
gcj2:=0;
end
end
else
begin
If random(10*(1+up2[12]+up2[13]) div (1+3*up1[14]))=0 then
begin
if k[soli1[l],solj1[l]]=61 then
begin
meli2:=0;
melj2:=0;
end;
if k[soli1[l],solj1[l]]=62 then
begin
minei2:=0;
minej2:=0;                                                           /////
end;
if k[soli1[l],solj1[l]]=63 then
begin
kazi2:=0;
kazj2:=0;
end;
k[soli1[l],solj1[l]]:=0
end;
end;

end
else



    dri:=0;
    drj:=0;
For q:=1 to 80 do
    begin
    If dri=0 then
    begin

    For r:=soli1[l]-q to soli1[l]+q do
    begin

    If (r>0) and (r<=40) and (solj1[l]+q>0) and (solj1[l]+q<=80) then
    begin
    If (k[r,solj1[l]+q]>=60) and (k[r,solj1[l]+q]<=69) then
    begin
    dri:=r;
    drj:=solj1[l]+q;
    end;
    end;

    If (r>0) and (r<=40) and (solj1[l]-q>0) and (solj1[l]-q<=80) then
    begin
    If (k[r,solj1[l]-q]>=60) and (k[r,solj1[l]-q]<=69) then
    begin
    dri:=r;
    drj:=solj1[l]-q;
    end;
    end;

    end;

    For r:=solj1[l]-q to solj1[l]+q do
    begin

    If (r>0) and (r<=80) and (soli1[l]+q>0) and (soli1[l]+q<=40) then
    begin
    If (k[soli1[l]+q,r]>=60) and (k[soli1[l]+q,r]<=69) then
    begin
    drj:=r;
    dri:=soli1[l]+q;
    end;
    end;

    If (r>0) and (r<=80) and (soli1[l]-q>0) and (soli1[l]-q<=40) then
    begin
    If (k[soli1[l]-q,r]>=60) and (k[soli1[l]-q,r]<=69) then
    begin
    drj:=r;
    dri:=soli1[l]-q;
    end;
    end;

    end;


    end;
    end;
    If dri-soli1[l]>0 then
    soli1[l]:=soli1[l]+1;
    If dri-soli1[l]<0 then
    soli1[l]:=soli1[l]-1;

    if drj-solj1[l]>0 then
    solj1[l]:=solj1[l]+1;
    If drj-solj1[l]<0 then
    solj1[l]:=solj1[l]-1;
    dri:=0;
    drj:=0;
end;
end;
end;



If (kri2[l]>0) then
begin
     pr:=0;
     For m:=1 to 30 do
     begin
     If soli1[l]>0 then
     If (abs(soli1[m]-kri2[l])<=3) and (abs(solj1[m]-krj2[l])<=3) then
     begin
     pr:=l;
     end;
     end;
If pr>0 then
begin
//atack
o:=0;
For m:=30 downto 1 do
begin
If solz1[m]>0 then
If (abs(soli1[m]-kri2[l])<=3) and (abs(solj1[m]-krj2[l])<=3) then
begin
o:=m;
end;
end;
If o>0 then
begin
If (abs(soli1[o]-kri2[l])<=1) and (abs(solj1[o]-krj2[l])<=1) then
begin
solz1[o]:=solz1[o]-1+random(1+up1[5])-up2[11];
end;
If (abs(soli1[o]-kri2[l])>1) or (abs(solj1[o]-krj2[l])>1) then
begin

If soli1[o]-kri2[l]>0 then
kri2[l]:=kri2[l]+1;
If soli1[o]-kri2[l]<0 then
kri2[l]:=kri2[l]-1;

If solj1[o]-krj2[l]>0 then
krj2[l]:=krj2[l]+1;
If solj1[o]-krj2[l]<0 then
krj2[l]:=krj2[l]-1;

end;
end;
//atack
end
else
begin
If krgr2[l]>0 then
begin
//gruz
If (krgr2[l]>=10) and (krgr2[l]<=19) then     //dr
begin
If (kri2[l]=gci2) and (krj2[l]=gcj2) then
begin
resdr2:=resdr2+krgr2[l]-9;
krgr2[l]:=0;
end
else
                                          begin
                                          If gci2-kri2[l]>0 then
                                          kri2[l]:=kri2[l]+1;
                                          If gci2-kri2[l]<0 then
                                          kri2[l]:=kri2[l]-1;

                                          if gcj2-krj2[l]>0 then
                                          krj2[l]:=krj2[l]+1;
                                          If gcj2-krj2[l]<0 then
                                          krj2[l]:=krj2[l]-1;
                                          end;
end;

If (krgr2[l]>=30) and (krgr2[l]<=39) then     //jz
begin
If (kri2[l]=gci2) and (krj2[l]=gcj2) then
begin
resj2:=resj2+krgr2[l]-29;
krgr2[l]:=0;
end
else
                                          begin
                                          If gci2-kri2[l]>0 then
                                          kri2[l]:=kri2[l]+1;
                                          If gci2-kri2[l]<0 then
                                          kri2[l]:=kri2[l]-1;

                                          if gcj2-krj2[l]>0 then
                                          krj2[l]:=krj2[l]+1;
                                          If gcj2-krj2[l]<0 then
                                          krj2[l]:=krj2[l]-1;
                                          end;
end;

If (krgr2[l]>=40) and (krgr2[l]<=49) then     //pc
begin
If (kri2[l]=meli2) and (krj2[l]=melj2) then
begin
respc2:=respc2+krgr2[l]-39;
krgr2[l]:=0;
end
else
                                          begin
                                          If meli2-kri2[l]>0 then
                                          kri2[l]:=kri2[l]+1;
                                          If meli2-kri2[l]<0 then
                                          kri2[l]:=kri2[l]-1;

                                          if melj2-krj2[l]>0 then
                                          krj2[l]:=krj2[l]+1;
                                          If melj2-krj2[l]<0 then
                                          krj2[l]:=krj2[l]-1;
                                          end;
end;
//gruz
end
else
    begin
    dri:=0;
    drj:=0;
    //delo


    If krd2[l]=1 then
    begin
    If (k[kri2[l],krj2[l]]>=10) and (k[kri2[l],krj2[l]]<=19) then
    begin
    If (k[kri2[l],krj2[l]]>=11) and (k[kri2[l],krj2[l]]<=19) then
    begin
    k[kri2[l],krj2[l]]:=k[kri2[l],krj2[l]]-1;
    krgr2[l]:=10+up2[1]+up2[16];
    end;
    If k[kri2[l],krj2[l]]=10 then
    begin
    k[kri2[l],krj2[l]]:=0;
    krgr2[l]:=10+up2[1]+up2[16];
    end;
    end
    else
    begin
    dri:=0;
    drj:=0;

    For q:=1 to 80 do
    begin
    If dri=0 then
    begin

    For r:=kri2[l]-q to kri2[l]+q do
    begin

    If (r>0) and (r<=40) and (krj2[l]+q>0) and (krj2[l]+q<=80) then
    begin
    If (k[r,krj2[l]+q]>=10) and (k[r,krj2[l]+q]<=19) then
    begin
    dri:=r;
    drj:=krj2[l]+q;
    end;
    end;

    If (r>0) and (r<=40) and (krj2[l]-q>0) and (krj2[l]-q<=80) then
    begin
    If (k[r,krj2[l]-q]>=10) and (k[r,krj2[l]-q]<=19) then
    begin
    dri:=r;
    drj:=krj2[l]-q;
    end;
    end;

    end;

    For r:=krj2[l]-q to krj2[l]+q do
    begin

    If (r>0) and (r<=80) and (kri2[l]+q>0) and (kri2[l]+q<=40) then
    begin
    If (k[kri2[l]+q,r]>=10) and (k[kri2[l]+q,r]<=19) then
    begin
    drj:=r;
    dri:=kri2[l]+q;
    end;
    end;

    If (r>0) and (r<=80) and (kri2[l]-q>0) and (kri2[l]-q<=40) then
    begin
    If (k[kri2[l]-q,r]>=10) and (k[kri2[l]-q,r]<=19) then
    begin
    drj:=r;
    dri:=kri2[l]-q;
    end;
    end;

    end;


    end;
    end;
    If (dri>0) and (dri<=40) and (drj>0) and (drj<=80) then
    begin

    If dri-kri2[l]>0 then
    kri2[l]:=kri2[l]+1;
    If dri-kri2[l]<0 then
    kri2[l]:=kri2[l]-1;

    if drj-krj2[l]>0 then
    krj2[l]:=krj2[l]+1;
    If drj-krj2[l]<0 then
    krj2[l]:=krj2[l]-1;


    end;
    end;
    end;

    If krd2[l]=3 then
    begin
    //shaxterstvo
    If (k[kri2[l],krj2[l]]=62) then
    begin
    If random(20 div (1+up2[3]))=0 then
    begin
    If random(10000)=1233 then
    begin
    k[minei2,minej2]:=0;
    minei2:=0;
    minej2:=0;
    end;
    krgr2[l]:=30+up2[18];
    end;
    end
    else
    begin


    If minei2-kri2[l]>0 then
    kri2[l]:=kri2[l]+1;
    If minei2-kri2[l]<0 then
    kri2[l]:=kri2[l]-1;

    if minej2-krj2[l]>0 then
    krj2[l]:=krj2[l]+1;
    If minej2-krj2[l]<0 then
    krj2[l]:=krj2[l]-1;


    end;
    end;

    If krd2[l]=4 then
    begin
    //pshenica
        If k[kri2[l],krj2[l]]=49 then
    begin
    If random(10 div (1+up2[2]))=0 then
    begin
    If random(50*(1+3*up2[19]))=0 then
    k[kri2[l],krj2[l]]:=0;
    krgr2[l]:=40+up2[17];
    end;
    end
    else
    begin
    dri:=0;
    drj:=0;

    For q:=1 to 30 do
    begin
    If dri=0 then
    begin

    For r:=kri2[l]-q to kri2[l]+q do
    begin

    If (r>0) and (r<=40) and (krj2[l]+q>0) and (krj2[l]+q<=80) then
    begin
    If k[r,krj2[l]+q]=49 then
    begin
    dri:=r;
    drj:=krj2[l]+q;
    end;
    end;

    If (r>0) and (r<=40) and (krj2[l]-q>0) and (krj2[l]-q<=80) then
    begin
    If k[r,krj2[l]-q]=49 then
    begin
    dri:=r;
    drj:=krj2[l]-q;
    end;
    end;

    end;

    For r:=krj2[l]-q to krj2[l]+q do
    begin

    If (r>0) and (r<=80) and (kri2[l]+q>0) and (kri2[l]+q<=40) then
    begin
    If k[kri2[l]+q,r]=49 then
    begin
    drj:=r;
    dri:=kri2[l]+q;
    end;
    end;

    If (r>0) and (r<=80) and (kri2[l]-q>0) and (kri2[l]-q<=40) then
    begin
    If k[kri2[l]-q,r]=49 then
    begin
    drj:=r;
    dri:=kri2[l]-q;
    end;
    end;

    end;


    end;
    end;
    If (dri>0) and (dri<=40) and (drj>0) and (drj<=80) then
    begin

    If dri-kri2[l]>0 then
    kri2[l]:=kri2[l]+1;
    If dri-kri2[l]<0 then
    kri2[l]:=kri2[l]-1;

    if drj-krj2[l]>0 then
    krj2[l]:=krj2[l]+1;
    If drj-krj2[l]<0 then
    krj2[l]:=krj2[l]-1;


    end;
    end;
    end;


    //delo
    end;
end;
end;




If (soli2[l]>0) then
begin     //1
pr:=0;
     For m:=1 to 30 do
     begin
     If soli1[m]>0 then
     If ((abs(soli1[m]-soli2[l])<=10) and (abs(solj1[m]-solj2[l])<=10)) or ((abs(kri1[m]-soli2[l])<=5) and (abs(krj1[m]-solj2[l])<=5)) then
     begin
     pr:=l;
     end;
     end;
If pr>0 then
begin        //2
//atack
o:=0;
p:=0;
For m:=30 downto 1 do
begin
If krz1[m]>0 then
If (abs(kri1[m]-soli2[l])<=5) and (abs(krj1[m]-solj2[l])<=5) then
begin
o:=m;
p:=1;
end;
end;

For m:=30 downto 1 do
begin
If solz1[m]>0 then
If (abs(soli1[m]-soli2[l])<=10) and (abs(solj1[m]-solj2[l])<=10) then
begin
o:=m;
p:=2;
end;
end;

If o>0 then
begin

If p=2 then
begin
If (abs(soli1[o]-soli2[l])<=1) and (abs(solj1[o]-solj2[l])<=1) then
begin
solz1[o]:=solz1[o]-1-up2[4]*(1-up1[7])+random(1+up1[5])-up2[6]*(1-up1[8]);
end;
If (abs(soli1[o]-soli2[l])>1) or (abs(solj1[o]-solj2[l])>1) then
begin

If soli1[o]-soli2[l]>0 then
soli2[l]:=soli2[l]+1;
If soli1[o]-soli2[l]<0 then
soli2[l]:=soli2[l]-1;

If solj1[o]-solj2[l]>0 then
solj2[l]:=solj2[l]+1;
If solj1[o]-solj2[l]<0 then
solj2[l]:=solj2[l]-1;
end;
end;

If p=1 then
begin
If (abs(kri1[o]-soli2[l])<=1) and (abs(krj1[o]-solj2[l])<=1) then
begin
krz1[o]:=krz1[o]-1-up2[4]-up2[6];
end;
If (abs(kri1[o]-soli2[l])>1) or (abs(krj1[o]-solj2[l])>1) then
begin

If kri1[o]-soli2[l]>0 then
soli2[l]:=soli2[l]+1;
If kri1[o]-soli2[l]<0 then
soli2[l]:=soli2[l]-1;

If krj1[o]-solj2[l]>0 then
solj2[l]:=solj2[l]+1;
If krj1[o]-solj2[l]<0 then
solj2[l]:=solj2[l]-1;
end;
end;

end;
//atack
end
else
begin          //3
//delo

If (sold2[l]=1) or (sold2[l]=2) then
begin
dri:=0;
drj:=0;
dri:=gci2+(l mod 4+2)*(-2*(l mod 2)+1);
drj:=gcj2+(l mod 5+2)*((l+1) mod 3);
If dri<=0 then
dri:=0-dri+1;
If dri>=40 then
dri:=40+40-dri-1;
If drj<=0 then
drj:=0-drj+1;
If drj>=80 then
drj:=80+80-drj-1;

If (soli2[l]<>gci2) or (solj2[l]<>gcj2) then
begin
If dri-soli2[l]>0 then
    soli2[l]:=soli2[l]+1;
    If dri-soli2[l]<0 then
    soli2[l]:=soli2[l]-1;

    if drj-solj2[l]>0 then
    solj2[l]:=solj2[l]+1;
    If drj-solj2[l]<0 then
    solj2[l]:=solj2[l]-1;
    dri:=0;
    drj:=0;
end;
end;



If sold2[l]=3 then
begin    //4

If (k[soli2[l],solj2[l]]>=50) and  (k[soli2[l],solj2[l]]<60) then
begin

If k[soli2[l],solj2[l]]=50 then
begin
If random(20*(1+up1[12]+up1[13]))=0 then
begin
k[soli2[l],solj2[l]]:=0;
gci1:=0;
gcj1:=0;
end
end
else
begin
If random(10*(1+up1[12]+up1[13]) div (1+3*up2[14]))=0 then
begin
if k[soli2[l],solj2[l]]=51 then
begin
meli1:=0;
melj1:=0;
end;
if k[soli2[l],solj2[l]]=52 then
begin
minei1:=0;
minej1:=0;                                                           /////
end;
if k[soli2[l],solj2[l]]=53 then
begin
kazi1:=0;
kazj1:=0;
end;
k[soli2[l],solj2[l]]:=0
end;
end;

end
else



    dri:=0;
    drj:=0;
For q:=1 to 80 do
    begin
    If dri=0 then
    begin

    For r:=soli2[l]-q to soli2[l]+q do
    begin

    If (r>0) and (r<=40) and (solj2[l]+q>0) and (solj2[l]+q<=80) then
    begin
    If (k[r,solj2[l]+q]>=50) and (k[r,solj2[l]+q]<=59) then
    begin
    dri:=r;
    drj:=solj2[l]+q;
    end;
    end;

    If (r>0) and (r<=40) and (solj2[l]-q>0) and (solj2[l]-q<=80) then
    begin
    If (k[r,solj2[l]-q]>=50) and (k[r,solj2[l]-q]<=59) then
    begin
    dri:=r;
    drj:=solj2[l]-q;
    end;
    end;

    end;

    For r:=solj2[l]-q to solj2[l]+q do
    begin

    If (r>0) and (r<=80) and (soli2[l]+q>0) and (soli2[l]+q<=40) then
    begin
    If (k[soli2[l]+q,r]>=50) and (k[soli2[l]+q,r]<=59) then
    begin
    drj:=r;
    dri:=soli2[l]+q;
    end;
    end;

    If (r>0) and (r<=80) and (soli2[l]-q>0) and (soli2[l]-q<=40) then
    begin
    If (k[soli2[l]-q,r]>=50) and (k[soli2[l]-q,r]<=59) then
    begin
    drj:=r;
    dri:=soli2[l]-q;
    end;
    end;

    end;


    end;
    end;
    If dri-soli2[l]>0 then
    soli2[l]:=soli2[l]+1;
    If dri-soli2[l]<0 then
    soli2[l]:=soli2[l]-1;

    if drj-solj2[l]>0 then
    solj2[l]:=solj2[l]+1;
    If drj-solj2[l]<0 then
    solj2[l]:=solj2[l]-1;
    dri:=0;
    drj:=0;
end;
end;
end;

//konec ludey
end;

//plan

//plan1111111111111111111111111111111

If plan1[100]=0 then
begin
For i:=1 to 500 do
begin
If random(2)=0 then
If random(4)=0 then
plan1[i]:=3
else
plan1[i]:=1
else
If random(4)=0 then
plan1[i]:=4
else
plan1[i]:=2;
end;
end;





i:=0;
//логика
If day mod 12=5 then
begin //////////////q22q3423542345

For l:=1 to 30 do
If krd1[l]=1 then
i:=i+1;

If i<5 then
begin
//drovoseki
i:=0;
for l:=30 downto 1 do
begin
If kri1[l]=0 then
i:=l;
end;

If (i>0) and (respc1>=30) and (resdr1>=2) and (resj1>=1) then
begin
respc1:=respc1-10;
resdr1:=resdr1-2;
resj1:=resj1-1;
ln(i);
kri1[i]:=gci1;
krj1[i]:=gcj1;
krd1[i]:=1;
krz1[i]:=5;
end;

If i<0 then
begin
krd1[1]:=1;
krd1[2]:=1;
krd1[3]:=1;
krd1[4]:=1;
krd1[5]:=1;
end

end
else
begin
If meli1=0 then
begin
//melnica

If resdr1>=75 then
begin
repeat
meli1:=gci1+(random(2)*2-1)*(random(4)+2);
melj1:=gcj1+(random(2)*2-1)*(random(4)+2);
until (meli1>2) and (meli1<=38) and (melj1>2) and (melj1<=78) and (k[meli1,melj1]=0);
resdr1:=resdr1-50;
k[meli1,melj1]:=51;
end;

If meli1>0 then
begin
if (k[meli1+1,melj1]>=0) and (k[meli1+1,melj1]<=19) then
k[meli1+1,melj1]:=40;

if (k[meli1+1,melj1+1]>=0) and (k[meli1+1,melj1+1]<=19) then
k[meli1+1,melj1+1]:=40;

if (k[meli1,melj1+1]>=0) and (k[meli1,melj1+1]<=19) then
k[meli1,melj1+1]:=40;

if (k[meli1-1,melj1+1]>=0) and (k[meli1-1,melj1+1]<=19) then
k[meli1-1,melj1+1]:=40;

if (k[meli1-1,melj1]>=0) and (k[meli1-1,melj1]<=19) then
k[meli1-1,melj1]:=40;

if (k[meli1-1,melj1-1]>=0) and (k[meli1-1,melj1-1]<=19) then
k[meli1-1,melj1-1]:=40;

if (k[meli1,melj1-1]>=0) and (k[meli1,melj1-1]<=19) then
k[meli1,melj1-1]:=40;

if (k[meli1+1,melj1-1]>=0) and (k[meli1+1,melj1-1]<=19) then
k[meli1+1,melj1-1]:=40;
end;
end
else
begin
i:=0;
For l:=1 to 30 do
If krd1[l]=4 then
i:=i+1;

If i<5 then
begin
//pahari
i:=0;
for l:=30 downto 1 do
begin
If kri1[l]=0 then
i:=l;
end;

If (i>0) and (respc1>=30) and (resdr1>=2) and (resj1>=1) then
begin
respc1:=respc1-10;
resdr1:=resdr1-2;
resj1:=resj1-1;
ln(i);
kri1[i]:=gci1;
krj1[i]:=gcj1;
krd1[i]:=4;
krz1[i]:=5;
end;

If i<0 then
begin
krd1[6]:=1;
krd1[7]:=1;
krd1[8]:=1;
krd1[9]:=1;
krd1[10]:=1;
end




end
else
begin
If minei1=0 then
begin
// шахта

If resdr1>=150 then
begin

For q:=1 to 80 do
    begin
    If dri=0 then
    begin

    For r:=meli1-q to meli1+q do
    begin

    If (r>0) and (r<=40) and (melj1+q>0) and (melj1+q<=80) then
    begin
    If (k[r,melj1+q]=39) then
    begin
    dri:=r;
    drj:=melj1+q;
    end;
    end;

    If (r>0) and (r<=40) and (melj1-q>0) and (melj1-q<=80) then
    begin
    If (k[r,melj1-q]=39) then
    begin
    dri:=r;
    drj:=melj1-q;
    end;
    end;

    end;

    For r:=melj1-q to melj1+q do
    begin

    If (r>0) and (r<=80) and (meli1+q>0) and (meli1+q<=40) then
    begin
    If (k[meli1+q,r]=39) then
    begin
    drj:=r;
    dri:=meli1+q;
    end;
    end;

    If (r>0) and (r<=80) and (meli1-q>0) and (meli1-q<=40) then
    begin
    If (k[meli1-q,r]=39) then
    begin
    drj:=r;
    dri:=meli1-q;
    end;
    end;

    end;


    end;
    end;
    
   If (dri>0) and (dri<=40) and (drj>0) and (drj<=80) then
   begin
   resdr1:=resdr1-100;
   minei1:=dri;
   minej1:=drj;
   k[dri,drj]:=52;
   dri:=0;
   drj:=0;
   end;
end;
end
else
begin
i:=0;
For l:=1 to 30 do
If krd1[l]=3 then
i:=i+1;

If i<5 then
begin
//shaxteri
i:=0;
for l:=30 downto 1 do
begin
If kri1[l]=0 then
i:=l;
end;

If (i>0) and (respc1>=30) and (resdr1>=2) and (resj1>=1) then
begin
respc1:=respc1-10;
resdr1:=resdr1-2;
resj1:=resj1-1;
ln(i*3);
kri1[i]:=gci1;
krj1[i]:=gcj1;
krd1[i]:=3;
krz1[i]:=5;
end;

If i<0 then
begin
krd1[11]:=1;
krd1[12]:=1;
krd1[13]:=1;
krd1[14]:=1;
krd1[15]:=1;
end

end
else
begin
If kazi1=0 then
begin
//kazarma
If (resdr1>=180) and (resj1>=120) then
begin
repeat
kazi1:=gci1+(random(2)*2-1)*(random(4)+2);
kazj1:=gcj1+(random(2)*2-1)*(random(4)+2);
until (kazi1>2) and (kazi1<=38) and (kazj1>2) and (kazj1<=78) and (k[kazi1,kazj1]=0);
resdr1:=resdr1-150;
resj1:=resj1-100;
k[kazi1,kazj1]:=53;
end;

end
else
begin
i:=0;
For l:=1 to 30 do
If sold1[l]=1 then
i:=i+1;

If i<5 then
begin
//soldati
i:=0;
for l:=30 downto 1 do
begin
If sold1[l]=0 then
i:=l;
end;

If (i>0) and (respc1>=50) and (resj1>=15) then
begin
respc1:=respc1-5;
resj1:=resj1-15;
soli1[i]:=kazi1;
solj1[i]:=kazj1;
sold1[i]:=1;
solz1[i]:=10+up1[15]*5;
end;

If i<0 then
begin
sold1[1]:=1;
sold1[2]:=1;
sold1[3]:=1;
sold1[4]:=1;
sold1[5]:=1;
{sold1[6]:=1;
sold1[7]:=1;
sold1[8]:=1;
sold1[9]:=1;
sold1[10]:=1; }
end





end
else
begin
// plani
i:=1;
While (plan1[i]=0) and (i<=500) do
begin
I:=i+1;
end;
If i>=500 then
i:=0;

If i>0 then
begin
ln(plan1[i]);
If plan1[i]=1 then
begin
If (resdr1>100) and (respc1>300) and (resj1>45) then
begin
plan1[i]:=0;
l:=0;
For j:=30 downto 1 do
If krd1[j]=0 then
l:=j;
If l>0 then
begin
respc1:=respc1-10;
resdr1:=resdr1-2;
resj1:=resj1-1;
ln(i*3);
kri1[l]:=gci1;
krj1[l]:=gcj1;
krd1[l]:=random(3);
If krd1[l]=2 then
krd1[l]:=4;
krz1[l]:=5;
end;

end;

end;

If plan1[i]=2 then
begin
j:=0;
for l:=30 downto 1 do
begin
If sold1[l]=0 then
j:=l;
end;
If (respc1>=50) and (resj1>=50) then
begin
plan1[i]:=0;
If (j>0) then
begin

respc1:=respc1-5;
resj1:=resj1-15;
soli1[j]:=kazi1;
solj1[j]:=kazj1;
sold1[j]:=2;
solz1[j]:=10;
end;
end;
end;

If plan1[i]=3 then
begin
If (respc1>500) and (resdr1>150) then
begin
m:=0;

plan1[i]:=0;
Repeat
l:=0;
m:=m+1;
dri:=gci1-8+random(16);
drj:=gcj1-8+random(16);
If (dri>1) and (dri<=39) and (drj>1) and (drj<=79) then
begin
if (k[dri,drj]>=0) and (k[dri,drj]<=19) then
l:=l+1;

if (k[dri+1,drj]>=0) and (k[dri+1,drj]<=19) then
l:=l+1;

if (k[dri+1,drj+1]>=0) and (k[dri+1,drj+1]<=19) then
l:=l+1;

if (k[dri,drj+1]>=0) and (k[dri,drj+1]<=19) then
l:=l+1;

if (k[dri-1,drj+1]>=0) and (k[dri-1,drj+1]<=19) then
l:=l+1;

if (k[dri-1,drj]>=0) and (k[dri-1,drj]<=19) then
l:=l+1;

if (k[dri-1,drj-1]>=0) and (k[dri-1,drj-1]<=19) then
l:=l+1;

if (k[dri,drj-1]>=0) and (k[dri,drj-1]<=19) then
l:=l+1;

if (k[dri+1,drj-1]>=0) and (k[dri+1,drj-1]<=19) then
l:=l+1;
end;
until (l=9) or  (m=100);                                                      ///



If l=9 then
begin
k[dri,drj]:=54;
respc1:=respc1-100;
resdr1:=resdr1-100;
end;

end;
end;

If plan1[i]=4 then
begin
s:=0;
For j:=1 to 100 do
begin
If j=100 then
plan1[i]:=0;
If updr[j]+uppc[j]+upj[j]>0 then
begin
If (resdr1>updr[j]+10) and (respc1>uppc[j]+150) and (resj1>upj[j]+10) and (s=0) then
begin
If (up1[j]=0) then
begin
s:=1;
resdr1:=resdr1-updr[j];
respc1:=respc1-uppc[j];
resj1:=resj1-upj[j];
up1[j]:=1;
end;
plan1[i]:=0;

end;
end;
end;
end;
//
end;


end;
end;
end;
end;
end;
end;
end;

end;////////////qq2q243q2442q



















j:=0;
 For i:=1 to 30 do
 If sold1[i]=2 then
 j:=j+1;
 
 If j>20 then
 For i:=1 to 30 do
 If sold1[i]=2 then
 begin
 sold1[i]:=3;
 end;




If day mod 10=0 then
for i:=1 to 30 do
begin

If soli1[i]>0 then
If random(17)=0 then
If respc1>0 then
respc1:=respc1-1
else
solz1[i]:=solz1[i]-1;

If kri1[i]>0 then
If random(17)=0 then
If respc1>0 then
respc1:=respc1-1
else
krz1[i]:=krz1[i]-1;

end;


for i:=1 to 30 do
begin

If solz1[i]<=0 then
begin
solz1[i]:=0;
soli1[i]:=0;
solj1[i]:=0;
sold1[i]:=0;
end;

If krz1[i]<=0 then
begin
krz1[i]:=0;
kri1[i]:=0;
krj1[i]:=0;
krd1[i]:=0;
krgr1[i]:=0;
end;


end;




If (day mod 1000 div (1+up1[10])=300) and (meli1>0) then
begin
if (k[meli1+1,melj1]>=0) and (k[meli1+1,melj1]<=19) then
k[meli1+1,melj1]:=40;

if (k[meli1+1,melj1+1]>=0) and (k[meli1+1,melj1+1]<=19) then
k[meli1+1,melj1+1]:=40;

if (k[meli1,melj1+1]>=0) and (k[meli1,melj1+1]<=19) then
k[meli1,melj1+1]:=40;

if (k[meli1-1,melj1+1]>=0) and (k[meli1-1,melj1+1]<=19) then
k[meli1-1,melj1+1]:=40;

if (k[meli1-1,melj1]>=0) and (k[meli1-1,melj1]<=19) then
k[meli1-1,melj1]:=40;

if (k[meli1-1,melj1-1]>=0) and (k[meli1-1,melj1-1]<=19) then
k[meli1-1,melj1-1]:=40;

if (k[meli1,melj1-1]>=0) and (k[meli1,melj1-1]<=19) then
k[meli1,melj1-1]:=40;

if (k[meli1+1,melj1-1]>=0) and (k[meli1+1,melj1-1]<=19) then
k[meli1+1,melj1-1]:=40;
end;
//plan1111111111111111111111111111111

 //plan1222222222222222222222222222222

If plan2[100]=0 then
begin
For i:=1 to 500 do
begin
If random(2)=0 then
If random(4)=0 then
plan2[i]:=3
else
plan2[i]:=1
else
If random(4)=0 then
plan2[i]:=4
else
plan2[i]:=2;
end;
end;





i:=0;
//логика

If day mod 12=0 then
begin //////////////q22q3423542345

For l:=1 to 30 do
If krd2[l]=1 then
i:=i+1;

If i<5 then
begin
//drovoseki
i:=0;
for l:=30 downto 1 do
begin
If kri2[l]=0 then
i:=l;
end;

If (i>0) and (respc2>=30) and (resdr2>=2) and (resj2>=1) then
begin
respc2:=respc2-10;
resdr2:=resdr2-2;
resj2:=resj2-1;
ln(i);
kri2[i]:=gci2;
krj2[i]:=gcj2;
krd2[i]:=1;
krz2[i]:=5;
end;

If i<0 then
begin
krd2[1]:=1;
krd2[2]:=1;
krd2[3]:=1;
krd2[4]:=1;
krd2[5]:=1;
end

end
else
begin
If meli2=0 then
begin
//melnica

If resdr2>=75 then
begin
repeat
meli2:=gci2+(random(2)*2-1)*(random(4)+2);
melj2:=gcj2+(random(2)*2-1)*(random(4)+2);
until (meli2>2) and (meli2<=38) and (melj2>2) and (melj2<=78) and (k[meli2,melj2]=0);
resdr2:=resdr2-50;
k[meli2,melj2]:=61;
end;

If meli2>0 then
begin
if (k[meli2+1,melj2]>=0) and (k[meli2+1,melj2]<=19) then
k[meli2+1,melj2]:=40;

if (k[meli2+1,melj2+1]>=0) and (k[meli2+1,melj2+1]<=19) then
k[meli2+1,melj2+1]:=40;

if (k[meli2,melj2+1]>=0) and (k[meli2,melj2+1]<=19) then
k[meli2,melj2+1]:=40;

if (k[meli2-1,melj2+1]>=0) and (k[meli2-1,melj2+1]<=19) then
k[meli2-1,melj2+1]:=40;

if (k[meli2-1,melj2]>=0) and (k[meli2-1,melj2]<=19) then
k[meli2-1,melj2]:=40;

if (k[meli2-1,melj2-1]>=0) and (k[meli2-1,melj2-1]<=19) then
k[meli2-1,melj2-1]:=40;

if (k[meli2,melj2-1]>=0) and (k[meli2,melj2-1]<=19) then
k[meli2,melj2-1]:=40;

if (k[meli2+1,melj2-1]>=0) and (k[meli2+1,melj2-1]<=19) then
k[meli2+1,melj2-1]:=40;
end;
end
else
begin
i:=0;
For l:=1 to 30 do
If krd2[l]=4 then
i:=i+1;

If i<5 then
begin
//pahari
i:=0;
for l:=30 downto 1 do
begin
If kri2[l]=0 then
i:=l;
end;

If (i>0) and (respc2>=30) and (resdr2>=2) and (resj2>=1) then
begin
respc2:=respc2-10;
resdr2:=resdr2-2;
resj2:=resj2-1;
ln(i);
kri2[i]:=gci2;
krj2[i]:=gcj2;
krd2[i]:=4;
krz2[i]:=5;
end;

If i<0 then
begin
krd2[6]:=1;
krd2[7]:=1;
krd2[8]:=1;
krd2[9]:=1;
krd2[10]:=1;
end




end
else
begin
If minei2=0 then
begin
// шахта

If resdr2>=150 then
begin

For q:=1 to 80 do
    begin
    If dri=0 then
    begin

    For r:=meli2-q to meli2+q do
    begin

    If (r>0) and (r<=40) and (melj2+q>0) and (melj2+q<=80) then
    begin
    If (k[r,melj2+q]=39) then
    begin
    dri:=r;
    drj:=melj2+q;
    end;
    end;

    If (r>0) and (r<=40) and (melj2-q>0) and (melj2-q<=80) then
    begin
    If (k[r,melj2-q]=39) then
    begin
    dri:=r;
    drj:=melj2-q;
    end;
    end;

    end;

    For r:=melj2-q to melj2+q do
    begin

    If (r>0) and (r<=80) and (meli2+q>0) and (meli2+q<=40) then
    begin
    If (k[meli2+q,r]=39) then
    begin
    drj:=r;
    dri:=meli2+q;
    end;
    end;

    If (r>0) and (r<=80) and (meli2-q>0) and (meli2-q<=40) then
    begin
    If (k[meli2-q,r]=39) then
    begin
    drj:=r;
    dri:=meli2-q;
    end;
    end;

    end;


    end;
    end;

   If (dri>0) and (dri<=40) and (drj>0) and (drj<=80) then
   begin
   resdr2:=resdr2-100;
   minei2:=dri;
   minej2:=drj;
   k[dri,drj]:=62;
   dri:=0;
   drj:=0;
   end;
end;
end
else
begin
i:=0;
For l:=1 to 30 do
If krd2[l]=3 then
i:=i+1;

If i<5 then
begin
//shaxteri
i:=0;
for l:=30 downto 1 do
begin
If kri2[l]=0 then
i:=l;
end;

If (i>0) and (respc2>=30) and (resdr2>=2) and (resj2>=1) then
begin
respc2:=respc2-10;
resdr2:=resdr2-2;
resj2:=resj2-1;
ln(i*3);
kri2[i]:=gci2;
krj2[i]:=gcj2;
krd2[i]:=3;
krz2[i]:=5;
end;

If i<0 then
begin
krd2[11]:=1;
krd2[12]:=1;
krd2[13]:=1;
krd2[14]:=1;
krd2[15]:=1;
end

end
else
begin
If kazi2=0 then
begin
//kazarma
If (resdr2>=180) and (resj2>=120) then
begin
repeat
kazi2:=gci2+(random(2)*2-1)*(random(4)+2);
kazj2:=gcj2+(random(2)*2-1)*(random(4)+2);
until (kazi2>2) and (kazi2<=38) and (kazj2>2) and (kazj2<=78) and (k[kazi2,kazj2]=0);
resdr2:=resdr2-150;
resj2:=resj2-100;
k[kazi2,kazj2]:=63;
end;

end
else
begin
i:=0;
For l:=1 to 30 do
If sold2[l]=1 then
i:=i+1;

If i<5 then
begin
//soldati
i:=0;
for l:=30 downto 1 do
begin
If sold2[l]=0 then
i:=l;
end;

If (i>0) and (respc2>=50) and (resj2>=15) then
begin
respc2:=respc2-5;
resj2:=resj2-15;
soli2[i]:=kazi2;
solj2[i]:=kazj2;
sold2[i]:=1;
solz2[i]:=10+up2[15]*5;
end;

If i<0 then
begin
sold2[1]:=1;
sold2[2]:=1;
sold2[3]:=1;
sold2[4]:=1;
sold2[5]:=1;
{sold2[6]:=1;
sold2[7]:=1;
sold2[8]:=1;
sold2[9]:=1;
sold2[10]:=1;  }
end





end
else
begin
// plani
i:=1;
While (plan2[i]=0) and (i<=500) do
begin
I:=i+1;
end;
If i>=500 then
i:=0;

If i>0 then
begin
ln(plan2[i]);
If plan2[i]=1 then
begin
If (resdr2>100) and (respc2>300) and (resj2>45) then
begin
plan2[i]:=0;
l:=0;
For j:=30 downto 1 do
If krd2[j]=0 then
l:=j;
If l>0 then
begin
respc2:=respc2-10;
resdr2:=resdr2-2;
resj2:=resj2-1;
ln(i*3);
kri2[l]:=gci2;
krj2[l]:=gcj2;
krd2[l]:=random(3);
If krd2[l]=2 then
krd2[l]:=4;
krz2[l]:=5;
end;

end;

end;

If plan2[i]=2 then
begin
j:=0;
for l:=30 downto 1 do
begin
If sold2[l]=0 then
j:=l;
end;
If (respc2>=50) and (resj2>=50) then
begin
plan2[i]:=0;
If (j>0) then
begin

respc2:=respc2-5;
resj2:=resj2-15;
soli2[j]:=kazi2;
solj2[j]:=kazj2;
sold2[j]:=2;
solz2[j]:=10;
end;
end;
end;

If plan2[i]=3 then
begin
If (respc2>500) and (resdr2>150) then
begin
m:=0;

plan2[i]:=0;
Repeat
l:=0;
m:=m+1;
dri:=gci2-8+random(16);
drj:=gcj2-8+random(16);
If (dri>1) and (dri<=39) and (drj>1) and (drj<=79) then
begin
if (k[dri,drj]>=0) and (k[dri,drj]<=19) then
l:=l+1;

if (k[dri+1,drj]>=0) and (k[dri+1,drj]<=19) then
l:=l+1;

if (k[dri+1,drj+1]>=0) and (k[dri+1,drj+1]<=19) then
l:=l+1;

if (k[dri,drj+1]>=0) and (k[dri,drj+1]<=19) then
l:=l+1;

if (k[dri-1,drj+1]>=0) and (k[dri-1,drj+1]<=19) then
l:=l+1;

if (k[dri-1,drj]>=0) and (k[dri-1,drj]<=19) then
l:=l+1;

if (k[dri-1,drj-1]>=0) and (k[dri-1,drj-1]<=19) then
l:=l+1;

if (k[dri,drj-1]>=0) and (k[dri,drj-1]<=19) then
l:=l+1;

if (k[dri+1,drj-1]>=0) and (k[dri+1,drj-1]<=19) then
l:=l+1;
end;
until (l=9) or  (m=100);                                                      ///



If l=9 then
begin
k[dri,drj]:=64;
respc2:=respc2-100;
resdr2:=resdr2-100;
end;

end;
end;

If plan2[i]=4 then
begin
s:=0;
For j:=1 to 100 do
begin
If j=100 then
plan2[i]:=0;
If updr[j]+uppc[j]+upj[j]>0 then
begin
If (resdr2>updr[j]+10) and (respc2>uppc[j]+150) and (resj2>upj[j]+10) and (s=0) then
begin
If (up2[j]=0) then
begin
s:=1;
resdr2:=resdr2-updr[j];
respc2:=respc2-uppc[j];
resj2:=resj2-upj[j];
up2[j]:=1;
end;
plan2[i]:=0;

end;
end;
end;
end;
//
end;


end;
end;
end;
end;
end;
end;
end;

end; ///////////////////q32qqq4qw34q4q4



















j:=0;
 For i:=1 to 30 do
 If sold2[i]=2 then
 j:=j+1;

 If j>20 then
 For i:=1 to 30 do
 If sold2[i]=2 then
 begin
 sold2[i]:=3;
 end;




If day mod 10=0 then
for i:=1 to 30 do
begin

If soli2[i]>0 then
If random(17)=0 then
If respc2>0 then
respc2:=respc2-1
else
solz2[i]:=solz2[i]-1;

If kri2[i]>0 then
If random(17)=0 then
If respc2>0 then
respc2:=respc2-1
else
krz2[i]:=krz2[i]-1;

end;


for i:=1 to 30 do
begin

If solz2[i]<=0 then
begin
solz2[i]:=0;
soli2[i]:=0;
solj2[i]:=0;
sold2[i]:=0;
end;

If krz2[i]<=0 then
begin
krz2[i]:=0;
kri2[i]:=0;
krj2[i]:=0;
krd2[i]:=0;
krgr2[i]:=0;
end;


end;




If (day mod 1000 div (1+up2[10])=300) and (meli2>0) then
begin
if (k[meli2+1,melj2]>=0) and (k[meli2+1,melj2]<=19) then
k[meli2+1,melj2]:=40;

if (k[meli2+1,melj2+1]>=0) and (k[meli2+1,melj2+1]<=19) then
k[meli2+1,melj2+1]:=40;

if (k[meli2,melj2+1]>=0) and (k[meli2,melj2+1]<=19) then
k[meli2,melj2+1]:=40;

if (k[meli2-1,melj2+1]>=0) and (k[meli2-1,melj2+1]<=19) then
k[meli2-1,melj2+1]:=40;

if (k[meli2-1,melj2]>=0) and (k[meli2-1,melj2]<=19) then
k[meli2-1,melj2]:=40;

if (k[meli2-1,melj2-1]>=0) and (k[meli2-1,melj2-1]<=19) then
k[meli2-1,melj2-1]:=40;

if (k[meli2,melj2-1]>=0) and (k[meli2,melj2-1]<=19) then
k[meli2,melj2-1]:=40;

if (k[meli2+1,melj2-1]>=0) and (k[meli2+1,melj2-1]<=19) then
k[meli2+1,melj2-1]:=40;
end;
//plan122222222222222222222222222222









//plans


//int end


















end;
//end



















setfontsize(25);
If gci2=0 then
begin
setfontcolor(clred);
textout(300,250,'Победа!');
end;
If gci1=0 then
begin
setfontcolor(rgb(0,0,250));
textout(300,250,'Победа!');
end;
redraw;



end.




























//krestyanin











//COLDAT





















