function [new_image] = Background_changer(image, x,y,z)
% changes the white background of an image to a color of their choosing
% via matrices of course ;) 

image = imread(image); %read in the image

[m,n,~] = size(image); %extract size of image
new_image = image;

for i = 1:m %iterate through rows of matrix
    for j = 1:n %iterate through columns of matrix
        
        r = image(i,j,1); %red pixel values
        g = image(i,j,2); %green pixel values 
        b = image(i,j,3); %blue pixel values
        
        if r == 255 %if values are white, then change them to input of user
            new_image(i,j,1) = x;
        end
        
        if g == 255 %if values are white, then change them to input of user
            new_image(i,j,2) = y;
        end 
        
        if b == 255 %if values are white, then change them to input of user
            new_image(i,j,3) = z;
        end
    end
end

figure
imshow(new_image); %show image
end 