

function T = ti( teta,d,a,alpha)                                         
%%  D_H Convention
T=[    cos(teta)    -cos(alpha)*sin(teta)     sin(alpha)*sin(teta)  a*cos(teta)
       sin(teta)    cos(alpha)*cos(teta)      -sin(alpha)*cos(teta) a*sin(teta)
       0            sin(alpha)                cos(alpha)            d
       0            0                         0                     1];
end
