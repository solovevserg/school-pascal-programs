const
file_name='E:\программы net\notes\We will rock you.txt';  //Полный путь к файлу с нотами (либо только название, если он лежит в одной папке с программой)
var
bpm,i,pn, sz1,sz2,start,cnt:word;
time:uint64;
beats:real;
txt:text;
s,n,f:string;
noteslit: array [1..7] of char;
notes:array [1..7,0..1] of word;
k:array [1..1000,1..5] of word; //доля(1-256)beat (denomenator)   нота(1-7,8=пропуск)note   октава(0-8)octave   диез(0-1)diese   числитель доли(1-256)beat numerator
v:array [1..1000,1..2] of word; //частота(37-32767)   длительность(1-беск)

function gettime(l:integer):integer;
begin
gettime:=max(round(time+l-milliseconds),1);
end;


function littoint(lit:char):integer;
var litera:char;
begin
litera:=uppercase(lit);
If litera='C' then
littoint:=1;
If litera='D' then
littoint:=2;
If litera='E' then
littoint:=3;
If litera='F' then
littoint:=4;
If litera='G' then
littoint:=5;
If litera='A' then
littoint:=6;
If litera='B' then
littoint:=7;
end;


function inttolit(int:word):char;
begin
inttolit:=noteslit[int];
end;


function getbeat(snd:string):word;
begin
If snd[1]<>'~' then
begin
If snd[length(snd)]='#' then
getbeat:=strtoint(leftstr(snd,length(snd)-3))
else
getbeat:=strtoint(leftstr(snd,length(snd)-2));
end
else
begin
If snd[length(snd)]='#' then
getbeat:=strtoint(copy(snd,pos('/',snd)+1,length(snd)-pos('/',snd)-3))
else
getbeat:=strtoint(copy(snd,pos('/',snd)+1,length(snd)-pos('/',snd)-2))
end
end;


function getnote(snd:string):char;
begin
If snd[length(snd)]='#' then
getnote:=snd[length(snd)-2]
else
getnote:=snd[length(snd)-1];
end;


function getoctave(snd:string):word;
begin
If snd[length(snd)]='#' then
getoctave:=strtoint(snd[length(snd)-1])
else
getoctave:=strtoint(snd[length(snd)]);
end;


function getdiese(snd:string):word;
begin
If snd[length(snd)]='#' then
getdiese:=1
else
getdiese:=0;
end;


function getbeatnum(snd:string):word; 
begin
If snd[1]='~' then
getbeatnum:=strtoint(copy(snd,2,pos('/',snd)-2))
else
getbeatnum:=1;
end;


begin
notes[1,0]:=261;
notes[1,1]:=277;
notes[2,0]:=294;
notes[2,1]:=311;
notes[3,0]:=330;
notes[4,0]:=349;
notes[4,1]:=370;
notes[5,0]:=392;
notes[5,1]:=415;
notes[6,0]:=440;
notes[6,1]:=466;
notes[7,0]:=494;

noteslit[1]:='C';
noteslit[2]:='D';
noteslit[3]:='E';
noteslit[4]:='F';
noteslit[5]:='G';
noteslit[6]:='A';
noteslit[7]:='B';


 assign(txt,file_name);
  reset(txt);
While not Eof(txt) do
begin
readln(txt,s);

If copy(s,1,3)='bpm' then
bpm:=strtoint(copy(s,5,length(s)-4));

If copy(s,1,2)='sz' then
begin
sz1:=strtoint(copy(s,4,1));
sz2:=strtoint(copy(s,6,1));
end;

If (copy(s,1,1)<>'s') and (copy(s,1,1)<>'b') and (copy(s,1,1)<>' ') and (copy(s,1,1)<>'#') then
begin

start:=1;
For i:=1 to length(s) do
begin
If copy(s,i,1)=' ' then
begin
f:=copy(s,i-start+1,start-1);
///

If rightstr(f,1)<>'-' then
begin
cnt+=1;
k[cnt,1]:=getbeat(f);
k[cnt,2]:=littoint(getnote(f));
k[cnt,3]:=getoctave(f);
k[cnt,4]:=getdiese(f);
k[cnt,5]:=getbeatnum(f);
end
else
begin
cnt+=1;
k[cnt,1]:=strtoint(leftstr(f,length(f)-1));
k[cnt,2]:=8;
k[cnt,5]:=1;
end;
///
start:=0;
end;
start+=1;
end;

end;
end;
 close(txt);
 
For i:=1 to cnt do
begin

If k[i,2]<>8 then
begin
v[i,1]:=round(notes[k[i,2],k[i,4]]*power(2,k[i,3]-4));
v[i,2]:=round((sz2/k[i,1]*k[i,5])*60/bpm*1000)
end
else
begin
v[i,1]:=1; //пауза
v[i,2]:=round((sz2/k[i,1])*60/bpm*1000)
end
end;
 
 
 For i:=1 to cnt do
 begin
 If v[i,1]>36 then
 begin
 write(inttolit(k[i,2]));
 If k[i,4]=1 then
 write('#');
 write(' ');

  system.Console.Beep(v[i,1],gettime(v[i,2]));
 end
 else
 sleep(v[i,2]);
 time+=v[i,2];
 beats+=k[i,5]/k[i,1];
  If abs(frac(round(beats)-beats))<0.00001 then 
  begin
  writeln('|');
  beats:=round(beats)
  end;
 end;
end.