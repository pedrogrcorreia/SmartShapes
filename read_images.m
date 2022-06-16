function [input, target] = read_images(local, geometric, received_input, received_target, file_name)

if ~exist('file_name', 'var')
    d = dir(local+'\*.png');
else
    d = dir(strcat(local, file_name));
end
disp(d);
keySet = {'circle', 'kite', 'parallelogram', 'square', 'trapezoid', 'triangle'};
valueSet = { [1, 0, 0, 0, 0, 0], [0, 1, 0, 0, 0, 0] [0, 0, 1, 0, 0, 0] [0, 0, 0, 1, 0, 0] [0, 0, 0, 0, 1, 0] [0, 0, 0, 0, 0, 1] };

M = containers.Map(keySet, valueSet);

% target = zeros(1, length(d));
% target(target >= 0) = geometric;
% disp(target);

for n = 1 : size(d)
    folder = getfield(d, {n}, 'folder');
    nome = getfield(d, {n}, 'name');
    img = strcat(folder, '/', nome);
    I = imread(img);
    I = rgb2gray(I);
    I = imresize(I, [25 25]);
    img_arr = imbinarize(I);
    vector = img_arr(:);
    input(:, n) = vector;
    target(:, n) = M(geometric);
end

if(~isempty(received_input))
    input = [received_input input];
    target = [received_target target];
end

end