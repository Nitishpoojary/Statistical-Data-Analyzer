function varargout = Quartiledeviation_g(varargin)
% QUARTILEDEVIATION_G MATLAB code for Quartiledeviation_g.fig
%      QUARTILEDEVIATION_G, by itself, creates a new QUARTILEDEVIATION_G or raises the existing
%      singleton*.
%
%      H = QUARTILEDEVIATION_G returns the handle to a new QUARTILEDEVIATION_G or the handle to
%      the existing singleton*.
%
%      QUARTILEDEVIATION_G('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUARTILEDEVIATION_G.M with the given input arguments.
%
%      QUARTILEDEVIATION_G('Property','Value',...) creates a new QUARTILEDEVIATION_G or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Quartiledeviation_g_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Quartiledeviation_g_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Quartiledeviation_g

% Last Modified by GUIDE v2.5 27-May-2013 11:44:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Quartiledeviation_g_OpeningFcn, ...
                   'gui_OutputFcn',  @Quartiledeviation_g_OutputFcn, ...
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


% --- Executes just before Quartiledeviation_g is made visible.
function Quartiledeviation_g_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Quartiledeviation_g (see VARARGIN)
clc;
global i;
i=0;
global s;
for k=1:10
    for j=1:4
        a(k,j)=0;
    end
end
set(handles.uitable1,'data',{' '});
% Choose default command line output for Quartiledeviation_g
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Quartiledeviation_g wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Quartiledeviation_g_OutputFcn(hObject, eventdata, handles) 
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
a(1,4)=a(1,3);
for i=2:n
    a(i,4)=a(i,3)+a(i-1,4);
end
set(handles.uitable1,'data',a);
set(handles.uipanel2,'visible','On');
set(handles.uipanel4,'visible','On');

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
q1=str2double(get(handles.text20,'String'));
q3=str2double(get(handles.text26,'String'));
CQ=(q3-q1)/(q3+q1);
set(handles.text13,'String',CQ);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
qc3=(3*a(n,4))/4;
set(handles.text9,'String',qc3);
pos=0;
for i=1:n
    if(a(i,4)>=qc3)
        m1=a(i,4);
        pos=i;
        break;
    end
end
set(handles.text21,'String',a(pos,1));
set(handles.text23,'String',a(pos,2));
c=a(pos,2)-a(pos,1);
q3=a(pos,1)+((((3*(a(n,4))/4))-a(pos-1,4))/a(pos,3))*c;
set(handles.text26,'String',q3);
set(handles.pushbutton5,'Visible','On');
set(handles.uipanel8,'visible','On');


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
q1=str2double(get(handles.text20,'String'));
q3=str2double(get(handles.text26,'String'));
QD=(q3-q1)/2;
set(handles.text12,'String',QD);
set(handles.uipanel5,'Visible','On');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
qcl=a(n,4)/4;
set(handles.text6,'String',qcl);
pos=0;
for i=1:n
    if(a(i,4)>=qcl)
        m1=a(i,4);
        pos=i;
        break;
    end
end
set(handles.text15,'String',a(pos,1));
set(handles.text11,'String',a(pos,2));
c=a(pos,2)-a(pos,1);
q1=a(pos,1)+((((a(n,4)/4))-a(pos-1,4))/a(pos,3))*c;
set(handles.text20,'String',q1);
set(handles.uipanel4,'Visible','On');
set(handles.uipanel6,'visible','On');


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double

e=str2double(get(hObject,'String'));
if isnan(e)|| ~isreal(e)||e<=0
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
