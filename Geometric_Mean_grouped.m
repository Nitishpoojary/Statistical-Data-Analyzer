function varargout = Geometric_Mean_grouped(varargin)
% GEOMETRIC_MEAN_GROUPED MATLAB code for Geometric_Mean_grouped.fig
%      GEOMETRIC_MEAN_GROUPED, by itself, creates a new GEOMETRIC_MEAN_GROUPED or raises the existing
%      singleton*.
%
%      H = GEOMETRIC_MEAN_GROUPED returns the handle to a new GEOMETRIC_MEAN_GROUPED or the handle to
%      the existing singleton*.
%
%      GEOMETRIC_MEAN_GROUPED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GEOMETRIC_MEAN_GROUPED.M with the given input arguments.
%
%      GEOMETRIC_MEAN_GROUPED('Property','Value',...) creates a new GEOMETRIC_MEAN_GROUPED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Geometric_Mean_grouped_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Geometric_Mean_grouped_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Geometric_Mean_grouped

% Last Modified by GUIDE v2.5 23-Jul-2013 09:21:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Geometric_Mean_grouped_OpeningFcn, ...
                   'gui_OutputFcn',  @Geometric_Mean_grouped_OutputFcn, ...
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


% --- Executes just before Geometric_Mean_grouped is made visible.
function Geometric_Mean_grouped_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Geometric_Mean_grouped (see VARARGIN)
clc;
global i;
i=0;
global a;
for k=1:10
    for j=1:6
        a(k,j)=0;
    end
end
set(handles.uipanel3,'visible','off');
% set(handles.uipanel1,'visible','off');
set(handles.pushbutton3,'visible','Off');
set(handles.pushbutton6,'visible','Off');
set(handles.pushbutton4,'visible','Off');
set(handles.pushbutton5,'visible','Off');
set(handles.pushbutton7,'visible','Off');
set(handles.text11,'visible','Off');
set(handles.text9,'visible','Off');
set(handles.text10,'visible','Off');
% Choose default command line output for Geometric_Mean_grouped
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Geometric_Mean_grouped wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Geometric_Mean_grouped_OutputFcn(hObject, eventdata, handles) 
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
for i=1:n
  a(i,5)=log10(a(i,4));
end

set(handles.uitable1,'data',a);
set(handles.pushbutton5,'visible','on');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
sum1=0;
for j=1:n
   sum1=sum1+a(j,3);
end
n=str2double(get(handles.edit1,'String'));
sum2=0;
for j=1:n
   sum2=sum2+a(j,6);
end
gm=10^(sum2/sum1);
set(handles.text14,'String',gm);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
 a(i,6)=a(i,3)*a(i,5);
end
set(handles.uitable1,'data',a);
set(handles.pushbutton6,'visible','on');
set(handles.text9,'visible','on');



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
sum1=0;
for j=1:n
   sum1=sum1+a(j,3);
end
set(handles.text12,'String',sum1);
set(handles.pushbutton7,'visible','on');
set(handles.text10,'visible','on');



% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
sum2=0;
for j=1:n
   sum2=sum2+a(j,6);
end
set(handles.text13,'String',sum2);
set(handles.pushbutton4,'visible','on');
set(handles.text11,'visible','on');




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
g=str2double(get(hObject,'String'));
if isnan(g)|| ~isreal(g)||g<=0||isempty(g)||rem(g,1)!0
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global  a;
n=str2double(get(handles.edit1,'String'));
u=str2double(get(handles.edit2,'String'));
l=str2double(get(handles.edit3,'String'));
f=str2double(get(handles.edit4,'String'));
if isempty(u)||isnan(u)|| ~isreal(u)||isempty(1)||isnan(1)||~isreal(1)||isempty(f)||isnan(f)||~isreal(f)||u>l
    uicontrol(handles.edit2);
    set(handles.edit4,'String','');
    set(handles.edit2,'String','');
    set(handles.edit3,'String','');
    h=msgbox('Enter  a valid input','ERROR','error');
else
    i=i+1;
    if u==l||u>l
        disp(a(i-1),1);
        set(handles.edit2,'String','');
        set(handles.edit3,'String','');
       
        h=msgbox('Enter a valid range','ERROR','error');
    else
        if i<=n
        set(handles.uitable1,'ColumnName',{'Lower Limit','Upper Limit','f','x','logX','FlogX'});
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
end

if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.edit3,'Enable','Off');
    set(handles.edit4,'Enable','Off');
    set(handles.uipanel2,'visible','on');
    set(handles.uipanel3,'visible','on');
end
set(handles.uipanel1,'visible','on');


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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
n=str2double(get(handles.edit1,'String'));
for i=1:n
  a(i,4)=(a(i,1)+a(i,2))/2;
end

set(handles.uitable1,'data',a);
set(handles.pushbutton3,'visible','on');


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MENU;
