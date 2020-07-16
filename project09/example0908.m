
f=imread('img/Fig0929(a)(text_image).tif');
fe=imerode(f,ones(51,1));
imshow(fe);
fo=imopen(f,ones(51,1));
figure,imshow(fo);
fobr=imreconstruct(fe,f);
figure,imshow(fobr);

