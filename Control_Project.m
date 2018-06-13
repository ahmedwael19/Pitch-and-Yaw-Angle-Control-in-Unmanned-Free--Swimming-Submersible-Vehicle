s = tf('s');

%% Pitch Control System %% 

%% Vehicle Dynamics
G1_p = -0.125*(s+0.435)/(s^2 + 0.226*s+ 0.0169);
G2_p = (s+0.435)/(s+1.23);

%% Elevator Actuator 
H_p = 2/(s+2); 

%% Pitch Rate Sensor K*s
k1 = 5;

%% open loop system - Pitch Control -
Gopen_p = (0.25*(s+0.435))/((s+2)*(s+1.23)*(s^2+0.226*s + 0.0169));
step(Gopen_p)
title('Step Response -  Pitch control system - Open loop');

%% Closed loop system
Gclose_p = (0.25*k1*(s+0.435))/(s^4 + 3.456*s^3 + 3.457*s^2 + ( 0.719 +0.25*k1)*s + (0.0416 + 0.109*k1));
figure
step(Gclose_p) 
title('Step Response -  Pitch control system - Closed loop K = ');
figure
rlocus(Gclose_p)
title('Root Locus - Pitch Control System - Closed Loop K = 5');
figure
bode(Gclose_p)
title('Bode Plot - Pitch Control System - Closed Loop K = 5');


%% Heading Control System %%


%% Vehicle Dynamics
Gopen_h = 0.125*(s+0.435)/((s+2)*(s+1.29)*(s+0.193)*(s));

%% Rudder Actuator
H_h = 2/(s+2);

%% Open Loop system - Heading Control - 
figure
step(Gopen_h);
title('Step Response - Heading control system - Open Loop');

%% Closed Loop system - Heading Control - 
Gclosed_h = ( 0.25*k1* ( s+ 0.437)) / ( s^4 + 3.483*s^3 + 3.4649*s^2 + ( 0.60705 + 0.25*k1)*s + (0.10925*k1));
figure
step(Gclosed_h)
title('Step Response - Heading control system - Closed Loop with K = ');
figure
rlocus(Gclosed_h)
title('Root Locus - Heading Control System - Closed Loop K = 15');
figure
bode(Gclosed_h)
title('Bode Plot - Heading Control System - Closed Loop K = 15');

%% PI Controller - Pitch Control -
% Use PID tuner , select PI , and Export the system (PlantPI) , then uncomment the following two lines
% figure
% step (feedback(PlantPI*Gclose_p,1))
 
%% PD Controller - Pitch Control -
% Use PID tuner , select PD , and Export the system (PitchPD) , then uncomment the following two lines
%  figure
%  step (feedback(PitchPD*Gclose_p,1))

%% PID Controller - Pitch Control -
% Use PID tuner , select PID , and Export the system (PitchPID) , then uncomment the following two lines
%  figure
%  step (feedback(PitchPID*Gclose_p,1))

%% PI Controller - Heading Control -
% Use PID tuner , select PI , and Export the system (HeadingPI) , then uncomment the following two lines
% figure
% step (feedback(HeadingPI*Gclosed_h,1))

%% PD Controller - Heading Control -
% Use PID tuner , select PD , and Export the system (HeadingPI) , then uncomment the following two lines
% figure
% step (feedback(HeadingPD*Gclosed_h,1))

%% PID Controller - Heading Control -
% Use PID tuner , select PID , and Export the system (HeadingPID) , then uncomment the following two lines
% figure
% step (feedback(HeadingPID*Gclosed_h,1))


%% Sisotool is used to find bode plot and root locus, with different controllers tuning
% sisotool(Gclose_p)  % for Pitch
% sisotool(Gclosed_h) % for Heading