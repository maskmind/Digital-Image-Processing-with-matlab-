f=imread('img/Fig0916(a)(region-filling-reflections).tif');                          %Read in image
[L,n]=bwlabel(f);
[r,c]=find(L==3);
rbar=mean(r);
cbar=mean(c);
imshow(f);

for k=1:n
    [r,c]=find(L==k);
    rbar=mean(r);
    cbar=mean(c);
    plot(cbar,rbar,'Marker','o','MarkerEdgeColor','k',...
        'MarkerFaceColor','k','MarkerSize','10');
    plot(cbar,rbar,'Marker','*','MarkerEdgeColor','w');
end
%Get labelled image and number of objects
% subplot(1,2,1), imagesc(bw); axis image; axis off; 		%Plot binary input image
% colorbar('North'); subplot(1,2,2), imagesc(L);          %Display labelled image
% axis image; axis off; colormap(jet); colorbar('North')
