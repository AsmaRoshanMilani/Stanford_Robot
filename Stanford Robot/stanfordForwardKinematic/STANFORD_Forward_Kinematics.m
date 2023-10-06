%% Function of Forward Kinematics of Stanford Robot
function [X,Y,Z,RR] = STANFORD_Forward_Kinematics(theta1,theta2,theta4,theta5,theta6,d2,d3,d6)

T10 = ti(theta1,0,0,-(pi/2));
T21 = ti(theta2,d2,0,pi/2);
T32 = ti(0,d3,0,0);
T43 = ti(theta4,0,0,-(pi/2));
T54 = ti(theta5,0,0,pi/2);
T65 = ti(theta6,d6,0,0);
T60 = T10*T21*T32*T43*T54*T65;

R60 = T60(1:3,1:3); 
d60=T60(1:3,4);

P1 = [0 0 0]';
P0 = R60*P1 + d60;

X = P0(1)
Y = P0(2)
Z = P0(3)
RR = R60
end