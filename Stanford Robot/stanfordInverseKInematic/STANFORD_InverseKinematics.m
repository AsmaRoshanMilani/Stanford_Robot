function [Theta1,Theta2,D3,Theta4,Theta5,Theta6] = STANFORD_InverseKinematics(Px,Py,Pz,R60,d2,d6)
%INVERSEKINEMATIC
oc=[Px;Py;Pz]-d6*R60(1:3,3);
xc=oc(1);
yc=oc(2);
zc=oc(3);
Theta1 = atan2(yc,xc)
s=zc-d2;
r=sqrt(xc^2+yc^2);
Theta3=0;
Theta2 = atan2(s,r)+pi/2
D3=sqrt((r^2)+(s^2))
Theta5=atan2(sqrt(1-(sin(Theta1)*R60(1,3)-cos(Theta1)*R60(2,3))^2),sin(Theta1)*R60(1,3)-cos(Theta1)*R60(2,3))
Theta4=atan2(-cos(Theta1)*sin(Theta2+Theta3)*R60(1,3)-sin(Theta1)*sin(Theta2+Theta3)*R60(2,3)+cos(Theta2+Theta3)*R60(3,3),cos(Theta1)*cos(Theta2+Theta3)*R60(1,3)+sin(Theta1)*cos(Theta2+Theta3)*R60(2,3)+sin(Theta2+Theta3)*R60(3,3))
Theta6=atan2(sin(Theta1)*R60(1,2)-cos(Theta1)*R60(2,2),-sin(Theta1)*R60(1,1)+cos(Theta1)*R60(2,1))

end