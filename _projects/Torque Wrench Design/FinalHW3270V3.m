clear; clc; close all;


%dimensions (in)
T = 600;          
L = 12;           
b = 0.8;          
h = 0.5;          
c_g = 1;  

%material propeorties (Ti-6Al-4V)
E      = 16273234.17;     
Su     = 142282.02;     
Sf = 58015.1;    
KIC    = 80.1E3;   

%crack data
a = 0.04;                 
Y = 1.12;                 

GF = 2.0;                 

%propoerties
I = b*h^3/12;             
c = h/2;                  

%stress/defleciton
P = T / L;                                
delta = P * L^3 / (3*E*I);                
M_max = T;                                
sigma_max = M_max * c / I;                


%safety factor
SF_strength = Su / sigma_max;

% crack growth (fracture)
sigma_allow_frac = KIC / (Y*sqrt(pi*a));  
SF_crack = sigma_allow_frac / sigma_max;

% fatigue
SF_fatigue = Sf / sigma_max;

%strain guage
M_gauge = P * (L - c_g);                  
sigma_gauge = M_gauge * c / I;            
eps_gauge = sigma_gauge / E;              

%convert to mV/V
output_mV_per_V = GF * eps_gauge / 2 * 1e3;


fprintf('Stress and deflection analysis\n\n');
fprintf('load point deflection = %.3f in\n', delta);
fprintf('max normal stress = %.2f ksi\n\n', sigma_max/1000);

fprintf('Safety factor results:\n');
fprintf('safety factor for strength = %.2f\n', SF_strength);
fprintf('safety factor for crack growth = %.2f\n', SF_crack);
fprintf('safety factor for fatigue = %.2f\n\n', SF_fatigue);

fprintf('Strain gauge results:\n');
fprintf('strain at gauge = %.1f microstrain\n', eps_gauge*1e6);
fprintf('output = %.2f mV/V at 600 in-lbf \n', output_mV_per_V);