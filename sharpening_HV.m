function [NI] = sharpening_HV(img,option)
[W H I] = size(img);
mask_horizontal = [0 1 0; 0 1 0; 0 -1 0];
mask_vertical=[0 0 0;1 1 -1;0 0 0];
if option==1
    if I > 1
        NI = zeros(W,H,I);
        NI(:,:,1) = filter2(mask_vertical , img(:,:,1));
        NI(:,:,2) = filter2(mask_vertical , img(:,:,2));
        NI(:,:,3) = filter2(mask_vertical , img(:,:,3));
        NI = uint8(NI);
    else
        NI = filter2(mask_vertical , img);
        NI = uint8(NI);
  end
else
  if I > 1
        NI = zeros(W,H,I);
        NI(:,:,1) = filter2(mask_horizontal , img(:,:,1));
        NI(:,:,2) = filter2(mask_horizontal , img(:,:,2));
        NI(:,:,3) = filter2(mask_horizontal , img(:,:,3));
        NI = uint8(NI);
    else
        NI = filter2(mask_horizontal , img);
        NI = uint8(NI);
end
end

