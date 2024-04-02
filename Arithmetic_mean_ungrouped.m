function varargout = Arithmetic_mean_ungrouped(varargin)
% ARITHMETIC_MEAN_UNGROUPED MATLAB code for Arithmetic_mean_ungrouped.fig
%      ARITHMETIC_MEAN_UNGROUPED, by itself, creates a new ARITHMETIC_MEAN_UNGROUPED or raises the existing
%      singleton*.
%
%      H = ARITHMETIC_MEAN_UNGROUPED returns the handle to a new ARITHMETIC_MEAN_UNGROUPED or the handle to
%      the existing singleton*.
%
%      ARITHMETIC_MEAN_UNGROUPED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARITHMETIC_MEAN_UNGROUPED.M with the given input arguments.
%
%      ARITHMETIC_MEAN_UNGROUPED('Property','Value',...) creates a new ARITHMETIC_MEAN_UNGROUPED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Arithmetic_mean_ungrouped_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Arithmetic_mean_ungrouped_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Arithmetic_mean_ungrouped

% Last Modified by GUIDE v2.5 22-Jul-2013 20:02:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Arithmetic_mean_ungrouped_OpeningFcn, ...
                   'gui_OutputFcn',  @Arithmetic_mean_ungrouped_OutputFcn, ...
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


% --- Executes just before Arithmetic_mean_ungrouped is made visible.
function Arithmetic_mean_ungrouped_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Arithmetic_mean_ungrouped (see VARARGIN)
clc;
global i;
i=0;
global a;
for k=1:10
    for j=1:5
        a(k,j)=0;   
    end
end
set(handles.uitable1,'data',{''});
set(handles.pushbutton2,'visible','Off');
% set(handles.uipanel1,'Visible','off');

% Choose default command line output for Arithmetic_mean_ungrouped
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Arithmetic_mean_ungrouped wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Arithmetic_mean_ungrouped_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MENU;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=str2double(get(hObject,'String'));
if isnan(n)||isempty(n)||ischar(n)||~isreal(n)||n==0||rem(n,1)!0
    uicontrol(handles.edit1);
    set(handles.edit1,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
end

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global a;
n=str2double(get(handles.edit1,'String'));
x1=str2double(get(handles.edit2,'String'));
if isempty(x1)|| isnan(x1)||ischar(x1)||~isreal(x1)
    uicontrol(handles.edit2);
    set(handles.edit2,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
else
    i=i+1;
    if(i<=n)
        set(handles.uitable1,'ColumnName',{'x'});
        a(i,1)=x1;
        set(handles.uitable1,'data',a);
        set(handles.edit2,'string','');
        uicontrol(handles.edit2);
    end
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.pushbutton2,'visible','On');
end
set(handles.uipanel1,'Visible','on');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    b(i)=a(i);
end
m1=mean(b);
set(handles.text2,'String',m1);
