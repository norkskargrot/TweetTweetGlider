pico-8 cartridge // http://www.pico-8.com
version 38
__lua__
x=0y=0z=4a=.3g=0h=64v=.2r=rnd
q=127w=16p=poke2
p(24405,0)☉=camera
for i=0,256 do
circfill(r(q),r(q),r(w),r(2))mset(i%w,i/w,i)
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
☉(g*999-64,j*w-80)
l=w*cos(g*w)k=w*sin(g*w)
line(l,-k,-l,k,8)
?"⬆️\b◆",-3,-3,14
?"¥",-1-g*999,j*9
☉()if(z>w or v<0)run()
flip()goto _
