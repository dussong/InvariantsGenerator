function invariants_check(x)
prim=zeros(6,1);
pv=zeros(3,1);

v=zeros(6,1);
prim[1]=x[1] + x[2] + x[3] + x[4] + x[5] + x[6]

prim[2]=x[1]^2 + x[2]^2 + x[3]^2 + x[4]^2 + x[5]^2 + x[6]^2

prim[3]=x[1]*x[2] + x[1]*x[3] + x[1]*x[5] + x[1]*x[6] + x[2]*x[3] + x[2]*x[4] + x[2]*x[6] + x[3]*x[4] + x[3]*x[5] + x[4]*x[5] + 
    x[4]*x[6] + x[5]*x[6]

prim[4]=x[1]^3 + x[2]^3 + x[3]^3 + x[4]^3 + x[5]^3 + x[6]^3

prim[5]=x[1]*x[2]*x[3] + x[1]*x[5]*x[6] + x[2]*x[4]*x[6] + x[3]*x[4]*x[5]

prim[6]=x[1]^4 + x[2]^4 + x[3]^4 + x[4]^4 + x[5]^4 + x[6]^4

pv[1]=x[1]^2*x[2] + x[1]^2*x[3] + x[1]^2*x[5] + x[1]^2*x[6] + x[1]*x[2]^2 + x[1]*x[3]^2 + x[1]*x[5]^2 + x[1]*x[6]^2 + 
    x[2]^2*x[3] + x[2]^2*x[4] + x[2]^2*x[6] + x[2]*x[3]^2 + x[2]*x[4]^2 + x[2]*x[6]^2 + x[3]^2*x[4] + 
    x[3]^2*x[5] + x[3]*x[4]^2 + x[3]*x[5]^2 + x[4]^2*x[5] + x[4]^2*x[6] + x[4]*x[5]^2 + x[4]*x[6]^2 + 
    x[5]^2*x[6] + x[5]*x[6]^2

pv[2]=x[1]^2*x[2]*x[4] + x[1]^2*x[3]*x[4] + x[1]^2*x[4]*x[5] + x[1]^2*x[4]*x[6] + x[1]*x[2]^2*x[5] + x[1]*x[2]*x[4]^2 + 
    x[1]*x[2]*x[5]^2 + x[1]*x[3]^2*x[6] + x[1]*x[3]*x[4]^2 + x[1]*x[3]*x[6]^2 + x[1]*x[4]^2*x[5] + x[1]*x[4]^2*x[6]  + x[2]^2*x[3]*x[5] + x[2]^2*x[4]*x[5] + x[2]^2*x[5]*x[6] + x[2]*x[3]^2*x[6] + x[2]*x[3]*x[5]^2 + 
    x[2]*x[3]*x[6]^2 + x[2]*x[4]*x[5]^2 + x[2]*x[5]^2*x[6] + x[3]^2*x[4]*x[6] + x[3]^2*x[5]*x[6] + x[3]*x[4]*x[6]^2  + x[3]*x[5]*x[6]^2

pv[3]=x[1]^2*x[2]*x[4]^2 + x[1]^2*x[3]*x[4]^2 + x[1]^2*x[4]^2*x[5] + x[1]^2*x[4]^2*x[6] + x[1]*x[2]^2*x[5]^2 + 
    x[1]*x[3]^2*x[6]^2 + x[2]^2*x[3]*x[5]^2 + x[2]^2*x[4]*x[5]^2 + x[2]^2*x[5]^2*x[6] + x[2]*x[3]^2*x[6]^2 + 
    x[3]^2*x[4]*x[6]^2 + x[3]^2*x[5]*x[6]^2

v[1] = 1
v[2] = pv[1]
v[3] = pv[2]
v[4] = pv[3]
v[5] = pv[1]^2
v[6] = pv[2]*pv[3]
return prim, v, pv

end
