clear
load('.\Data\RoverVars.mat')

% Magic Formula Values
mf1 = [10 1.9 1 0.97];  % Car tires on dry tarmac
mf2 = [12 2.3 0.82 1];  % Car tires on wet tarmac
mf3 = [5 2 0.3 1];      % Car tires on snow
mf4 = [4 2 0.1 1];      % Car tires on ice

% Operating conditions
incline = 0;            % Terrain angle (degrees)
headWindSpeed = 0;      % Speed of wind opposing the rover (m/s)

% Rover properties
roverMass = 50;         % Total rover mass (kg)
roverFrontalArea = 0.2; % Rover front face surface area (m^2)
roverDragConst = 2.1;   % Drag coefficient

% Wheel properties
wheelRadius = 0.1;      % Wheel radius (m)
wheelMass = 0.7;        % Wheel mass (kg)
magicCoefficients = mf1;    % Tire-road interation constants (Magic formula)

% Drivetrain Properties
gbRatio = 100;          % Gearbox ratio
bevelRatio = 1;         % Bevel gear ratio
bevelEfficiency = 0.8;  % Bevel gear efficiency (meshing losses)

% Motor variables
currentMax = 53;        % Maximum current supplied to a single motor (A)
currentMin = 1.8;       % Minimum current to run a motor (A)
ratedVolt = 12;         % Rated voltage of motor (V)
freeSpeed = 13180;      % Motor speed under no load (rpm)
stallTorque = 0.43;     % Motor stall torque (Nm)
armInductance = 12e-10; % Armature inductance (H)
rotorInertia = 200;     % Moment of inertia for motor rotor (g/cm^2)

% PWM control variables
pwmVolt = 5;            % pwm signal reference (V)
pwmFreq = 4000;         % pwm frequenct (Hz)

% Step intput variables for StepInputSim
dci = 0;        % Initial duty cycle (at time = 0)
dcf = 0.2;      % Final duty cycle (at time = stepTime)
stepTime = 0;   % Time of step change (s)

save('.\Data\RoverVars.mat')