function output = blur(img,w)

% Write a function called blur that blurs the input image. 
% The function is to be called like this:
% output = blur(img,w);
% where img, the input image is a two-dimensional matrix of grayscale
% pixel values between 0 and 255. Blurring is to be carried out by 
% averaging the pixel values in the vicinity of every pixel.
% Specifically, the output pixel value is the mean of the pixel in a 
% square submatrix of size 2w+1 where the given pixel sists in the center.
% For example, if w is 1, then we use a 3x3 matrix, that is, we average
% all the neighboring pixels of the given pixel and itself.
% Only use valid pixels when portions of the blurring matrix fall outside
% the image. 
% For example, the blurred value corresponding to w=1 at index (1,1) 
% would be the mean of elements (1,1),(1,2),(2,1),(2,2). Both input
% img and output output are of type uint8.
% 
% Code to call the function:
% 
% img = imread('vandy.png');
% output = blur(img,2);
% imshow(output);

[rows,cols] = size(img);
output = zeros(rows,cols);
for ii = 1:rows
    for jj = 1:cols
        
        start_rows = ii-w;
        start_cols = jj-w;
        end_rows = ii+w;
        end_cols = jj+w;
        
        if (start_rows) < 1
            start_rows = 1;
        elseif (end_rows) > rows
                end_rows = rows;
        end
        
        if (start_cols) < 1
            start_cols = 1;
        elseif (end_cols) > cols
            end_cols = cols;
        end
        
        aux = img(start_rows:end_rows , start_cols:end_cols);
        output(ii,jj) = mean(mean(aux));
                
    end
end

output = uint8(output);

end