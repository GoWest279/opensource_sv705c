clear
clc
width = 3856;
height = 2180;
p_cnt = width*height*3;
fid = fopen('SVB_image_0.raw', 'r');
A = fread(fid, p_cnt,"uint8");
fclose(fid);

%%
R = A(1:3:end);
R = reshape(R, width, height);
G = A(2:3:end);
G = reshape(G, width, height);
B = A(3:3:end);
B = reshape(B, width, height);

imshow(reshape(R, width, height))

%%
% B = reshape(A, width, height, 3);
% imshow(B)