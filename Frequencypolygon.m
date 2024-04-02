function varargout = Frequencypolygon(varargin)
% FREQUENCYPOLYGON MATLAB code for Frequencypolygon.fig
%      FREQUENCYPOLYGON, by itself, creates a new FREQUENCYPOLYGON or raises the existing
%      singleton*.
%
%      H = FREQUENCYPOLYGON returns the handle to a new FREQUENCYPOLYGON or the handle to
%      the existing singleton*.
%
%      FREQUENCYPOLYGON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FREQUENCYPOLYGON.M with the given input arguments.
%
%      FREQUENCYPOLYGON('Property','Value',...) creates a new FREQUENCYPOLYGON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Frequencypolygon_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Frequencypolygon_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Frequencypolygon

% Last Modified by GUIDE v2.5 18-Jul-2013 10:40:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Frequencypolygon_OpeningFcn, ...
                   'gui_OutputFcn',  @Frequencypolygon_OutputFcn, ...
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


% --- Executes just before Frequencypolygon is made visible.
function Frequencypolygon_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Frequencypolygon (see VARARGIN)
clc;
global i;
i=0;
global a;
for k=1:10;
    for j=1:6
        a(k,j)=0;
    end
end
% set(handles.uipanel1,'Visible','Off');
% set(handles.uipanel2,'Visible','On');
% set(handles.uipanel4,'Visible','Off');
set(handles.pushbutton4,'Visible','Off');




% Choose default command line output for Frequencypolygon
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Frequencypolygon wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Frequencypolygon_OutputFcn(hObject, eventdata, handles) 
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
handles.filename=uigetfile('*.xlsx');
guidata(hObject,handles);
filename=handles.filename;
[ndata,text,alldata]=xlsread(filename);
x1=ndata(:,1);
y1=ndata(:,1);
h=waitbar(0,'please wait...');
steps=200;
for step=1:steps
    waitbar(step/steps)
end
close(h)
set(handles.uitable1,'ColumnName',{'x','f'});
set(handles.uitable1,'Data',alldata);
set(handles.pushbutton3,'Visible','Off');
set(handles.pushbutton4,'Visible','On');
set(handles.uipanel1,'Visible','On');
set(handles.uipanel4,'Visible','On');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global a;
n=str2double(get(handles.edit1,'String'));
for i=1:1:n
    b(i)=a(i,1);
    c(i)=a(i,2);
end
disp(b);
disp(c);
plot(b,c);
t=get(handles.edit7,'String');
x1=get(handles.edit5,'String');
y1=get(handles.edit6,'String');
title(t);
xlabel(x1);
ylabel(y1);




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isnan(g)||~isreal(g)||g<=0
    uicontrol(handles.edit1);
    set(handles.edit1,'String','');
    h=messagebox('Enter a valid input','ERROR','error');
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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
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
u=str2double(get(handles.edit2,'String'));
f=str2double(get(handles.edit4,'String'));
if isempty(u)||isnan(u)||~isreal(u)||isempty(f)||isnan(f)||~isreal(f)
    uicontrol(handles.edit4);
    set(handles.edit4,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
else
    i=i+1;
    if(i<=n)
        set(handles.uitable1,'ColumnName',{'X','f'});
        a(i,1)=str2double(get(handles.edit2,'String'));
        a(i,2)=str2double(get(handles.edit4,'String'));
        set(handles.uitable1,'data',a);
        set(handles.edit2,'String','');
        set(handles.edit4,'String','');
        uicontrol(handles.edit2);
    end
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.edit4,'Enable','Off');
    set(handles.pushbutton2,'Visible','On');
    set(handles.uipanel4,'Visible','On');
end
set(handles.uipanel1,'Visible','On');



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
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
global i;

filename=handles.filename;
[ndata,ndata,alldata]=xlsread(filename);
[n1,n2]=size(alldata);
x=cell2mat(alldata(1:n1,1:n2));
h=waitbar(0,'Please wait...');
steps=200;
for step=1:steps
    waitbar(step/steps)
end
close(h)
set(handles.uitable1,'Data',alldata);
set(handles.pushbutton4,'Visible','on');
for i=1:1:n1
    b(i)=x(i,1);
    c(i)=x(i,2);
end
disp(b);
disp(c);
plot(b,c);
t=get(handles.edit5,'String');
x1=get(handles.edit6,'String');
y1=get(handles.edit7,'String');
title(t);
xlabel(x1);
ylabel(y1);
title(t);
