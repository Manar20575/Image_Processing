function [transformed] = ift(img)
img = ft(img);
c = ifft2(img);
ca = abs(c);
clog = log(1+ca);
f = mat2gray(clog);
transformed = fftshift(f);
end