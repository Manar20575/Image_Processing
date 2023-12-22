function filteredimage = Convolution(image, filter)
[h, w] = size(image);
[fh, fw] = size(filter);
    
% Ensure the filter size is odd for simplicity
if mod(fh, 2) == 0 || mod(fw, 2) == 0
    error('Filter size must be odd for simplicity.');
end
    
% Convert image and filter to double
image = double(image);
filter = double(filter);
    
% Pad the image to handle border pixels
paddedImage = padarray(image, [(fh-1)/2, (fw-1)/2], 'replicate');
    
% Initialize the output image
filteredimage = zeros(h, w);
    
% Apply the filter
for i = 1:h
    for j = 1:w
        region = paddedImage(i:i+fh-1, j:j+fw-1);
        filteredimage(i, j) = sum(region(:) .* filter(:));
    end
end
end