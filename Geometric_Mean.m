function varargout = Geometric_Mean(varargin)
% GEOMETRIC_MEAN MATLAB code for Geometric_Mean.fig
%      GEOMETRIC_MEAN, by itself, creates a new GEOMETRIC_MEAN or raises the existing
%      singleton*.
%
%      H = GEOMETRIC_MEAN returns the handle to a new GEOMETRIC_MEAN or the handle to
%      the existing singleton*.
%
%      GEOMETRIC_MEAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GEOMETRIC_MEAN.M with the given input arguments.
%
%      GEOMETRIC_MEAN('Property','Value',...) creates a new GEOMETRIC_MEAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Geometric_Mean_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Geometric_Mean_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Geometric_Mean

% Last Modified by GUIDE v2.5 23-Jul-2013 09:40:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Geometric_Mean_OpeningFcn, ...
                   'gui_OutputFcn',  @Geometric_Mean_OutputFcn, ...
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


% --- Executes just before Geometric_Mean is made visible.
function Geometric_Mean_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Geometric_Mean (see VARARGIN)
clc;
global i;
i=0;
global a;
for k=1:10
    for j=1:2
        a(k,j)=0;
    end
end
set(handles.uipanel3,'visible','off');
% set(handles.uipanel1,'visible','off');
set(handles.pushbutton7,'visible','Off');
set(handles.pushbutton3,'visible','Off');
set(handles.text6,'visible','Off');
% Choose default command line output for Geometric_Mean
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Geometric_Mean wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Geometric_Mean_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    a(i,2)=log10(a(i,1));
end
set(handles.uitable1,'data',a);
set(handles.pushbutton7,'visible','on');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
sum=0;
for j=1:n
   sum=sum+a(j,2);
end
gm=10^(sum/n);
set(handles.text7,'String',gm);
set(handles.pushbutton3,'visible','on');


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double

g=str2double(get(hObject,'String'));
if isnan(g)|| isempty(g)||~isreal(g)||g<=0||rem(g,1)!0
    uicontrol(handles.edit1);
    set(handles.edit1,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
end
% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global  a;
n=str2double(get(handles.edit1,'String'));
x=str2double(get(handles.edit2,'String'));
if isempty(x)||isnan(x)|| ~isreal(x)||x<0
    uicontrol(handles.edit2);
    set(handles.edit2,'String','');
    h=msgbox('Enter  a valid input','ERROR','error');
else
    i=i+1;
    if(i<=n)
        set(handles.uitable1,'ColumnName',{'x','logx'});
        a(i,1)=str2double(get(handles.edit2,'String'));
        set(handles.uitable1,'data',a);
        set(handles.edit2,'String','');
        uicontrol(handles.edit2);
    end
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.uipanel2,'visible','on');
    set(handles.uipanel3,'visible','on');
end
set(handles.uipanel1,'visible','on');


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
sum=0;
for j=1:n
   sum=sum+a(j,2);
end
set(handles.text5,'String',sum);
set(handles.pushbutton3,'visible','On');
set(handles.text6,'visible','On');
% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MENU;
