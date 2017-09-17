function varargout = train(varargin)
% TRAIN MATLAB code for train.fig
%      TRAIN, by itself, creates a new TRAIN or raises the existing
%      singleton*.
%
%      H = TRAIN returns the handle to a new TRAIN or the handle to
%      the existing singleton*.
%
%      TRAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRAIN.M with the given input arguments.
%
%      TRAIN('Property','Value',...) creates a new TRAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before train_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to train_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help train

% Last Modified by GUIDE v2.5 10-Apr-2017 20:24:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @train_OpeningFcn, ...
                   'gui_OutputFcn',  @train_OutputFcn, ...
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


% --- Executes just before train is made visible.
function train_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to train (see VARARGIN)

% Choose default command line output for train
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes train wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = train_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function tb_trainDataPath_Callback(hObject, eventdata, handles)
% hObject    handle to tb_trainDataPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tb_trainDataPath as text
%        str2double(get(hObject,'String')) returns contents of tb_trainDataPath as a double



% --- Executes during object creation, after setting all properties.
function tb_trainDataPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tb_trainDataPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in bt_trainDataPath.
function bt_trainDataPath_Callback(hObject, eventdata, handles)
% hObject    handle to bt_trainDataPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileTrain pathTrain]=uigetfile('*.mat','Select trai data');
trainDataPath=[pathTrain fileTrain];
set(handles.tb_trainDataPath,'String',trainDataPath);
%guidata(hObject, handles);



function tb_testDataPath_Callback(hObject, eventdata, handles)
% hObject    handle to tb_testDataPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tb_testDataPath as text
%        str2double(get(hObject,'String')) returns contents of tb_testDataPath as a double


% --- Executes during object creation, after setting all properties.
function tb_testDataPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tb_testDataPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt_testDataPath.
function bt_testDataPath_Callback(hObject, eventdata, handles)
% hObject    handle to bt_testDataPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileTest pathTestData]=uigetfile('*.mat','Select test data');
testDataPath=[pathTestData fileTest];
set(handles.tb_testDataPath,'String',testDataPath);
%guidata(hObject, handles);


% --- Executes on selection change in dr_FeatureExtractor.
function dr_FeatureExtractor_Callback(hObject, eventdata, handles)
% hObject    handle to dr_FeatureExtractor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns dr_FeatureExtractor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dr_FeatureExtractor


% --- Executes during object creation, after setting all properties.
function dr_FeatureExtractor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dr_FeatureExtractor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in dr_mlMethods.
function dr_mlMethods_Callback(hObject, eventdata, handles)
% hObject    handle to dr_mlMethods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns dr_mlMethods contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dr_mlMethods


% --- Executes during object creation, after setting all properties.
function dr_mlMethods_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dr_mlMethods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt_train.
function bt_train_Callback(hObject, eventdata, handles)
% hObject    handle to bt_train (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
