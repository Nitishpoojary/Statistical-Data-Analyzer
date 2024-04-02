function varargout = Percentage(varargin)
% PERCENTAGE MATLAB code for Percentage.fig
%      PERCENTAGE, by itself, creates a new PERCENTAGE or raises the existing
%      singleton*.
%
%      H = PERCENTAGE returns the handle to a new PERCENTAGE or the handle to
%      the existing singleton*.
%
%      PERCENTAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERCENTAGE.M with the given input arguments.
%
%      PERCENTAGE('Property','Value',...) creates a new PERCENTAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Percentage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Percentage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Percentage

% Last Modified by GUIDE v2.5 25-Jul-2013 10:56:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Percentage_OpeningFcn, ...
                   'gui_OutputFcn',  @Percentage_OutputFcn, ...
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


% --- Executes just before Percentage is made visible.
function Percentage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Percentage (see VARARGIN)
clc;
global i;
i=0;
global s;
s=struct([]);
set(handles.pushbutton2,'Visible','off');
% Choose default command line output for Percentage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Percentage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Percentage_OutputFcn(hObject, eventdata, handles) 
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
% global c;
global s;
n=str2double(get(handles.edit1,'String'));
for i=1:n
    disp(s(i,1).percentage);
    c(1,i)=s(i,1).percentage;
 c(2,i)=0;
    b=s(i,1).label;
    d{i}=b;
end
bar(c,'stacked'); 
title('Percentage Bar')
l=legend(d);
set(l,'Location','NorthEastOutside');


% 


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


% --- Executes on button press in pushhbutton1.
function pushhbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushhbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;
global s;
n=str2double(get(handles.edit1,'String'));
x1=get(handles.edit2,'String');
f=str2double(get(handles.edit3,'String'));
if isempty(x1)||isempty(f)||isnan(f)||~isreal(f)
    uicontrol(handles.edit3);
    set(handles.edit3,'String','');
    h=msgbox('Enter a valid input','ERROR','error');
else
    i=i+1;
    if(i<=n)
        set(handles.uitable1,'Rowname',{'label','x','Percentage','Cumulative'});
        s(i,1).label=x1;
        s(i,1).x=f;
        t=struct2cell(s);
        set(handles.uitable1,'data',t);
        set(handles.edit2,'string','');
        set(handles.edit3,'String','');
        uicontrol(handles.edit2);
    end
end
if i>=n
    set(handles.edit2,'Enable','Off');
    set(handles.edit3,'Enable','Off');
    set(handles.pushbutton2,'Visible','on');
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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
n=str2double(get(handles.edit1,'String'));
sum=0;
for i=1:n
    sum=sum+s(i,1).x;
end
for j=1:n
    s(j,1).percentage=s(j,1).x/sum*100;
end
t=struct2cell(s);
set(handles.uitable1,'data',t);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
n=str2double(get(handles.edit1,'String'));
s(1,1).cumulative=s(1,1).percentage;
for i=2:n
    s(i,1).cumulative=s(i,1).percentage+s(i-1,1).cumulative;
end
t=struct2cell(s);
set(handles.uitable1,'data',t);
set(handles.pushbutton7,'Visible','off');



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
handles.filename=uigetfile('*.xlsx');
guidata(hObject,handles);
filename=handles.filename;
[ndata,text,alldata]=xlsread(filename);
[n1,n2]=size(alldata);
z=text(1,1:end);
%disp(z(1));
y=alldata(2,1:end);
set(handles.uitable1,'Data',alldata);
disp(z);
disp(y);

% for i=1:n2
% s(1,i).label=z(i);
%         s(1,i).x=y(i);
%         t=struct2cell(s);
% end
% h=waitbar(0,'Please wait...');
% steps=200;
% for step=1:steps
%     waitbar(step/steps)
% end
% close(h)
% set(handles.uitable1,'Data',alldata);
% set(handles.uitable1,'Rowname',{'label','x','Percentage','Cumulative'});
% set(handles.pushbutton4,'Visible','on');
% set(handles.pushbutton5,'Visible','on');
% set(handles.pushbutton7,'Visible','on');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;

filename=handles.filename;
[ndata,text,alldata]=xlsread(filename);
[n1,n2]=size(alldata);
z=text(1,1:end);
%disp(z(1));
y=alldata(2,1:end);
% set(handles.uitable1,'Data',alldata);
disp(z);
disp(y);

% filename=handles.filename;
% [ndata,text,alldata]=xlsread(filename);
% disp(text);
% disp(size(text));
% disp(ndata);
% disp(alldata);
% [n1,n2]=size(alldata);
% z=text(:,:);
% y=ndata(:,:);
% %z=cell2mat(alldata(1:n1,1:n2));
% h=waitbar(0,'Please wait...');
% steps=200;
% for step=1:steps
%     waitbar(step/steps)
% end
% close(h)
% set(handles.uitable1,'Data',alldata);
% set(handles.uitable1,'RowName',{'label','Y','Percentage','Cumulative'});
% set(handles.pushbutton4,'Visible','on');
% set(handles.pushbutton5,'Visible','on');
% set(handles.pushbutton7,'Visible','on');
for i=1:n2
s(1,i).label=z(i);
        s(2,i).x=y(1,i);
        disp(s(2,i).x);
end
%  t=struct2cell(s);
% set(handles.uitable1,'Data',t);
sum=0;
 
y1=cell2mat(y);
for i=1:n2
    sum=sum+y1(1,i);
end

disp(sum);
% for i=1:1:15
%     for j=1:1:15
%         k(i,j)=' ';
%     end
% end
% z=cell2mat(z);
for i=1:n2
    
per=y1(1,i)/sum*100;
s(3,i).percentage=per;
disp(s(3,i).percentage);
end

s(4,1).cumulative=s(3,1).percentage;
for i=2:n2
   s(4,i).cumulative=s(3,i).percentage+s(4,i-1).cumulative;
end
for i=1:n2
    c(1,i)=s(3,i).percentage;
    c(2,i)=0;
    b=s(1,i).label;
    disp(b);
    d{i}=b;
end
% t1=struct2cell(s);
set(handles.uitable1,'Data',alldata);
% disp(t1(2,1));
% 
% 
c=bar(c,'stacked'); 
t=title('Percentage Bar');

% l=legend(d);
% 
% set(l,'Location','NorthEastOutside');
% end
% title(t);
% % 

% --- Executes during object creation, after setting all properties.
function pushbutton6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
