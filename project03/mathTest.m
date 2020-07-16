f=imread("./img/Fig0304.tif");
% whos f;
% imshow(f,[ ]);
% k=imfinfo ("./img/Fig0304.tif");
% disp(k);
% f=[-0.5 0.5;0.75 1.5];
% disp(f);
% g=im2uint8(f);
% disp(g);
% A=[1 2 3;4 5 6;7 8 9];
% disp(sum(sum(A)));
fp = f(end:-1:1,:);
fc = f(100:300,100:300);
fs = f(1:2:end,1:2:end);
imshow(fp);
imshow(fc);
% imshow(fs);
% plot(f(300,:));

