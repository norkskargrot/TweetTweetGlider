pico-8 cartridge // http://www.pico-8.com
version 38
__lua__
x=0y=0z=4a=.3g=0h=64v=.2q=127w=16p=poke2
p(24405,0)☉=camera
for i=0,256 do
circfill(rnd(q),rnd(q),w,i%2)mset(i%w,i/w,i)
end
pal({2})spr(0,2,2,w,w)
p(24405,96)
p(24376,4112)
::_::
b=btn()
g+=v*((b&2)/2-(b&1))>>9
g*=.9
a+=g
h+=(b&8)/8-(b&4)/4
j=h/64-1
z+=v*sin(j/4)
v-=j/40
s=sin(a)c=cos(a)
x-=s*v
y-=c*v
h+=(b&w)/w-(b&32)/32
k=z
cls(12)
pal({7,6})
for i=0,q do
if(i==h)pal({9,3})k-=w
p=k/(h-i)*32
m=p*s
n=p*c
tline(0,i,q,i,x-n-m,y+m-n,n>>6,-m>>6)
end
l=g*999
☉(l-64,j*w-80)
line(w,l,-w,-l,8)
?"⬆️",-3,-3,14
?"¥",-1-l,j*9
☉()if(z>w)run()
flip()goto _
