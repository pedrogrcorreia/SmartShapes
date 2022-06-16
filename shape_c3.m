function shape_c3()

% Create input and target for all folders

input = zeros(0, 0);
target = zeros(0,0);
possibleShapes = ["circle" "kite" "parallelogram" "square" "trapezoid" "triangle"];

for n = 1 : length(possibleShapes)
    [input, target] = read_images("start\"+possibleShapes(n), possibleShapes(n), input, target);
    [input, target] = read_images("train\"+possibleShapes(n), possibleShapes(n), input, target);
    [input, target] = read_images("test\"+possibleShapes(n), possibleShapes(n), input, target);
end

% Load the best network
load("best_nn.mat", 'net');

% Train this network with all examples
[net,tr] = train(net, input, target);

%% Test network for start folder

% Reset input and target
input = zeros(0,0);
target = zeros(0,0);

% Get input and target for start folder
for n = 1 : length(possibleShapes)
    [input, target] = read_images("start\"+possibleShapes(n), possibleShapes(n), input, target);
end

% Simulate with start folder
out = net(input);

% Plot confusion matrix
plotconfusion(target, out);

r = 0;
for i=1:size(out,2)
    [a b] = max(out(:,i));
    [c d] = max(target(:,i));
    fprintf('Correct Shape: %s\n', possibleShapes(d));
    fprintf('Shape given: %s\n\n', possibleShapes(b));
    if b == d
      r = r+1;
    end
end

accuracy = r/size(out,2)*100;
fprintf('Total test precision for folder start: %f\n', accuracy);

%% Test network for train folder

% Reset input and target
input = zeros(0,0);
target = zeros(0,0);

% Get input and target for train folder
for n = 1 : length(possibleShapes)
    [input, target] = read_images("train\"+possibleShapes(n), possibleShapes(n), input, target);
end

% Simulate with train folder
out = net(input);

% Plot confusion matrix
plotconfusion(target, out);

r = 0;
for i=1:size(out,2)
    [a b] = max(out(:,i));
    [c d] = max(target(:,i));
    fprintf('Correct Shape: %s\n', possibleShapes(d));
    fprintf('Shape given: %s\n\n', possibleShapes(b));
    if b == d
      r = r+1;
    end
end

accuracy = r/size(out,2)*100;
fprintf('Total test precision for folder train: %f\n', accuracy);

%% Test network for test folder

% Reset input and target
input = zeros(0,0);
target = zeros(0,0);

% Get input and target for test folder
for n = 1 : length(possibleShapes)
    [input, target] = read_images("test\"+possibleShapes(n), possibleShapes(n), input, target);
end

% Simulate with test folder
out = net(input);

% Plot confusion matrix
plotconfusion(target, out);

r = 0;
for i=1:size(out,2)
    [a b] = max(out(:,i));
    [c d] = max(target(:,i));
    fprintf('Correct Shape: %s\n', possibleShapes(d));
    fprintf('Shape given: %s\n\n', possibleShapes(b));
    if b == d
      r = r+1;
    end
end

accuracy = r/size(out,2)*100;
fprintf('Total test precision for folder test %f\n', accuracy);
end