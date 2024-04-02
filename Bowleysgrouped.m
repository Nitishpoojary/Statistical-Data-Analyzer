function varargout = Bowleysgrouped(varargin)
% BOWLEYSGROUPED MATLAB code for Bowleysgrouped.fig
%      BOWLEYSGROUPED, by itself, creates a new BOWLEYSGROUPED or raises the existing
%      singleton*.
%
%      H = BOWLEYSGROUPED returns the handle to a new BOWLEYSGROUPED or the handle to
%      the existing singleton*.
%
%      BOWLEYSGROUPED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BOWLEYSGROUPED.M with the given input arguments.
%
%      BOWLEYSGROUPED('Property','Value',...) creates a new BOWLEYSGROUPED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Bowleysgrouped_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Bowleysgrouped_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Bowleysgrouped

% Last Modified by GUIDE v2.5 24-Aug-2013 20:37:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Bowleysgrouped_OpeningFcn, ...
                   'gui_OutputFcn',  @Bowleysgrouped_OutputFcn, ...
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


% --- Executes just before Bowleysgrouped is made visible.
function Bowleysgrouped_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Bowleysgrouped (see VARARGIN)

% Choose default command line output for Bowleysgrouped
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Bowleysgrouped wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Bowleysgrouped_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
global i;
i=0;
global a;
for k=1:10
    for j=1:4
        a(k,j)=0;
    end
end
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
a(1,4)=a(1,3);
for i=2:n
    a(i,4)=a(i,3)+a(i-1,4);
end
set(handles.uitable1,'data',a);
set(handles.uipanel2,'visible','On');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
qc3=(3*a(n,4))/4;
set(handles.text6,'String',qcl);
pos=0;
for i=1:n
    if(a(i,4)>qc3)
        m1=a(i,4);
        pos=i;
        break;
    end
end
set(handles.text27,'String',a(pos,1));
set(handles.text29,'String',a(pos,2));
c=a(pos,2)-a(pos,1);
q1=a(pos,1)+((((3*(a(n,4))/4))-a(pos-1,4))/a(pos,3))*c;
set(handles.text13,'String',q1);
set(handles.pushbutton6,'visible','on');



% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
qcl=(a(n,4))/4;
set(handles.text6,'String',qcl);
pos=0;
for i=1:n
    if(a(i,4)>qcl)
        m1=a(i,4);
        pos=i;
        break;
    end
end
set(handles.text9,'String',a(pos,1));
set(handles.text11,'String',a(pos,2));
c=a(pos,2)-a(pos,1);
q1=a(pos,1)+((a(n,4)/4)-a(pos-1,4))/a(pos,3)*c;
set(handles.text14,'String',q1);
set(handles.uipanel4,'visible','on');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
qc2=(2*a(n,4))/4;
set(handles.text16,'String',qc2);
pos=0;
for i=1:n
    if(a(i,4)>qc2)
        m1=a(i,4);
        pos=i;
        break;
    end
end
set(handles.text18,'String',a(pos,1));
set(handles.text20,'String',a(pos,2));
c=a(pos,2)-a(pos,1);
q2=a(pos,1)+((((2*(a(n,4))/4))-a(pos-1,4))/a(pos,3))*c;
set(handles.text23,'String',q2);




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
e=str2double(get(hObject,'String'));
if isnan(e)|| ~isreal(e)||e<=0
    uicontrol(handles.edit1);
    set(handles.edit1,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
end
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
g=str2double(get(handles.edit2,'String'));
h=str2double(get(handles.edit3,'String'));
k=str2double(get(handles.edit4,'String'));
if isempty(g)||isnan(g)||~isreal(g)||isempty(h)||isnan(h)||~isreal(h)||isempty(k)||isnan(k)||~isreal(k)||h<g
    uicontrol(handles.edit2);
    set(handles.edit2,'String','');
    set(handles.edit3,'String',' ');
        set(handles.edit4,'String',' ');
    h=msgbox('enter a valid input','ERROR','error');
else
    i=i+1;
    if(i<=n)
        set(handles.uitable1,'ColumnName',{'Lowerlimit','Upperlimit','f','LCF'});
        a(i,1)=str2double(get(handles.edit2,'String'));
        a(i,2)=str2double(get(handles.edit3,'String'));
        a(i,3)=str2double(get(handles.edit4,'String'));
        set(handles.uitable1,'data',a);
        set(handles.edit2,'String',' ');
        set(handles.edit3,'String',' ');
        set(handles.edit4,'String',' ');
        uicontrol(handles.edit2);
    end
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.edit3,'Enable','Off');
    set(handles.edit4,'Enable','Off');
    set(handles.uipanel1,'visible','On');
end



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
q1=str2double(get(handles.text14,'String'));
q2=str2double(get(handles.text23,'String'));
q3=str2double(get(handles.text44,'String'));
sk=(q3+q1-(2*q2))/(q3-q1);
set(handles.text46,'String',sk);
if(sk>0)
    set(handles.text45,'String','The Distribution is positively skewed');
elseif(sk<0)
    set(handles.text45,'String','The Distribution is negetively skewed');
else
    set(handles.text45,'String','It is Symmetric Distribution');
end
    

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
qc3=(3*a(n,4))/4;
set(handles.text37,'String',qc3);
pos=0;
for i=1:n
    if(a(i,4)>qc3)
        m1=a(i,4);
        pos=i;
        break;
    end
end
set(handles.text39,'String',a(pos,1));
set(handles.text41,'String',a(pos,2));
c=a(pos,2)-a(pos,1);
q3=a(pos,1)+((((3*(a(n,4))/4))-a(pos-1,4))/a(pos,3))*c;
set(handles.text44,'String',q3);
set(handles.pushbutton11,'visible','on');


% --- Executes during object creation, after setting all properties.
function pushbutton11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
