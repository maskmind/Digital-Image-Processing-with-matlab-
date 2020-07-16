f=imread( 'img\Fig0316(4)(bottom_left).tif' );

imshow(f)
figure,imhist(f);
ylim('auto')

% 直方图均衡化
g=histeq(f,256);
figure,imshow(g);
figure,imhist(g)
ylim('auto')

hnorm=imhist(f)./numel(f);
cdf=cumsum(hnorm);
x=linspace(0,1,256);
plot(x,cdf);
axis([0 1 0 1]);
set(gca, 'xtick', 0:0.2:1)
set(gca, 'ytick', 0:0.2:1)
xlabel('input','fontsize',9);
ylabel('output','fontsize',9);
text(0.18,0.5,'function','fontsize',9);