function shape_a()

% Create input and target for start folder

input = zeros(0, 0);
target = zeros(0,0);

possibleShapes = ["circle" "kite" "parallelogram" "square" "trapezoid" "triangle"];

for n = 1 : length(possibleShapes)
    [input, target] = read_images("start\"+possibleShapes(n), possibleShapes(n), input, target);
end

% Create neural network
net = feedforwardnet([10]);

% Use all examples on training
% net.divideFcn = 'dividerand';
net.divideParam.trainRatio = 1;
net.divideParam.valRatio = 0;
net.divideParam.testRatio = 0;

% Reduce training epochs
net.trainParam.epochs = 10;     

% Train network
[net,tr] = train(net, input, target);

% Simulate and give the results
out = sim(net, input);

% Plot confusion matrix
plotconfusion(target, out)

possibleShapes = ["circle" "kite" "paralellogram" "square" "trapezoid" "triangle"];

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
fprintf('Training total precision %f\n', accuracy)

end