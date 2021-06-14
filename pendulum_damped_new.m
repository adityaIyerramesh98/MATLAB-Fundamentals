%Simulating a second order ODE in order to portray a pendulum's motion
%Author: Aditya Iyer Ramesh

clear all 
close all
clc

%Inputs
b = 0.05 %Damping co-efficient (No units, Dimensionless)
l = 1 %Length in meters
g = 9.8 %Acceleration due to Gravity in m/s^2
m = 1 %Mass in kg

%Initial conditions
theta_0 = [0 3]; % [Ang Disp, Ang Vel]

%Time required
time_span = linspace(0,20,500) %for producing 500 equal spacing arrays between 0 and 20 secs

%Solving the Second-Order ODE
[time,inference] = ode45(@(time,theta)pendulum_function_ODE(time,theta,b,l,g,m),time_span,theta_0);

%Plotting of Angular Disp and Angular Vel vs Time
plot(time,inference(:,1));
hold on
plot(time,inference(:,2));
xlabel('Time(s)');
ylabel('Plot')
title('Time Vs [Ang Disp, Ang Vel]')

%Plotting the results of Ang Disp vs Ang Vel
subplot(5,4,[13,14,17,18]);
plot(time,inference(:,1),'color','g')
hold on
plot(time,inference(:,2),'color','b')
hold off
subplot(5,4,[15,16,19,20]);
plot(inference(:,1),inference(:,2))
xlabel('position-radians');
ylabel('angular velocity');

%Motion of a Pendulum
ct = 1;         %Initial frame Counter Value
for i = 1:length(inference(:,1))
    %Initial Hanging position of Pendulum
    x0 = 0;
    y0 = 0;
    %Movement of Pendulum
    x1 = l*sin(inference(i,1));
    y1 =-l*cos(inference(i,1));
    subplot(5,4,[1 2 3 4 5 6 7 8 9 10 11 12]);
    plot([-1,1],[0,0],'LineWidth',4,'Color','k')
    grid on;
    hold on;
    
    %Plotting of bob and creating its centre
    r = 0.065; %Radius of bob assumed
    round_deg = linspace(0,2*pi,1000);
    xb = r*cos(round_deg);
    yb = r*sin(round_deg);
    plot(x1+xb, y1+yb,'LineWidth',2)
    grid on
    hold off
    plot(x1,y1,'-o','Markersize',20,'MarkerFacecolor','m')
    
    %Plotting the string of bob in the form of a rectangle
    r = 0.15; %Length of rectangle assumed
    rectangle('Position',[(x1-(r/2)),(y1-(r/2)),r,r],'Curvature',[1 1],'FaceColor','m','linewidth',3)
    hold on
    grid on
    axis equal
    
    %Plotting the bob and string in one animation
    grid on
    axis([-1.5 1.5 -1.5 0.5]);
    pause(0.0003); 
    hold off
    %Updating after every iteration
    M(ct) = getframe(gcf);
    ct = ct + 1;   
end

%Animation for the Pendulum's motion
%Storing of frame in H (inorder to create movie)
movie(M)
videofile = VideoWriter('Oscillatory Motion of a Pendulum.avi','Uncompressed AVI');
open(videofile);
%Video file is created
writeVideo(videofile,M);
close(videofile);

