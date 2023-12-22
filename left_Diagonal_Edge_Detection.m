function [edges] = left_Diagonal_Edge_Detection(img)
[W H I] = size(img);
mask = [0 -1 -2 ; 1 0 -1 ; 2 1 0];
if I > 1
    edges = zeros(W,H,I);
    edges(:,:,1) = filter2(mask , img(:,:,1));
    edges(:,:,2) = filter2(mask , img(:,:,2));
    edges(:,:,3) = filter2(mask , img(:,:,3));
    edges = uint8(edges);
else
    edges = filter2(mask , img);
    edges = uint8(edges);
end
end