function [input, target] = read_images(local, geometric, received_input, received_target)

d = dir(local+'\*.png');

% target = zeros(1, length(d));
% target(target >= 0) = geometric;
% disp(target);

for n = 1 : size(d)
    folder = getfield(d, {n}, 'folder');
    nome = getfield(d, {n}, 'name');
    img = strcat(folder, '/', nome);
    I = imread(img);
%     img_arr = imbinarize(imresize(I, [25, 25]));
    I = rgb2gray(I);
    I = imresize(I, [25 25]);
    img_arr = imbinarize(I);
    vector = img_arr(:);
    input(:, n) = vector;
    target(:, n) = geometric;
end

if(~isempty(received_input))
    input = [received_input input];
    target = [received_target target];
end

end