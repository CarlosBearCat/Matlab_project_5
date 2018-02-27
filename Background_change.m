%%Carlos Luevanos
%% 11 - 9 - 16
%% Project 5 - take home part 3.3

clear all, close all, clc; 

%% 1. Remove the background of a given picture while preserving the foreground image. Use the
% cat.jpg as an example to convert the light yellow background to a white background, so that
% it looks like the image on the top right of this document. (Extra: test your algorithm on the
% moo_goat.png file, if your original algorithm does not work, design a better one. )

%% algorithm for cat
cat = imread('cat.png'); %load image
figure, imshow(cat); 

[m, n, tmp] = size(cat); %extract the size of image
new_cat = cat; 
for i = 1:m %iterating through rows 
    for j = 1:n %iterating through columns
        
        r = cat(i, j, 1); %assign red values
        g = cat(i, j, 2); %assign green values
        b = cat(i, j, 3); %assign blue values    
        
        if ((r + b) > 254) % if the values of red and blue pixels are greater than almost white, then change them to white
            new_cat(i,j,1) = 255;
            new_cat(i,j,2) = 255; 
            new_cat(i,j,3) = 255; 
        end 
    end
end 

figure, imshow(new_cat);


%%try it out for moogoat 

moo_goat = imread('moo_goat.png');
figure, imshow(moo_goat);
[m,n,tmp] = size(moo_goat);
new_goat = moo_goat;


for i = 1:m
    for j = 1:n
        
        r = moo_goat(i, j, 1); 
        g = moo_goat(i, j, 2);
        b = moo_goat(i, j, 3);     
        
        if ((r + b) > 254)
            new_goat(i,j,1) = 255;
            new_goat(i,j,2) = 255; 
            new_goat(i,j,3) = 255;
        end
   
        end 
    end
  

figure, imshow(new_goat);



%% 2. Frequently, you want to include the university logo in your presentation. In case you want
% to use a specific colored background, you want the logo to have the same background
% to match the surroundings. Write a function to change a given image with white background
% to a new background color with RGB color provided by the user. You may use
% the Willamette_logo_255_255_255.png and change its background to light blue which has
% corresponding RGB color: [235, 241, 246].



willamette = imread('willamette_logo_255_255_255.png');
figure, imshow(willamette);


Background_changer('willamette_logo_255_255_255.png', 235, 241, 246);


