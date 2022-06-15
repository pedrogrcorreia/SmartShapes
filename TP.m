function TP()

% ler os circulos

input = zeros(0,0);
target = zeros(0,0);

[input, target] = read_images("start\circle", [1, 0, 0, 0, 0, 0], input, target);

[input, target] = read_images("start\kite", [0, 1, 0, 0, 0, 0], input, target);

[input, target] = read_images("start\parallelogram", [0, 0, 1, 0, 0, 0], input, target);

[input, target] = read_images("start\square", [0, 0, 0, 1, 0, 0], input, target);

[input, target] = read_images("start\trapezoid", [0, 0, 0, 0, 1, 0], input, target);

[input, target] = read_images("start\triangle", [0, 0, 0, 0, 0, 1], input, target);

% disp(input);
% disp(target);

% COMPLETAR: criar RN chamada net
net = feedforwardnet([10]);

% FUNCAO DE ATIVACAO DA CAMADA DE SAIDA

net.trainFcn = 'trainlm';
net.layers{1}.transferFcn = 'tansig';
net.layers{2}.transferFcn = 'purelin';
net.divideFcn = 'dividerand';
net.divideParam.trainRatio = 1;
net.divideParam.valRatio = 0;
net.divideParam.testRatio = 0;

% NUMERO DE EPOCAS DE TREINO
net.trainParam.epochs = 1000;               


% TREINAR
[net,tr] = train(net, input, target);
%view(net);
disp(tr);


% SIMULAR
out = sim(net, input);

% i = (out < 0.5);
% out(i) = 0;
% i = (out >= 0.5);
% out(i) = 1;

%VISUALIZAR DESEMPENHO
plotconfusion(target, out) % Matriz de confusao

% plotperf(tr)         % Grafico com o desempenho da rede nos 3 conjuntos           

% erro = perform(net, out,t);
% fprintf('Erro na classificação dos 150 exemplos %f\n', erro)
%Calcula e mostra a percentagem de classificacoes corretas no total dos exemplos
r=0;
r = 0;
for i=1:size(out,2)
    [a b] = max(out(:,i));
    [c d] = max(target(:,i));
    if b == d
      r = r+1;
    end
end

accuracy = r/size(out,2)*100;
fprintf('Precisao total %f\n', accuracy)


% SIMULAR A REDE APENAS NO CONJUNTO DE TESTE
% TInput = p(:, tr.testInd);
% TTargets = t(:, tr.testInd);
% 
% out = sim(net, TInput);
% 
% %erro = perform(net, out,TTargets);
% %fprintf('Erro na classificação do conjunto de teste %f\n', erro)
% 
% %Calcula e mostra a percentagem de classificacoes corretas no conjunto de teste
% r=0;
% for i=1:size(tr.testInd,2)               % Para cada classificacao  
%   [a b] = max(out(:,i));  %b guarda a linha onde encontrou valor mais alto da saida obtida
%   [c d] = max(TTargets(:,i));  %d guarda a linha onde encontrou valor mais alto da saida desejada
%   if b == d                       % se estao na mesma linha, a classificacao foi correta (incrementa 1)
%       r = r+1;
%   end
% end
% accuracy = r/size(tr.testInd,2)*100;
% fprintf('Precisao teste %f\n', accuracy)

end