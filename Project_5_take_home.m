%%Carlos Luevanos
%% 11 - 8 - 16
%%Project 5 - take home

clear all, close all, clc;

%%3.1 image manipulation

%%1. call ShowNeg function
% 
% A = imread('born_to_feel.jpg');
% B = ShowNeg(A);
% figure
% imshow(B);
% 
% %%test with conversion of rgb2gray 
% C = rgb2gray(A);
% C = ShowNeg(C);
% figure
% imshow(C);
% 
% %%2. Display Mosaic
% 
% D = DisplayMosaic(A,3,3);
% figure
% imshow(D);
% 
% %%3. Rotate90L
% 
% E = Rotate90L(A);
% figure
% imshow(E)
% 
% %%4. FlipLR
% F = FlipLR(A);
% figure
% imshow(F);
% 
% %%5. Rotate 90R
% G = Rotate90R(A); 
% figure
% imshow(G);


%%3.2: Edge detection with image processing toolbox 

%%resize crocus image

croc = imread('Crocus.jpg');

[row,col, tmp] = size(croc); %extract size

croc = croc(500: 1500, 500:1500, :); %define new size for image

figure
imshow(croc);

%convert to black and white

bw_croc = rgb2gray(croc); %rgb2gray function converts to black and white 
figure
imshow(bw_croc);

%%Apply edge detection algorithm from class

[m,n] = size(croc);

crocus = uint8(zeros(m,n));0
tau = 25; %define threshold

for i = 1:m
    for j = 1:n
        iMin = max(1, i - 1); %first row
        iMax = min(m, i + 1); %last row 
        jMin = max(1, j - 1); %first column
        jMax = min(n, j + 1); %last column
        
        Neighbors = croc(iMin: iMax, jMin: jMax);
        
        max_discrep = max(abs(Neighbors(:) - croc(i,j)));
        
        %if pixel maxium disrepency > tau, color to black
        if (max_discrep > tau) 
            crocus(i,j) = 255;
        end        
    end 
end 

figure
imshow(crocus);

%%use edge detection algorithms

BW0 = edge(bw_croc, 'sobel'); %repeat for prewitt, roberts, canny, log, zerocross
figure, imshow(BW0);
title('Sobel edge detection');

BW1 = edge(bw_croc, 'prewitt');
figure, imshow(BW1);
title('Prewitt edge detection');


BW2 = edge(bw_croc, 'roberts');
figure, imshow(BW2);
title('Roberts edge detection');


BW3 = edge(bw_croc, 'canny');
figure, imshow(BW3);
title('Canny edge detection');


BW4 = edge(bw_croc, 'log');
figure, imshow(BW4);
title('Log edge detection');

BW5 = edge(bw_croc, 'zerocross');
figure, imshow(BW5);
title('Zerocross edge detection');


%%perform the same steps for favorite image


Wojack = imread('born_to_feel.jpg');

[row1, col1, tmp2] = size(Wojack); %extract size 

Wojack = Wojack(200: 600, 200: 600, :); %resize image 

figure, imshow(Wojack);

bw_wojack = rgb2gray(Wojack); %make image black and white
figure, imshow(bw_wojack);

%%Apply edge detection algorithm on image

[m, n] = size(Wojack);
edge_wojack = uint8(zeros(m,n));
tau = 25; 


for i = 1: m
    for j = 1: n
        
        iMin = max(1, i - 1); %first row
        iMax = min(m, i + 1); %last row 
        jMin = max(1, j - 1); %first column
        jMax = min(n, j + 1); %last column
        
        Neighbors = Wojack(iMin: iMax, jMin: jMax);
        
        max_discrep = max(abs(Neighbors(:) - Wojack(i,j)));
        
         %if pixel maxium disrepency > tau, color to black
        if (max_discrep > tau) 
            edge_wojack(i,j) = 255;
        end        
    end
end

figure
imshow(edge_wojack);

%%use image processing toolbox on desired image
BW0 = edge(bw_wojack, 'sobel'); %repeat for prewitt, roberts, canny, log, zerocross
figure, imshow(BW0);
title('Sobel edge detection');

BW1 = edge(bw_wojack, 'prewitt');
figure, imshow(BW1);
title('Prewitt edge detection');


BW2 = edge(bw_wojack, 'roberts');
figure, imshow(BW2);
title('Roberts edge detection');


BW3 = edge(bw_wojack, 'canny');
figure, imshow(BW3);
title('Canny edge detection');


BW4 = edge(bw_wojack, 'log');
figure, imshow(BW4);
title('Log edge detection');

BW5 = edge(bw_wojack, 'zerocross');
figure, imshow(BW5);
title('Zerocross edge detection');
