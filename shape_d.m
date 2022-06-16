function shape_d()
% Reset input and target
uInput = zeros(0,0);
target = zeros(0,0);
possibleShapes = ["circle" "kite" "parallelogram" "square" "trapezoid" "triangle"];

% Get shape from user
fprintf('Which shape you want to test?\n');
fprintf('1 - circle\n');
fprintf('2 - kite\n');
fprintf('3 - parallelogram\n');
fprintf('4 - square\n');
fprintf('5 - trapezoid\n');
fprintf('6 - triangle\n');
tmp = input('                        shape? (default circle) = ');
if isempty(tmp)
    tmp = 1;
end

% Get file
fprintf('File location: \n');
[file_name, location] = uigetfile('*.png', 'Select an image with a shape', '..\');

% Get the input and target for the given sample
[uInput, target] = read_images(location, possibleShapes(tmp), uInput, target, file_name);

load('best_nn.mat', 'net');

% Simulate and give the results
out = sim(net, uInput);

r = 0;
for i=1:size(out,2)
    [a b] = max(out(:,i));
    [c d] = max(target(:,i));
    fprintf('Correct shape: %s\n', possibleShapes(d));
    fprintf('Shape given: %s\n\n', possibleShapes(b));
    if b == d
      r = r+1;
    end
end
end