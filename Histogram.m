function [chart] = Histogram(img)
    [w, h, numChannels] = size(img);

    if numChannels > 1  % RGB image
        % Convert RGB to grayscale
        grayImg = rgb2gray(img);
        histo = zeros(256, 1);

        % Compute histogram for grayscale image
        for i = 1:w
            for j = 1:h
                pixelValue = grayImg(i, j);
                histo(pixelValue + 1) = histo(pixelValue + 1) + 1;
            end
        end

        bar(histo);
    else
        histo = zeros(256, 1);

        for i = 1:w
            for j = 1:h
                pixelValue = img(i, j);
                histo(pixelValue + 1) = histo(pixelValue + 1) + 1;
            end
        end

        bar(histo);
    end
end
