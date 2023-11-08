clc; clear; close all;

img= imread("bao-meditation-in-garden-1.jpg");
a=size(img,1);
b=size(img,2);
imshow(img);

w=380;
h=300;

img2= zeros(w, h, 3);

wRatio= a/w;
hRatio= b/h;

for i=1:w
    for j=1:h
        img2(i,j,:)=img(ceil(i*wRatio), ceil(j*hRatio),:);
    end
end

img2=uint8(img2);
figure
imshow(img2);