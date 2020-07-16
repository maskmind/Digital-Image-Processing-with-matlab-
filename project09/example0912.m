f=imread('img/Fig0944(a)(calculator).tif');
f_obr=imreconstruct(imerode(f,ones(1,71)),f);
f_o=imopen(f,ones(1,71));
f_thr=imsubtract(f,f_obr);
f_th=imsubtract(f,f_o);
g_obr=imreconstruct(imerode(f_thr,ones(1,11)),f_thr);
g_obrd=imdilate(g_obr,ones(1,21));
f2=imreconstruct(min(g_obrd,f_thr),f_thr);

imshow(f);
figure,imshow(f_obr);
figure,imshow(f_o);
figure,imshow(f_thr);
figure,imshow(f_th);
figure,imshow(g_obr);
figure,imshow(g_obrd);
figure,imshow(f2);
