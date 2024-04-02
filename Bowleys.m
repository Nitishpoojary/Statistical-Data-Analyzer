function varargout = Bowleys(varargin)
% BOWLEYS MATLAB code for Bowleys.fig
%      BOWLEYS, by itself, creates a new BOWLEYS or raises the existing
%      singleton*.
%
%      H = BOWLEYS returns the handle to a new BOWLEYS or the handle to
%      the existing singleton*.
%
%      BOWLEYS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BOWLEYS.M with the given input arguments.
%
%      BOWLEYS('Property','Value',...) creates a new BOWLEYS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Bowleys_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Bowleys_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Bowleys

% Last Modified by GUIDE v2.5 25-May-2013 14:21:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Bowleys_OpeningFcn, ...
                   'gui_OutputFcn',  @Bowleys_OutputFcn, ...
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


% --- Executes just before Bowleys is made visible.
function Bowleys_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Bowleys (see VARARGIN)


% Choose default command line output for Bowleys
handles.output = hObject;
clc;
global i;
i=0;
global a;
for j=1:10
    for k=1:3
        a(j,k)=0;
    end
end
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Bowleys wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Bowleys_OutputFcn(hObject, eventdata, handles) 
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
global a;
n=str2double(get(handles.edit1,'String'));
a(1,3)=a(1,2);
for i=2:n
    a(i,3)=a(i,2)+a(i-1,3);
end
set(handles.uitable1,'data',a);
set(handles.uipanel3,'visible','on');


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
e=str2double(get(hObject,'String'));
if isnan(e)||~isreal(e)||e<=0
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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
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
x=str2double(get(handles.edit2,'String'));
f=str2double(get(handles.edit3,'String'));
if isempty(x)||isnan(x)||~isreal(x)||isempty(f)||isnan(f)||~isreal(f)
    uicontrol(handles.edit3,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
else
    i=i+1;
    if(i<=n)
        set(handles.uitable1,'ColumnName',{'x','f','LCF'})
        a(i,1)=str2double(get(handles.edit2,'String'));
        a(i,2)=str2double(get(handles.edit3,'String'));
        set(handles.uitable1,'data',a);
        set(handles.edit2,'String','');
        set(handles.edit3,'String','');
        uicontrol(handles.edit2);
    end
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.edit3,'Enable','Off');
    set(handles.uipanel2,'visible','on');
end
set(handles.uipanel3,'visible','on');    
    
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.filename=uigetfile('*.xlsx');
guidata(hObject,handles);
filename=handles.filename;
[ndata,text,alldata]=xlsread(filename);
x=text(:,1);
y=ndata(:,1);
h=waitbar(0,'Please wait...');
steps=200;
for step=1:steps
    waitbar(step/steps)
end
close(h)
set(handles.uitable1,'Data',alldata);
set(handles.pushbutton4,'Visible','on');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
N=a(n,3);
q1=3*((N+1)/4);
set(handles.text16,'String',q1);
pos=0;
for i=1:n
    if(a(i,3)>q1)
        q=a(i,3);
        pos=i;
        break;
    end
end;
set(handles.text18,'String',a(pos,1));
set(handles.pushbutton6,'visible','on');

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
N=a(n,3);
q1=2*((N+1)/4);
set(handles.text11,'String',q1);
pos=0;
for i=1:n
    if(a(i,3)>q1)
        q=a(i,3);
        pos=i;
        break;
    end
end;
set(handles.text13,'String',a(pos,1));
set(handles.uipanel6,'visible','on');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
N=a(n,3);
q1=(N+1)/4;
set(handles.text6,'String',q1);
pos=0;
for i=1:n
    if(a(i,3)>q1)
        q=a(i,3);
        pos=i;
        break;
    end
end;
set(handles.text8,'String',a(pos,1));
set(handles.uipanel4,'visible','on');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
q1=str2double(get(handles.text8,'String'));
q2=str2double(get(handles.text13,'String'));
q3=str2double(get(handles.text18,'String'));
sk=(q3+q1-(2*q2))/(q3-q1);
set(handles.text19,'String',sk);
if(sk>0)
    set(handles.text20,'String','The Distribution is positively skewed');
elseif(sk<0)
    set(handles.text20,'String','The Distribution is negetively skewed');
else
    set(handles.text20,'String','It is Symmetric Distribution');
end
