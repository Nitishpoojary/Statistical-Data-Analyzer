function varargout = Median_Grouped(varargin)
% MEDIAN_GROUPED MATLAB code for Median_Grouped.fig
%      MEDIAN_GROUPED, by itself, creates a new MEDIAN_GROUPED or raises the existing
%      singleton*.
%
%      H = MEDIAN_GROUPED returns the handle to a new MEDIAN_GROUPED or the handle to
%      the existing singleton*.
%
%      MEDIAN_GROUPED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MEDIAN_GROUPED.M with the given input arguments.
%
%      MEDIAN_GROUPED('Property','Value',...) creates a new MEDIAN_GROUPED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Median_Grouped_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Median_Grouped_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Median_Grouped

% Last Modified by GUIDE v2.5 13-Jul-2013 14:03:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Median_Grouped_OpeningFcn, ...
                   'gui_OutputFcn',  @Median_Grouped_OutputFcn, ...
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


% --- Executes just before Median_Grouped is made visible.
function Median_Grouped_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Median_Grouped (see VARARGIN)
clc;
global i;
i=0;
global a;
for k=1:10;
    for j=1:6
        a(k,j)=0;
    end
end
set(handles.pushbutton2,'visible','off');
set(handles.pushbutton8,'visible','off');
% set(handles.uipanel1,'visible','off');
set(handles.uipanel2,'visible','off');

% Choose default command line output for Median_Grouped
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Median_Grouped wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Median_Grouped_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=str2double(get(hObject,'String'));
if isnan(g)|| ~isreal(g)||g<=0||isempty(g)||rem(g,1)!0
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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global a;
n=str2double(get(handles.edit1,'String'));
u=str2double(get(handles.edit2,'String'));
l=str2double(get(handles.edit3,'String'));
f=str2double(get(handles.edit4,'String'));
if isempty(u)||isnan(u)||~isreal(u)||isempty(l)||isnan(l)||~isreal(l)||isempty(f)||isnan(f)||~isreal(f)||u>l
    uicontrol(handles.edit2);
    set(handles.edit2,'String','');
    set(handles.edit3,'String','');
    set(handles.edit4,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
else
    i=i+1;
    if(i<=n)
        set(handles.uitable1,'ColumnName',{'Lower Limit','Upper Limit','f','LCF'});
        a(i,1)=str2double(get(handles.edit2,'String'));
        a(i,2)=str2double(get(handles.edit3,'String'));
        a(i,3)=str2double(get(handles.edit4,'String'));
        set(handles.uitable1,'data',a);
        set(handles.edit2,'String','');
        set(handles.edit3,'String','');
        set(handles.edit4,'String','');
        uicontrol(handles.edit2);
    end
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.edit3,'Enable','Off');
    set(handles.edit4,'Enable','Off');
    set(handles.uipanel2,'visible','on');

end
set(handles.uipanel1,'visible','on');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MENU;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
a(1,4)=a(1,3);
for i=2:n
    a(i,4)=a(i,3)+a(i-1,4);
end
set(handles.uitable1,'data',a);
set(handles.pushbutton8,'visible','on');




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    b(i)=a(i,3);
end
x=max(b);
for i=1:n
    if(x==a(i,3))
        pos=i;
    end
end
e=a(pos,1);
f=a(pos,2);
set(handles.text20,'String',e); 
set(handles.text22,'String',f);
z=str2double(get(handles.text25,'String'));
l=a(pos-1,4);
c=f-e;
m=e+[(((((z/2)-l))/x)*c)];
set(handles.text24,'String',m);        
s=z/2;
set(handles.text23,'String',s); 


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


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
v=0;
for i=1:n
    v=v+a(i,3);
end
set(handles.text25,'String',v);
set(handles.pushbutton2,'visible','on');
