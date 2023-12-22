function [out_img] = log_transformation(img, c)
[H W I] = size(img);
out_img = double(zeros(H,W,I));
img = double(img);
if I > 1
    for i=1:H
        for j=1:W
            out_img(i, j,1) = c*log(img(i, j,1)+1); 
            out_img(i, j,2) = c*log(img(i, j,2)+1);
            out_img(i, j,3) = c*log(img(i, j,3)+1);
        end
    end
    out_img = uint8(out_img);
else
    for i=1:H
        for j=1:W
            out_img(i, j,1) = c*log(img(i, j,1)+1); 
        end
    end
    out_img = uint8(out_img);
end