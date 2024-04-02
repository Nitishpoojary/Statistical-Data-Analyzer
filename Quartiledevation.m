function varargout = Quartiledevation(varargin)
% QUARTILEDEVATION MATLAB code for Quartiledevation.fig
%      QUARTILEDEVATION, by itself, creates a new QUARTILEDEVATION or raises the existing
%      singleton*.
%
%      H = QUARTILEDEVATION returns the handle to a new QUARTILEDEVATION or the handle to
%      the existing singleton*.
%
%      QUARTILEDEVATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUARTILEDEVATION.M with the given input arguments.
%
%      QUARTILEDEVATION('Property','Value',...) creates a new QUARTILEDEVATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Quartiledevation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Quartiledevation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Quartiledevation

% Last Modified by GUIDE v2.5 24-Aug-2013 18:35:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Quartiledevation_OpeningFcn, ...
                   'gui_OutputFcn',  @Quartiledevation_OutputFcn, ...
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


% --- Executes just before Quartiledevation is made visible.
function Quartiledevation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Quartiledevation (see VARARGIN)
clc;
global i;
i=0;
global s;
for k=1:10
    for j=1:1
        a(k,j)=0;
    end
end
set(handles.uitable1,'data',{''});

% Choose default command line output for Quartiledevation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Quartiledevation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Quartiledevation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Q1=str2double(get(handles.text7,'String'));
Q3=str2double(get(handles.text12,'String'));
CQ=(Q3-Q1)/(Q3+Q1);
set(handles.text18,'String',CQ);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
set(handles.uipanel6,'visible','On');
n=str2double(get(handles.edit1,'String'));
q1=(n+1)/4;
set(handles.text4,'String',q1);
f=fix(q1);
g=f+1;
Q1=a(f,1)+(q1-f)*(a(g,1)-a(f,1));
set(handles.text7,'String',Q1);




% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
set(handles.uipanel7,'visible','On');
n=str2double(get(handles.edit1,'String'));
q2=3*((n+1)/4);
set(handles.text9,'String',q2);
f=fix(q2);
g=f+1;
Q3=a(f,1)+(q2-f)*(a(g,1)-a(f,1));
set(handles.text12,'String',Q3);
set(handles.pushbutton5,'visible','On');




% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Q1=str2double(get(handles.text7,'String'));
Q3=str2double(get(handles.text12,'String'));
QD=(Q3-Q1)/2;
set(handles.text14,'String',QD);
set(handles.uipanel9,'visible','On');




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
g=str2double(get(hObject,'String'));
if isnan(g)|| ~isreal(g)||g<=0
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
i=i+1;
if(i<=n)
    set(handles.uitable1,'ColumnName',{'x'});
    a(i,1)=str2double(get(handles.edit2,'String'));
    set(handles.uitable1,'data',a);
    set(handles.edit2,'String','');
    uicontrol(handles.edit2);
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.pushbutton2,'visible','On');
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
n=str2double(get(handles.edit1,'String'));
for i=1:n
    b(i,1)=a(i,1);
    c=sort(b);
    set(handles.uitable1,'data',c);
end
set(handles.uipanel1,'visible','on');
set(handles.uipanel5,'visible','on');
