% P1
img1 = [ 1, 5, 3, 7; ...
       4, 7, 6, 10; ...
       2, 4, 3, 2; ...
       5, 2, 8, 3 ];
filter1 = (1/9) * ones(3);
conImg1 = conv2(img1, filter1, 'valid');
figure('Name', 'Problem 1');
subplot(1, 2, 1);
imshow(img1, []);
title('Original');
subplot(1, 2, 2);
imshow(conImg1, []);
title('Filtered');

% P2
% Images goes from a 4x4 matrix to a 2x2 matrix essentially averaging
% boarding pixels while creating a compressed image


% P3
img3 = [ 5, 4, 4, 5; ...
        1, 2, 1, 2; ...
        3, 8, 9, 3; ...
        1, 3, 3, 1 ];
filter3 = -1 * ones(3);
filter3(2, 2) = 8;
conImg3 = conv2(img3, filter3, 'valid');
figure('Name', 'Problem 3');
subplot(1, 2, 1);
imshow(img3, []);
title('Original');
subplot(1, 2, 2);
imshow(conImg3, []);
title('Filtered');

% P4
% Images goes from a 4x4 matrix to a 2x2 matrix essentially averaging
% boarding pixels with a strong bias toward the central pixel to create a 
% compressed image

% P5
load('lab3.mat');
img = imageOfInterest;
figure('Name', 'Problem 5');
imshow(img);

% P6
conImg6 = conv2(img, filter1, 'valid');
figure('Name', 'Problem 6');
subplot(1, 2, 1);
imshow(img, []);
title('Original');
subplot(1, 2, 2);
imshow(conImg6, []);
title('Filtered');

% P7
conImg7 = conv2(img, filter3, 'valid');
figure('Name', 'Problem 7');
subplot(1, 2, 1);
imshow(img, []);
title('Original');
subplot(1, 2, 2);
imshow(conImg7, []);
title('Filtered');

% P8
filter8 = [ 1,  4,  6,  4, 1; ...
            4, 16, 24, 16, 4; ...
            6, 24, 36, 24, 6; ...
            4, 16, 24, 16, 4; ...
            1,  4,  6,  4, 1 ];
filter8 = (1/256) * filter8;
conImg8 = conv2(img, filter8, 'valid');

figure('Name', 'Problem 8');
subplot(1, 3, 1);
imshow(img, []);
title('Original');
subplot(1, 3, 2);
imshow(conImg6, []);
title('P6: Filtered');
subplot(1, 3, 3);
imshow(conImg8, []);
title("P8: Filtered");

% P9
filter9 = [ 1,  4,   6,  4, 1; ...
            4, 16,  24, 16, 4; ...
            6, 24, -476, 24, 6; ...
            4, 16,  24, 16, 4; ...
            1,  4,   6,  4, 1 ];
filter9 = (-1/256) * filter9;
conImg9 = conv2(img, filter9, 'valid');
figure('Name', 'Problem 9');
subplot(1, 2, 1);
imshow(img, []);
title('Original');
subplot(1, 2, 2);
imshow(conImg9, []);
title('Filtered');


