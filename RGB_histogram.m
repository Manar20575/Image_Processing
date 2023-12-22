function [] = RGB_histogram(img)
% Red, Green, and Blue channels
histo_R = zeros(256, 1);
histo_G = zeros(256, 1);
histo_B = zeros(256, 1);

[H W L] = size(img);

for i = 1:H
    for j = 1:W
        %current pixel
        pixel = img(i, j, :);
        
        % each channel
        histo_R(pixel(1) + 1) = histo_R(pixel(1) + 1) + 1;
        histo_G(pixel(2) + 1) = histo_G(pixel(2) + 1) + 1;
        histo_B(pixel(3) + 1) = histo_B(pixel(3) + 1) + 1;
    end
end

% Plot the histograms
subplot(3, 1, 1);
bar(histo_R, 'r');
title('Red Channel');

subplot(3, 1, 2);
bar(histo_G, 'g');
title('Green Channel');

subplot(3, 1, 3);
bar(histo_B, 'b');
title('Blue Channel');
end
