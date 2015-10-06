%% DO NOT EDIT THE FOLLOWING LINES
q = [30 -40 10];  % joint angles in degrees

%% YOUR ANSWER BELOW HERE

T=trot2(q(1),'deg')*transl2(9,0)*trot2(90,'deg')*transl2(3,0)*trot2(-90,'deg')*trot2(q(2),'deg')*transl2(7,0)*trot2(-90,'deg')*trot2(q(3),'deg')*transl2(3,0)*trot2(90,'deg')*transl2(5.1,0)

%%in centimeters

x = T(1,3)/100
y = T(2,3)/100

%%theta = tr2angvec(T,'deg')
%%The above returns a floating point flub. I'll just add the angles above: 
theta = q(1)+90-90+q(2)-90+q(3)+90
