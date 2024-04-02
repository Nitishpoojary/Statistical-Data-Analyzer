function varargout = Standerd_deviation_grouped(varargin)
% STANDERD_DEVIATION_GROUPED MATLAB code for Standerd_deviation_grouped.fig
%      STANDERD_DEVIATION_GROUPED, by itself, creates a new STANDERD_DEVIATION_GROUPED or raises the existing
%      singleton*.
%
%      H = STANDERD_DEVIATION_GROUPED returns the handle to a new STANDERD_DEVIATION_GROUPED or the handle to
%      the existing singleton*.
%
%      STANDERD_DEVIATION_GROUPED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STANDERD_DEVIATION_GROUPED.M with the given input arguments.
%
%      STANDERD_DEVIATION_GROUPED('Property','Value',...) creates a new STANDERD_DEVIATION_GROUPED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Standerd_deviation_grouped_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Standerd_deviation_grouped_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Standerd_deviation_grouped

% Last Modified by GUIDE v2.5 05-Aug-2013 10:10:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Standerd_deviation_grouped_OpeningFcn, ...
                   'gui_OutputFcn',  @Standerd_deviation_grouped_OutputFcn, ...
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


% --- Executes just before Standerd_deviation_grouped is made visible.
function Standerd_deviation_grouped_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Standerd_deviation_grouped (see VARARGIN)
clc;
global i;
i=0;
global a;
for k=1:10
    for j=1:10
        a(k,j)=0;
    end
end
% Choose default command line output for Standerd_deviation_grouped
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Standerd_deviation_grouped wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Standerd_deviation_grouped_OutputFcn(hObject, eventdata, handles) 
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
t=str2double(get(handles.text5,'String'));
d=str2double(get(handles.text6,'String'));
v=str2double(get(handles.text19,'String'));
n=str2double(get(handles.edit1,'String'));
s=sqrt((v/t)-((d/t)^2));
set(handles.text12,'String',s);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
b=0;
for i=1:n
   b=b+a(i,3);
end
q=b/n;
set(handles.text13,'String',q);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
t1=str2double(get(handles.text12,'String'));
d1=str2double(get(handles.text13,'String'));
n=str2double(get(handles.edit1,'String'));
s1=(t1/d1)*100;
set(handles.text14,'String',s1);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    x=(a(i,1)+a(i,2))/2;
    a(i,4)=x;
end
set(handles.uitable1,'data',a);
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
sum1=0;
for i=1:n
   sum1=sum1+a(i,3);
   N=sum1;
 end
set(handles.text5,'String',N);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
sum2=0;
for i=1:n
   sum2=sum2+a(i,5);
   fx=sum2;
 end
set(handles.text6,'String',fx);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    fx2=a(i,3)*(a(i,4)*(a(i,4)));
    a(i,6)=fx2;
end
set(handles.uitable1,'data',a);
% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    fx=a(i,3)*a(i,4);
    a(i,5)=fx;
end
set(handles.uitable1,'data',a);
% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
sum3=0;
for i=1:n
   sum3=sum3+a(i,6);
   fx2=sum3;
 end
set(handles.text19,'String',fx2);

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
t=str2double(get(handles.text5,'String'));
d=str2double(get(handles.text6,'String'));
v=str2double(get(handles.text19,'String'));
n=str2double(get(handles.edit1,'String'));
s=sqrt((v/t)-((d/t)^2));
set(handles.text20,'String',s);
set(handles.uipanel4,'visible','On');
set(handles.text16,'visible','On');
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
    h=msgbox('enter a valid input','ERROR','error');
else
    i=i+1;
    if(i<=n)
        set(handles.uitable1,'ColumnName',{'Lowerlimit','Upperlimit','f','x','f*x','f*x*x'});
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
set(handles.uipanel3,'visible','On');
set(handles.text15,'visible','On');
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


% --- Executes during object creation, after setting all properties.
function pushbutton8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
