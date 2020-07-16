f=zeros(101,101);
f(1,1)=1;f(101,1)=1;f(1,101)=1;
f(101,101)=1;f(51,51)=1;
H=hough(f);
imshow(H,[]);

[H,theta,rho]=hough(f);
figure,imshow(theta,rho,H,[],'notruesize');
axis on ,axis normal;
xlabel('theta'),ylabel('rho');