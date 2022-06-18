function varargout = shapes_gui(varargin)
% SHAPES_GUI MATLAB code for shapes_gui.fig
%      SHAPES_GUI, by itself, creates a new SHAPES_GUI or raises the existing
%      singleton*.
%
%      H = SHAPES_GUI returns the handle to a new SHAPES_GUI or the handle to
%      the existing singleton*.
%
%      SHAPES_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SHAPES_GUI.M with the given input arguments.
%
%      SHAPES_GUI('Property','Value',...) creates a new SHAPES_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before shapes_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to shapes_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help shapes_gui

% Last Modified by GUIDE v2.5 18-Jun-2022 21:17:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @shapes_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @shapes_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before shapes_gui is made visible.
function shapes_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to shapes_gui (see VARARGIN)

    handles.hasNet = 0;
    handles.hasDraw = 0;
    handles.possibleShapes =  ["circle" "kite" "parallelogram" "square" "trapezoid" "triangle"];
    set(findall(handles.panelDraw, '-property', 'enable'), 'enable', 'off');
    set(findall(handles.panelLoad, '-property', 'enable'), 'enable', 'off');
    set(findall(handles.panelDataset, '-property', 'enable'), 'enable', 'off');

% Choose default command line output for shapes_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes shapes_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = shapes_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupTrainingF.
function popupTrainingF_Callback(hObject, eventdata, handles)
% hObject    handle to popupTrainingF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupTrainingF contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupTrainingF


% --- Executes during object creation, after setting all properties.
function popupTrainingF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupTrainingF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editArch_Callback(hObject, eventdata, handles)
% hObject    handle to editArch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editArch as text
%        str2double(get(hObject,'String')) returns contents of editArch as a double


% --- Executes during object creation, after setting all properties.
function editArch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editArch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editAct_Callback(hObject, eventdata, handles)
% hObject    handle to editAct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAct as text
%        str2double(get(hObject,'String')) returns contents of editAct as a double


% --- Executes during object creation, after setting all properties.
function editAct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupDiv.
function popupDiv_Callback(hObject, eventdata, handles)
% hObject    handle to popupDiv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupDiv contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupDiv


% --- Executes during object creation, after setting all properties.
function popupDiv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupDiv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editLocal_Callback(hObject, eventdata, handles)
% hObject    handle to editLocal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editLocal as text
%        str2double(get(hObject,'String')) returns contents of editLocal as a double


