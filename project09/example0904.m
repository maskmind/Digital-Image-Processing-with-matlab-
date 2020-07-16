f=imread('img\FigP0917(noisy_rectangle).tif');

se=strel('square',20');%圆盘型结构元素
fo=imopen(f,se);%开运算
imshow(fo);
fc=imclose(f,se);%闭运算
figure,imshow(fc);
foc=imclose(fo,se);%先开后闭运算
figure,imshow(foc);
fco=imopen(fc,se);%先闭后开运算
figure,imshow(fco);

