syms x y z r theta phi A_x A_y A_z A_r A_theta A_phi ch vars vector div fdiv a b c
ch=input("enter 'c' for cartesian system or 'cl' for cylindrical system or 's' for spherical system:");
 
if ch=='c'
A_x=input('enter the vector component along x axis:');
A_y=input('enter the vector components along y axis:');
A_z=input('enter the vector components along z axis:');
vars=[x y z];
vector=[ A_x A_y A_z];
div=divergence(vector, vars)
 
a=input('enter values of x:');
b=input('enter values of y:');
c=input('enter values of z:');
double(subs(div,{x,y,z},{a,b,c}))
 
 
 
elseif ch=='cl'
A_r=input('enter the vector component along r axis:');
A_phi=input('enter the vector components along phi axis:');
A_z=input('enter the vector components along z axis:');
vars=[r phi z];
vector=[ r*A_r A_phi r*A_z];
div=divergence(vector, vars);
fdiv=(div/r)
 
a=input('enter values of r:');
b=input('enter values of phi(in radians):');
c=input('enter values of z:');
double(subs(fdiv,{r,phi,z},{a,b,c}))
 
 
elseif ch=='s'
A_r=input('enter the vector component along r axis:');
A_theta=input('enter the vector components along theta axis:');
A_phi=input('enter the vector components along phi axis:');
vars=[r theta phi];
vector=[ r^2*sin(theta)*A_r r*sin(theta)*A_theta r*A_phi];
div=divergence(vector, vars);
 fdiv=div/(r^2*sin(theta))
a=input('enter values of r:');
b=input('enter values of theta(in radians):');
c=input('enter values of phi(in radians):');
double(subs(fdiv,{r,theta,phi},{a,b,c}))
 
else 
fprintf("invalid choice")
end


