%% Lab5_test script

clear all, close all, clc; 

fname = 'mouse.png';
A = imread(fname);
figure, imshow(A);

B = rgb2gray(A);
imshow(B);
imwrite(B, 'mouse_bw.png');

%% Test showNeg
B = ShowNeg(A);

figure
imshow(B);
imwrite(B, 'mouse_neg.png');

%% Test DisplayMosiac
B = DisplayMosaic(A, 3, 3);

figure
imshow(B);

imwrite(B, 'mouse_mosaic.png');

%% Test Rotate90 Left
% B = Rotate90L(A);

B = imrotate(A, 90);
figure
imshow(B);
imwrite(B, 'mouse_90L.png');


%% Test FlipLR
B = FlipLR(A);

figure
imshow(B);

imwrite(B, 'mouse_flipLR.png');
%% Test Rotate90 Right
B = Rotate90R(A);

figure
imshow(B);