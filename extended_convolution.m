
function [iOut] = extended_convolution(iSource, k)
% extended_convolution - returns resultant image of convolution of an 
% image(img) and kernel(k) input a grayscale image (2D matrix) and a 
% filtering kernel (2D matrix), and returns the convolved image result 
% as a greyscale image with the same size and datatype as the input image.
% Hint: use 'padarray' here

    iOut = iSource;
    kerRowMid = ceil(size(k,1)/2);
    kerColMid = ceil(size(k,2)/2);
    iSource = padarray(iSource, [kerRowMid - 1, kerColMid - 1], 'replicate', 'both');

    for imgRow = kerRowMid : size(iSource,1) - (kerRowMid - 1)
        for pixel = kerColMid : size(iSource,2) - (kerColMid - 1)

            accumulator = 0;

            for kerRow = 1 : size(k,1)
                for element = 1 : size(k,2)

                    multVal = k(kerRow, element) * iSource((kerRow - kerRowMid + imgRow), (element - kerColMid + pixel));
                    accumulator = accumulator + multVal;

                end
            end

            iOut((imgRow - kerRowMid + 1), (pixel - kerColMid + 1)) = accumulator;
        end
    end
    return 
end

