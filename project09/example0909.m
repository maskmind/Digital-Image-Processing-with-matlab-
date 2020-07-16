
f=imread('img/Fig0941(a)(wood_dowels).tif');
se=strel('disk',5);

fo=imopen(f,se);
figure,imshow(fo);
foc=imclose(fo,se);
figure,imshow(foc);

fasf=f;
for k=2:5
    se=strel('disk',k);
    fasf=imclose(imopen(fasf,se),se);
end
figure,imshow(fasf);