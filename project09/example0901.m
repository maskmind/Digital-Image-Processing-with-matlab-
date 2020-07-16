A = imread('img/Fig0907(a)(text_gaps_1_and_2_pixels).tif');            		
B=[0 1 0; 1 1 1; 0 1 0];                   
A2=imdilate(A,B);              		
imshow(A2);    		
