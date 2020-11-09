# Extended-Image-Convolution
Image convolution using kernels in MATLAB.

Run using the code:
---------------------------------------------

image = im2double(imread('cameraman.tif'));
kernelA =  ones(5) / 25;
extendedA = extended_convolution(image, kernelA);
figure('Name', 'Extended Convolution');
subplot(231); imshow(extendedA); title('Extended convolution');

---------------------------------------------

The kernelA variable can be altered to return different types of image convolutions,
example kernels that you can use (by changing kernelA to these values): 

hKernal = [ -1 -1 -1 ; 2 2 2 ; -1 -1 -1 ]; % horizontal
vKernal = [ -1 2 -1 ; -1 2 -1 ; -1 2 -1 ]; % vertical
dKernal = [ -1 -1 2 ; -1 2 -1 ; 2 -1 -1 ]; % any dialog image gradients
sKernal = [ 0 -1 0 ; -1 5 -1 ; 0 -1 0 ]; % sharpening
gKernal = (1/256)*[1 4 6 4 1; 4 16 24 16 4; 6 24 36 24 6; 4 16 24 16 4; 1 4 6 4 1]; % Gaussian