% --- Executes during object creation, after setting all properties.
function editLocal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editLocal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnSearchDataset.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to btnSearchDataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnCreate.
function btnCreate_Callback(hObject, eventdata, handles)
% hObject    handle to btnCreate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if (isempty(get(handles.editArch, 'String')))
        errordlg('Field "Architecture" can not be empty!','ERROR');
        return;
    end
    
    if (isempty(get(handles.editAct, 'String')))
        errordlg('Field "Activation Functions" can not be empty!','ERROR');
        return;
    end
    
    if (isempty(get(handles.editLocal, 'String')))
        errordlg('Field "Input Folder" can not be empty!','ERROR');
        return;
    end

    divTrainStr = get(handles.editTrain, 'String');
    divValStr = get(handles.editVal, 'String');
    divTestStr = get(handles.editTest, 'String');
    
    if (~isreal(divTrainStr) || ~isreal(divValStr) || ~isreal(divTestStr))
        errordlg('"% for training", "% for validation" and "% for test" must be real!','ERROR');
        return;
    end
    
    divTrain = str2num(divTrainStr);
    divVal = str2num(divValStr);
    divTest = str2num(divTestStr);
    
    trainFcnCell = get(handles.popupTrainingF, 'String');
    trainFcnCell = trainFcnCell(get(handles.popupTrainingF, 'Value'));
    trainFcnStr = cell2mat(trainFcnCell);

    nnCfgCellArray = split(get(handles.editArch, 'String'));
    
    for i = 1: length(nnCfgCellArray)
        if (~isscalar(nnCfgCellArray(i)))
            errordlg('Neurons number must be integer!', 'ERROR');
            return;
        end
    end

    for i = 1: length(nnCfgCellArray)
        nnCfgValue(i) = str2double([nnCfgCellArray{i, :}]');
        
        if (nnCfgValue(i) <= 0)
            errordlg('Architecture must have positive values!', 'ERROR');
            return;
        end
    end

    divFcnCell = get(handles.popupDiv, 'String');
    divFcnCell = divFcnCell(get(handles.popupDiv, 'Value'));
    divFcnStr = cell2mat(divFcnCell);

    activationFcnCellArray = split(get(handles.editAct, 'String'));
    activationFcnStrArray = string(activationFcnCellArray);
    
    if (length(activationFcnStrArray) ~= (length(nnCfgValue) + 1))
        errordlg('Activation functions must be one for each hidden layer and one for the output!','ERROR');
        return;
    end

    %% Configure neural network
    handles.net = feedforwardnet(nnCfgValue);
    
    handles.net.trainFcn = trainFcnStr;
    handles.net.divideFcn = divFcnStr;
    
    handles.net.divideParam.trainRatio = divTrain;
    handles.net.divideParam.valRatio = divVal;
    handles.net.divideParam.testRatio = divTest;

    for i = 1: length(activationFcnStrArray)
        try 
            handles.net.layers{i}.transferFcn = activationFcnStrArray(i);
        catch
            errordlg(sprintf('Invalid activation function: %s!', activationFcnStrArray(i)),'ERROR');
            return;
        end
    end

    folderImg = get(handles.editLocal, 'String');
    folderImg = strcat(folderImg, '\');
    input = zeros(0, 0);
    target = zeros(0,0);
    
    possibleShapes = ["circle" "kite" "parallelogram" "square" "trapezoid" "triangle"];
    selectedShapes = [];
    for i = 1 : 6
        cb = sprintf('handles.cb%s', possibleShapes(i));
        cbValue = get(eval(cb), 'Value');
        if cbValue
            selectedShapes = [selectedShapes possibleShapes(i)];
        end
    end
    
    for n = 1 : length(selectedShapes)
        [input, target] = read_images(folderImg+selectedShapes(n), selectedShapes(n), input, target);
    end

    try
        [handles.net, ~] = train(handles.net, input, target);
    catch
        errordlg('Erro desconhecido ao treinar!','ERRO');
        return;
    end
    out = sim(handles.net, input);
    
    handles.hasNet = 1;
    set(findall(handles.panelDraw, '-property', 'enable'), 'enable', 'on');
    set(findall(handles.panelLoad, '-property', 'enable'), 'enable', 'on');
    set(findall(handles.panelDataset, '-property', 'enable'), 'enable', 'on');
    
%     hold on;
    figure;
    plotconfusion(target, out, 'Train -'); 
    fh = gcf; % access the figure handle for the confusion matrix plot
    ah = fh.Children(2); % access the corresponding axes handle
    for n = 1 : length(possibleShapes)
        ah.XTickLabel{n} = possibleShapes(n);
        ah.YTickLabel{n} = possibleShapes(n);
    end
    ah.XLabel.String = 'Actual'; % change the axes labels
    ah.YLabel.String = 'Result';
%     hold off;
    % Update handles structure
    guidata(hObject, handles);



% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editTest_Callback(hObject, eventdata, handles)
% hObject    handle to editTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTest as text
%        str2double(get(hObject,'String')) returns contents of editTest as a double


% --- Executes during object creation, after setting all properties.
function editTest_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVal_Callback(hObject, eventdata, handles)
% hObject    handle to editVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVal as text
%        str2double(get(hObject,'String')) returns contents of editVal as a double


% --- Executes during object creation, after setting all properties.
function editVal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editTrain_Callback(hObject, eventdata, handles)
% hObject    handle to editTrain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTrain as text
%        str2double(get(hObject,'String')) returns contents of editTrain as a double


% --- Executes during object creation, after setting all properties.
function editTrain_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTrain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnShape.
function btnShape_Callback(hObject, eventdata, handles)
% hObject    handle to btnShape (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    if(handles.hasNet == 0)
        errordlg("No neural network loaded!", "ERROR");
        return;
    end
    location = get(handles.filePath, 'String');

    if(isempty(location))
        errordlg("No shape is loaded!", "ERROR");
        return
    end
    location = dir(location);
    file_name = location.name;
    location = location.folder;

    input = zeros(0,0);
    target = zeros(0,0);
    [input, ~] = read_images(location+"\", handles.possibleShapes(1), input, target, file_name);

    out = sim(handles.net, input);
    [~, b] = max(out(:, 1));   

    set(handles.resultLoad, 'visible', 'on');
    set(handles.txtGuessLoad, 'visible', 'on');
    set(handles.txtGuessLoad, 'String', handles.possibleShapes(b));
    
% --- Executes on button press in btnLoad.
function btnLoad_Callback(hObject, eventdata, handles)
% hObject    handle to btnLoad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    [fName, fPath] = uigetfile('*.png', "Choose file for simulation");
    tempStr = sprintf('%s%s', fPath, fName);
    
    set(handles.filePath, 'String', tempStr);
    
    if (get(handles.filePath, 'String') == '0')
        set(handles.btnShape, 'enable', 'off');
    end
    
    img = imread(sprintf("%s%s", fPath, fName));
    imshow(img, 'Parent', handles.imgAxes);

% --- Executes on button press in btnDraw.
function btnDraw_Callback(hObject, eventdata, handles)
% hObject    handle to btnDraw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    if(handles.hasNet == 0)
        errordlg("No neural network loaded!", "ERROR");
        return;
    end
    % Create the image from ROI
    draw = createMask(handles.ROI, 250, 250);
    % Changes the colors
    draw = imcomplement(draw);
    draw = imresize(double(draw), [25 25]);
    imwrite(draw, 'draw.png');
    I = imread('draw.png');

%     delete newImage.png;
%     I = imresize(double(I), [25 25]);
    img_arr = imbinarize(I);
    input = img_arr(:);

    out = sim(handles.net, input);
    [~, b] = max(out(:, 1));   

    set(handles.resultDraw, 'visible', 'on');
    set(handles.txtGuessDraw, 'visible', 'on');
    set(handles.txtGuessDraw, 'String', handles.possibleShapes(b));

function editLocalDataset_Callback(hObject, eventdata, handles)
% hObject    handle to editLocalDataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editLocalDataset as text
%        str2double(get(hObject,'String')) returns contents of editLocalDataset as a double


% --- Executes during object creation, after setting all properties.
function editLocalDataset_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editLocalDataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnSearchDataset.
function btnSearchDataset_Callback(hObject, eventdata, handles)
% hObject    handle to btnSearchDataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.editLocalDataset, 'String', uigetdir('.', "Choose folder for simulation"));
    if (get(handles.editLocalDataset, 'String') == '0')
        set(handles.editLocalDataset, 'String', 'C:\');
    end
% --- Executes on button press in btnDataset.
function btnDataset_Callback(hObject, eventdata, handles)
% hObject    handle to btnDataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    if handles.hasNet == 0
        errordlg("No neural network loaded!", "ERROR");
        return;
    end

    folderImg = get(handles.editLocalDataset, 'String');
    folderImg = strcat(folderImg, '\');
    if(isempty(folderImg))
        errordlg("Input folder is empty!", "ERROR");
        return
    end
    input = zeros(0, 0);
    target = zeros(0,0);
    selectedShapes = [];
    for i = 1 : 6
        cb = sprintf('handles.cb%sDS', handles.possibleShapes(i));
        cbValue = get(eval(cb), 'Value');
        if cbValue
            selectedShapes = [selectedShapes handles.possibleShapes(i)];
        end
    end
    
    for n = 1 : length(selectedShapes)
        [input, target] = read_images(folderImg+selectedShapes(n), selectedShapes(n), input, target);
    end
    
    out = sim(handles.net, input);

    figure;
    plotconfusion(target, out, 'Simulation with Dataset -');
    fh = gcf; % access the figure handle for the confusion matrix plot
    ah = fh.Children(2); % access the corresponding axes handle
    for n = 1 : length(handles.possibleShapes)
        ah.XTickLabel{n} = handles.possibleShapes(n);
        ah.YTickLabel{n} = handles.possibleShapes(n);
    end
    ah.XLabel.String = 'Actual'; % change the axes labels
    ah.YLabel.String = 'Result';

% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function About_Callback(hObject, eventdata, handles)
% hObject    handle to About (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnQuit_Callback(hObject, eventdata, handles)
% hObject    handle to mnQuit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MSair_Callback([], [], handles);


% --------------------------------------------------------------------
function mnDoc_Callback(hObject, eventdata, handles)
% hObject    handle to mnDoc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msg = sprintf("Train neural networks to identify different shapes based on images given.\n" + ...
    "Load and save trained networks\n" + ...
    "Simulate results with preloaded Datasets, Draws or a image file.");
f = msgbox(msg, "Documentation");

% --------------------------------------------------------------------
function mnAuthor_Callback(hObject, eventdata, handles)
% hObject    handle to mnAuthor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[icondata,iconcmap] = imread('author.jfif');
msg = sprintf("ISEC 2021/2022\nConhecimento e Raciocínio\nPedro" + ...
    " Gonçalo dos Reis Correia\n https://github.com/pedrogrcorreia");
h = msgbox(msg, 'Author', "custom", icondata, iconcmap);

% --------------------------------------------------------------------
function loadNet_Callback(hObject, eventdata, handles)
% hObject    handle to loadNet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fName, fPath] = uigetfile;
    
    if (fName == 0)
        return;
    end
    
    if (fPath == 0)
        return;
    end
    
    netFileStr = strcat(fPath, fName);
    handles.net = load(netFileStr, 'net').net;
    
    handles.hasNet = 1;
    set(findall(handles.panelDraw, '-property', 'enable'), 'enable', 'on');
    set(findall(handles.panelLoad, '-property', 'enable'), 'enable', 'on');
    set(findall(handles.panelDataset, '-property', 'enable'), 'enable', 'on');
    
    % Update handles structure
    guidata(hObject, handles);

% --------------------------------------------------------------------
function saveNet_Callback(hObject, eventdata, handles)
% hObject    handle to saveNet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    if (handles.hasNet ~= 1)
        errordlg('Neural network doesn''t exist!','ERROR');
        return;
    end
    
    [fName, fPath] = uiputfile('*.mat', 'Save Neural Network');
    
    if (fName == 0)
        return;
    end
    
    if (fPath == 0)
        return;
    end

    net = handles.net;
    
    save(sprintf("%s\\%s", fPath, fName), 'net');


% --- Executes on button press in cbparallelogram.
function cbparallelogram_Callback(hObject, eventdata, handles)
% hObject    handle to cbparallelogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbparallelogram


% --- Executes on button press in cbkite.
function cbkite_Callback(hObject, eventdata, handles)
% hObject    handle to cbkite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbkite


% --- Executes on button press in cbcircle.
function cbcircle_Callback(hObject, eventdata, handles)
% hObject    handle to cbcircle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbcircle


% --- Executes on button press in cbtriangle.
function cbtriangle_Callback(hObject, eventdata, handles)
% hObject    handle to cbtriangle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbtriangle


% --- Executes on button press in cbtrapezoid.
function cbtrapezoid_Callback(hObject, eventdata, handles)
% hObject    handle to cbtrapezoid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbtrapezoid


% --- Executes on button press in cbsquare.
function cbsquare_Callback(hObject, eventdata, handles)
% hObject    handle to cbsquare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbsquare


% --- Executes during object creation, after setting all properties.
function btnGroupShapes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btnGroupShapes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btnSearchNet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btnSearchNet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in btnSearchNet.
function btnSearchNet_Callback(hObject, eventdata, handles)
% hObject    handle to btnSearchNet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.editLocal, 'String', uigetdir('.', "Choose folder for training"));
    if (get(handles.editLocal, 'String') == '0')
        set(handles.editLocal, 'String', 'C:\');
    end


% --- Executes during object creation, after setting all properties.
function drawAxes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to drawAxes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
    set(gca, 'XColor', 'none', 'YColor', 'none', 'Color', 'w');
% Hint: place code in OpeningFcn to populate drawAxes


% --- Executes on mouse press over axes background.
function drawAxes_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to drawAxes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    whiteImage = 250 * ones(250, 250, 'uint8');
    imshow(whiteImage, 'Parent', handles.drawAxes);
%     hold off;
    handles.ROI = drawfreehand(hObject, 'Tag', 'shape', 'Closed', 0, 'Color', [0 0.4470 0.7410], 'LineWidth', 15, 'FaceAlpha', 0);
    handles.hasDraw = 1;
    set(handles.btnClearDraw, 'enable', 'on');
    set(handles.btnDraw, 'enable', 'on');

    % Update handles structure
    guidata(hObject, handles);


% --- Executes on button press in btnClearDraw.
function btnClearDraw_Callback(hObject, eventdata, handles)
% hObject    handle to btnClearDraw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    delete(handles.ROI);
%     cla(handles.drawAxes, 'reset');
    axis on
    img = findobj(handles.drawAxes, 'Type', 'image');
    delete(img);
    set(gca, 'XColor', 'none', 'YColor', 'none', 'Color', 'w');
    handles.ROI = drawfreehand(handles.drawAxes, 'Tag', 'shape', 'Closed', 0, 'Color', [0 0.4470 0.7410], 'LineWidth', 15, 'FaceAlpha', 0);
    % Update handles structure
    guidata(hObject, handles);



function filePath_Callback(hObject, eventdata, handles)
% hObject    handle to filePath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filePath as text
%        str2double(get(hObject,'String')) returns contents of filePath as a double


% --- Executes during object creation, after setting all properties.
function filePath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filePath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function imgAxes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imgAxes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
    set(gca, 'XColor', 'none', 'YColor', 'none');
% Hint: place code in OpeningFcn to populate imgAxes


% --- Executes on button press in cbsquareDS.
function cbsquareDS_Callback(hObject, eventdata, handles)
% hObject    handle to cbsquareDS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbsquareDS


% --- Executes on button press in cbtrapezoidDS.
function cbtrapezoidDS_Callback(hObject, eventdata, handles)
% hObject    handle to cbtrapezoidDS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbtrapezoidDS


% --- Executes on button press in cbtriangleDS.
function cbtriangleDS_Callback(hObject, eventdata, handles)
% hObject    handle to cbtriangleDS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbtriangleDS


% --- Executes on button press in cbcircleDS.
function cbcircleDS_Callback(hObject, eventdata, handles)
% hObject    handle to cbcircleDS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbcircleDS


% --- Executes on button press in cbkiteDS.
function cbkiteDS_Callback(hObject, eventdata, handles)
% hObject    handle to cbkiteDS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbkiteDS


% --- Executes on button press in cbparallelogramDS.
function cbparallelogramDS_Callback(hObject, eventdata, handles)
% hObject    handle to cbparallelogramDS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbparallelogramDS


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
% delete(hObject);
MSair_Callback([], [], handles);

function MSair_Callback(hObject, eventdata, handles)
% hObject    handle to MSair (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SN=questdlg('Quit?','Quit','Yes','No','Yes');
if strcmp(SN,'No')
    return;
end
delete(handles.figure1);
