function varargout = Bar_and_whisker(varargin)
% BAR_AND_WHISKER MATLAB code for Bar_and_whisker.fig
%      BAR_AND_WHISKER, by itself, creates a new BAR_AND_WHISKER or raises the existing
%      singleton*.
%
%      H = BAR_AND_WHISKER returns the handle to a new BAR_AND_WHISKER or the handle to
%      the existing singleton*.
%
%      BAR_AND_WHISKER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BAR_AND_WHISKER.M with the given input arguments.
%
%      BAR_AND_WHISKER('Property','Value',...) creates a new BAR_AND_WHISKER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Bar_and_whisker_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Bar_and_whisker_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Bar_and_whisker

% Last Modified by GUIDE v2.5 01-Jun-2013 14:12:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Bar_and_whisker_OpeningFcn, ...
                   'gui_OutputFcn',  @Bar_and_whisker_OutputFcn, ...
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


% --- Executes just before Bar_and_whisker is made visible.
function Bar_and_whisker_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Bar_and_whisker (see VARARGIN)
clc;
global c;
global i;
i=0;
global a;
for k=1:10
    for j=1:1
        a(k,j)=0;
    end
end
% set(handles.uipanel1,'visible','Off');
set(handles.uipanel3,'visible','Off');
set(handles.uipanel10,'visible','Off');
set(handles.uipanel9,'visible','Off');
set(handles.uipanel11,'visible','Off');
set(handles.uipanel12,'visible','Off');
set(handles.uipanel14,'visible','Off');
% Choose default command line output for Bar_and_whisker
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Bar_and_whisker wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Bar_and_whisker_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
t=get(handles.edit4,'String');
x1=get(handles.edit5,'String');
y1=get(handles.edit6,'String');
for i=1:n
    c(i)=a(i,1);
end;
boxplot(c);
title(t);
xlabel(x1);
ylabel(y1);

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    b(i)=a(i);
end
x=max(b);
set(handles.text24,'String',x);
set(handles.pushbutton9,'visible','On');
% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    b(i)=a(i);
end
x=min(b);
set(handles.text25,'String',x);
set(handles.pushbutton10,'visible','On');
% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Q1=str2double(get(handles.text7,'String'));
QD=str2double(get(handles.text22,'String'));
left=Q1-(1.5*QD)
set(handles.text26,'String',left);
Q3=str2double(get(handles.text12,'String'));
QD=str2double(get(handles.text22,'String'));
right=Q3+(1.5*QD)
set(handles.text28,'String',right);
set(handles.pushbutton11,'visible','On');
% --- Executes on button presls in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Q1=str2double(get(handles.text7,'String'));
QD=str2double(get(handles.text22,'String'));
left=Q1-(3*QD)
set(handles.text29,'String',left);
Q3=str2double(get(handles.text12,'String'));
QD=str2double(get(handles.text22,'String'));
right=Q3+(3*QD)
set(handles.text31,'String',right);
set(handles.uipanel14,'visible','On');
% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Q1=str2double(get(handles.text7,'String'));
Q3=str2double(get(handles.text12,'String'));
QD=(Q3-Q1);
set(handles.text22,'String',QD);
set(handles.uipanel12,'visible','On');
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global c;
n=str2double(get(handles.edit1,'String'));
q2=2*(n+1)/4;
set(handles.text14,'String',q2);
f=fix(q2);
g=f+1;
Q2=c(f,1)+(q2-f)*(c(g,1)-c(f,1));
set(handles.text17,'String',Q2);
set(handles.uipanel9,'visible','On');
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global c;
n=str2double(get(handles.edit1,'String'));
q3=3*(n+1)/4;
set(handles.text9,'String',q3);
f=fix(q3);
g=f+1;
Q3=c(f,1)+(q3-f)*(c(g,1)-c(f,1));
set(handles.text12,'String',Q3);
set(handles.uipanel11,'visible','On');
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global c;
n=str2double(get(handles.edit1,'String'));
q1=(n+1)/4;
set(handles.text4,'String',q1);
f=fix(q1);
g=f+1;
Q1=c(f,1)+(q1-f)*(c(g,1)-c(f,1));
set(handles.text7,'String',Q1);
set(handles.uipanel10,'visible','On');


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
g=str2double(get(hObject,'String'));
if isnan(g)||~isreal(g)||g<=0||isempty(g)||rem(g,1)!0
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global a;
n=str2double(get(handles.edit1,'String'));
x1=str2double(get(handles.edit2,'String'));
if isempty(x1)|| isnan(x1)
    uicontrol(handles.edit2);
    set(handles.edit2,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
else
    i=i+1;
    if(i<=n)
        set(handles.uitable1,'ColumnName',{'X'});
        a(i,1)=str2double(get(handles.edit2,'String'));
        set(handles.uitable1,'data',a);
        set(handles.edit2,'String','');
        uicontrol(handles.edit2);
end
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.uipanel1,'visible','On');
    set(handles.pushbutton3,'visible','On');
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global c;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    b(i,1)=a(i,1);
    c=sort(b);
    set(handles.uitable1,'data',c);
end
set(handles.uipanel3,'visible','on');


% --- Executes during object creation, after setting all properties.
function pushbutton7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
