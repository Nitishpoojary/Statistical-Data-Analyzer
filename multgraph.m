function varargout = multgraph(varargin)
% MULTGRAPH MATLAB code for multgraph.fig
%      MULTGRAPH, by itself, creates a new MULTGRAPH or raises the existing
%      singleton*.
%
%      H = MULTGRAPH returns the handle to a new MULTGRAPH or the handle to
%      the existing singleton*.
%
%      MULTGRAPH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MULTGRAPH.M with the given input arguments.
%
%      MULTGRAPH('Property','Value',...) creates a new MULTGRAPH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before multgraph_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to multgraph_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help multgraph

% Last Modified by GUIDE v2.5 27-Jul-2013 18:34:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @multgraph_OpeningFcn, ...
                   'gui_OutputFcn',  @multgraph_OutputFcn, ...
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


% --- Executes just before multgraph is made visible.
function multgraph_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to multgraph (see VARARGIN)
clc;
global i;
i=0;
global a;
global r;
global c;
for l=1:10
    for m=1:7
        a(l,m)=0;
    end
end
for l=1:10
    r{l}=' ';
end
for l=1:10
    c{l}=' ';
end
global j;
global j1;
j=0;
global k;
k=1;
j1=0;
set(handles.uitable1,'RowName',r);
set(handles.uitable1,'ColumnName',c);
set(handles.uitable1,'ColumnName',{''});
set(handles.uitable1,'RowName',{''});

% Choose default command line output for multgraph
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes multgraph wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = multgraph_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
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
global a;
global r;
global c;
n=str2double(get(handles.edit1,'String'));
e1=str2double(get(handles.edit3,'String'));
for l=1:n
    r1{l}=r{l};
end
for l=1:n
    for m=1:e1
        b(l,m)=a(l,m);
    end
end
bar(b);
set(gca,'XtickLabel',c);
l=legend(r1);
set(l,'Location','NorthEastOutside');
t=get(handles.edit6,'String');
x1=get(handles.edit7,'String');
y1=get(handles.edit8,'String');
title(t);
xlabel(x1);
ylabel(y1);



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.filename=uigetfile('*.xlsx');
guidata(hObject,handles);
filename=handles.filename;
% values=xlsread(filename);
[ndata, text, alldata] = xlsread(filename);
set(handles.uitable1,'Data',alldata);

x=text(:,1);
y=ndata(1,2:end);
z=alldata(2:end,2:end);
disp(x);
disp(y);
disp(z);

% global z;
% global r;
% global e1;
% global c;
[n1,n2]=size(z);
z=cell2mat(z);

h=waitbar(0,'please wait...');
steps=200;
for step=1:steps
    waitbar(step/steps)
end
close(h);
% for l=1:n2
%     for m=1:7
%         z(l,m)=0;
%     end
% end
for l=1:n2
    r1{l}=x{l};
end
% 
for k=1:n1
    for m=1:n2
       b(k,m)=z(k,m);
     end
end


bar(b);
set(gca,'XtickLabel',y);
 s=legend(r1);
% set(s,'Location','NorthEastOutside');
% 
% % set(handles.uitable1,'Data','text','ndata');
% set(handles.uitable1,'Data',z);
t=get(handles.edit6,'String');
x1=get(handles.edit7,'String');
y1=get(handles.edit8,'String');
title(t);
xlabel(x1);
ylabel(y1);




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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global k;
global a;
global j1;
n=str2double(get(handles.edit1,'String'));
n1=str2double(get(handles.edit3,'String'));
fir=str2double(get(handles.edit5,'String'));

if isempty(fir)||isnan(fir)||~isreal(fir)
    uicontrol(handles.edit2);
    set(handles.edit5,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
else
    if(j1>=n1)
        k=k+1;
        j1=0;
    end
    if(k<=n)
        if(j1<=n1)
            j1=j1+1;
            a(k,j1)=str2double(get(handles.edit5,'String'));
            set(handles.uitable1,'data',a);
            set(handles.edit5,'String','');
            uicontrol(handles.edit5);
        end
    end
end
if k>=n && j1>=n1
    set(handles.edit5,'Enable','Off');
end




function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e1=str2double(get(hObject,'String'));
if isnan(e1)||~isreal(e1)||e1<=0
    uicontrol(handles.edit3);
    set(handles.edit3,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
end

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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
global c;
n1=str2double(get(handles.edit3,'String'));
j=j+1;
if(j<=n1)
    c{j}=get(handles.edit4,'String');
    set(handles.uitable1,'ColumnName',c);
    set(handles.edit4,'String','');
    uicontrol(handles.edit4);
end
if j>=n1
    set(handles.edit4,'Enable','Off');
    set(handles.uipanel2,'visible','On');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e=str2double(get(hObject,'String'));
if isnan(e)||~isreal(e)||e<=0
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global r;
n=str2double(get(handles.edit1,'String'));
i=i+1;
if(i<=n)
    r{i}=get(handles.edit2,'String');
    set(handles.uitable1,'RowName',r);
    set(handles.edit2,'String','');
    uicontrol(handles.edit2);
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.uipanel1,'visible','On');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global z;
handles.filename=uigetfile('*.xlsx');
% guidata(hObject,handles);
filename=handles.filename;
[ndata,ndata,alldata]=xlsread(filename);
[n1,n2]=size(alldata);
% x=text(:,1);
% y=ndata(:,2);
% z=ndata(:,3);
z=cell2mat(alldata);
% z=cell2mat(alldata(2:end,2:end));
h=waitbar(0,'please wait...');
steps=200;
for step=1:steps
    waitbar(step/steps)
end
close(h);
set(handles.uitable1,'Data',z);
