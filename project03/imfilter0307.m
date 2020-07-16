f=imread( 'img\Fig0315.tif' );
imshow(f);
% ÏßÐÔ¿Õ¼äÂË²¨
w=ones(31);
gd=imfilter(f,w);
figure,imshow(gd,[]);
gr=imfilter(f,w,'replicate');
figure,imshow(gr,[]);
gs=imfilter(f,w,'symmetric');
figure,imshow(gs,[]);
gc=imfilter(f,w,'circular');
figure,imshow(gc,[]);
f8=im2uint8(f);
g8r=imfilter(f8,w,'replicate');
figure,imshow(g8r,[]);

% subplot(2,3,1)
% imshow(f)
% 
% subplot(2,3,2)
% imshow(gd,[])
% 
% subplot(2,3,3)
% imshow(gr,[])
% 
% subplot(2,3,4)
% imshow(gs,[])
% 
% subplot(2,3,5)
% imshow(gc,[])
% 
% subplot(2,3,6)
% imshow(g8r,[])