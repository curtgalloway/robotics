% DO NOT CHANGE THE FOLLOWING LINES
V = [
    -1 1 1 -1
    -1 -1 1 1];
theta = 56;

% Modify the following lines to generate the plot

%%Negative theta even though they didn't say which way the square was to be rotated
R=rot2(-theta,'deg')

V2=R*V

plot(V2(:,1),V2(:,2),'b')
hold on
plot(V2(:,2),V2(:,3),'b')
plot(V2(:,3),V2(:,4),'b')
plot(V2(:,4),V2(:,1),'b')
