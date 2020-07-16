
A1=imread('img/Fig0905(a)(wirebond-mask).tif');
%strel函数的功能是运用各种形状和大小构造结构元素
se1=strel('disk',5);%这里是创建一个半径为5的平坦型圆盘结构元素
A2=imerode(A1,se1);
imshow(A2);

se2=strel('disk',10);
A3=imerode(A1,se2);
figure,imshow(A3);

se3=strel('disk',20);
A4=imerode(A1,se3);
figure,imshow(A4);

