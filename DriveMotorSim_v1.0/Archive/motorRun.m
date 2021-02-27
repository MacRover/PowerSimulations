controlVolt = 5;
options = simset('SrcWorkspace','current');

simOut = sim('MotorTest',[],options);
rpm = simOut.get('yout').get('rpm').Values.Data;
current = simOut.get('yout').get('current').Values.Data;
voltage = simOut.get('yout').get('voltage').Values.Data;

plot(rpm,current)
