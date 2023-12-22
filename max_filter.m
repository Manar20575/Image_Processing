function B = max_filter(img)
%add padding to the image 
img=padarray(img,[1,1]);
%take the size of the image
[h ,w ,l] =size(img);
%create an array with the size of the image
B = zeros(h ,w);
%check for the level of the image
if l==1
    %iterate through the pixels of the images
  for i = 2:h-1
    for j = 2:h-1
        temp = img(i-1:i+1,j-1:j+1);
        %take the max value and but it in B
        B(i,j) = max(temp(:));
    end
  end
  %transfer the B into integers
 B = uint8(B);
 imshow(B);
else
        %iterate through the pixels of the images

  for k=1:3
   for i = 2:h-1
    for j = 2:w-1
            temp = img(i-1:i+1,j-1:j+1,k);
               %take the max value and but it in B
            B(i,j,k) = max(temp(:));
     end
    end
  end
    %transfer the B into integers
B = uint8(B);
%show the image on the screen
end