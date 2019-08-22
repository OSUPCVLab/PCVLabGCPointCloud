%=========================================================================%
% PVC Lab. Ground Control Point Cloud
% Mohammed Aldosari & M. Taha Koroglu
% August 19,2015 
% PCV Lab. at The Ohio State University
%=========================================================================%
clear all;
close all;
clc;

load 'cartesian_coordinates.txt';
n = length(cartesian_coordinates);
x = cartesian_coordinates(:,1);
y = cartesian_coordinates(:,2);
z = cartesian_coordinates(:,3);


figure(1);
set(gcf, 'Position', get(0, 'Screensize'));
plot3(x,y,z,'r.');
axis equal;
grid on;
xlabel('\bf{X (m)}');
ylabel('\bf{Y (m)}');
zlabel('\bf{Z (m)}');
view(51,28);
figure(2);
set(gcf, 'Position', get(0, 'Screensize'));
plot3(x,y,z,'r.');
hold on;
for i=1:n
  text(x(i),y(i),z(i),num2str(i))
  hold on
end
hold off;
axis equal;
grid on;
xlabel('\bf{X (m)}');
ylabel('\bf{Y (m)}');
zlabel('\bf{Z (m)}');
view(51,28);