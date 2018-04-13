function varargout = RoboticsFinalProject(varargin)
% ROBOTICSFINALPROJECT MATLAB code for RoboticsFinalProject.fig
%      ROBOTICSFINALPROJECT, by itself, creates a new ROBOTICSFINALPROJECT or raises the existing
%      singleton*.
%
%      H = ROBOTICSFINALPROJECT returns the handle to a new ROBOTICSFINALPROJECT or the handle to
%      the existing singleton*.
%
%      ROBOTICSFINALPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTICSFINALPROJECT.M with the given input arguments.
%
%      ROBOTICSFINALPROJECT('Property','Value',...) creates a new ROBOTICSFINALPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RoboticsFinalProject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RoboticsFinalProject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RoboticsFinalProject

% Last Modified by GUIDE v2.5 11-Apr-2018 11:52:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RoboticsFinalProject_OpeningFcn, ...
                   'gui_OutputFcn',  @RoboticsFinalProject_OutputFcn, ...
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


% --- Executes just before RoboticsFinalProject is made visible.
function RoboticsFinalProject_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RoboticsFinalProject (see VARARGIN)

% Choose default command line output for RoboticsFinalProject
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RoboticsFinalProject wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axes(handles.DronePlot)
plot3(0,0,0)
grid on


% --- Outputs from this function are returned to the command line.
function varargout = RoboticsFinalProject_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in RollBtn.
function RollBtn_Callback(hObject, eventdata, handles)
% hObject    handle to RollBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RollBtn
set(handles.PitchBtn,'Value',0)
set(handles.YawBtn,'Value',0)

% --- Executes on button press in PitchBtn.
function PitchBtn_Callback(hObject, eventdata, handles)
% hObject    handle to PitchBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PitchBtn
set(handles.RollBtn,'Value',0)
set(handles.YawBtn,'Value',0)

% --- Executes on button press in YawBtn.
function YawBtn_Callback(hObject, eventdata, handles)
% hObject    handle to YawBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of YawBtn
set(handles.RollBtn,'Value',0)
set(handles.PitchBtn,'Value',0)


function AngleEditBox_Callback(hObject, eventdata, handles)
% hObject    handle to AngleEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AngleEditBox as text
%        str2double(get(hObject,'String')) returns contents of AngleEditBox as a double


% --- Executes during object creation, after setting all properties.
function AngleEditBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AngleEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DistanceEditBox_Callback(hObject, eventdata, handles)
% hObject    handle to DistanceEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DistanceEditBox as text
%        str2double(get(hObject,'String')) returns contents of DistanceEditBox as a double


% --- Executes during object creation, after setting all properties.
function DistanceEditBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DistanceEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in FlyBtn.
function FlyBtn_Callback(hObject, eventdata, handles)
% hObject    handle to FlyBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.DronePlot)
plot3(0,0,0)
grid on
