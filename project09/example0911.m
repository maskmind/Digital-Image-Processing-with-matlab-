f=imread('img/Fig0941(a)(wood_dowels).tif');
sumpixels=zeros(1,36);
for k=0:35
    se=strel('disk',k);
    fo=imopen(f,se);
    sumpixels(k+1)=sum(fo(:));
end
plot(0:35,sumpixels),xlabel('k'),ylabel('surface area')
figure,plot(-diff(sumpixels));
xlabel('k');
ylabel('sur');

