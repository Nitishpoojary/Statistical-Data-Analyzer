function varargout = Standerd_deviation(varargin)
% STANDERD_DEVIATION MATLAB code for Standerd_deviation.fig
%      STANDERD_DEVIATION, by itself, creates a new STANDERD_DEVIATION or raises the existing
%      singleton*.
%
%      H = STANDERD_DEVIATION returns the handle to a new STANDERD_DEVIATION or the handle to
%      the existing singleton*.
%
%      STANDERD_DEVIATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STANDERD_DEVIATION.M with the given input arguments.
%
%      STANDERD_DEVIATION('Property','Value',...) creates a new STANDERD_DEVIATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Standerd_deviation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Standerd_deviation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Standerd_deviation

% Last Modified by GUIDE v2.5 27-May-2013 12:00:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Standerd_deviation_OpeningFcn, ...
                   'gui_OutputFcn',  @Standerd_deviation_OutputFcn, ...
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


% --- Executes just before Standerd_deviation is made visible.
function Standerd_deviation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Standerd_deviation (see VARARGIN)
clc;
global i;
i=0;
global a;
for k=1:10
    for j=1:10
        a(k,j)=0;
    end
end
set(handles.uitable1,'data',{''});
% Choose default command line output for Standerd_deviation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Standerd_deviation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Standerd_deviation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
t=str2double(get(handles.text10,'String'));
d=str2double(get(handles.text6,'String'));
n=str2double(get(handles.edit1,'String'));
s=sqrt((d/n)-((t/n)^2));
set(handles.text15,'String',s);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
b=0;
for i=1:n
   b=b+a(i,1);
end
q=b/n;
set(handles.text16,'String',q);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
t1=str2double(get(handles.text15,'String'));
d1=str2double(get(handles.text16,'String'));
n=str2double(get(handles.edit1,'String'));
s1=(t1/d1)*100;
set(handles.text17,'String',s1);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    x=a(i,1)*a(i,1);
    a(i,2)=x;
end
set(handles.uitable1,'data',a);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
sum2=0;
for i=1:n
    sum2=sum2+a(i,2);
end
set(handles.text6,'String',sum2);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
t=str2double(get(handles.text10,'String'));
d=str2double(get(handles.text6,'String'));
n=str2double(get(handles.edit1,'String'));
s=sqrt((d/n)-((t/n)^2));
set(handles.text7,'String',s);
set(handles.uipanel4,'visible','On');
set(handles.text11,'visible','On');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
sum1=0;
for i=1:n
    sum1=sum1+a(i,1);
end
set(handles.text10,'String',sum1);

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
        set(handles.uitable1,'ColumnName',{'x','x*x'});
        a(i,1)=x1;
        set(handles.uitable1,'data',a);
        set(handles.edit2,'string','');
        uicontrol(handles.edit2);
    end
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.pushbutton1,'Enable','on');
%     set(handles.pushbutton2,'Visible','on');
end
set(handles.uipanel3,'visible','On');
set(handles.text8,'visible','On');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
g=str2double(get(hObject,'String'));
if isnan(g)|| ~isreal(g)||g<=0||isempty(g)
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
