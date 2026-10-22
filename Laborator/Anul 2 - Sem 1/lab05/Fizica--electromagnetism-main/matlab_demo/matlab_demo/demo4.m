function varargout = demo4(varargin)
% DEMO4 M-file for demo4.fig
%      DEMO4 - ilustrates the reflection of transient waves on
% lossless transmission lines

% Code by Gabriela Ciuprina 
% gabriela@lmn.pub.ro
% www.lmn.pub.ro/~gabriela
% Last update by GC - 07 April 2008


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @demo4_OpeningFcn, ...
    'gui_OutputFcn',  @demo4_OutputFcn, ...
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


% --- Executes just before demo4 is made visible.
function demo4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to demo4 (see VARARGIN)

% Choose default command line output for demo4
handles.parameters.index = 1;
handles.parameters.E0 = 10;
handles.parameters.Z0 = 150;
handles.parameters.R = 350;
handles.parameters.L = 1e-3;
handles.parameters.C = 1e-3;
handles.parameters.l = 1;
handles.parameters.l_impuls = 1/10;
handles.parameters.v = 1e8;
handles.parameters.no_pct = 200;
%handles.parameters.T = 2*handles.parameters.Z0*handles.parameters.C;
handles.output = hObject;
clear_figures(handles);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes demo4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = demo4_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on selection change in popup_problema.
function popup_problema_Callback(hObject, eventdata, handles)
% hObject    handle to popup_problema (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.index = get(hObject,'Value');
clear_figures(handles);
guidata(hObject,handles); % Save the handles structure after adding data

% --- Executes during object creation, after setting all properties.
function popup_problema_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_problema (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit_E0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_E0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.E0 = str2double(get(hObject,'String'));
clear_figures(handles);
guidata(hObject,handles); % Save the handles structure after adding data

% --- Executes during object creation, after setting all properties.
function edit_E0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_E0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Z0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Z0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.Z0 = str2double(get(hObject,'String'));
clear_figures(handles);
guidata(hObject,handles); % Save the handles structure after adding data

% --- Executes during object creation, after setting all properties.
function edit_Z0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Z0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_R_Callback(hObject, eventdata, handles)
% hObject    handle to edit_R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.R = str2double(get(hObject,'String'));
clear_figures(handles);
guidata(hObject,handles); % Save the handles structure after adding data



% --- Executes during object creation, after setting all properties.
function edit_R_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_L_Callback(hObject, eventdata, handles)
% hObject    handle to edit_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.L = str2double(get(hObject,'String'));
clear_figures(handles);
guidata(hObject,handles); % Save the handles structure after adding data


% --- Executes during object creation, after setting all properties.
function edit_L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_C_Callback(hObject, eventdata, handles)
% hObject    handle to edit_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.C = str2double(get(hObject,'String'));
clear_figures(handles);
guidata(hObject,handles); % Save the handles structure after adding data


% --- Executes during object creation, after setting all properties.
function edit_C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function clear_figures(handles)
axes(handles.axes_tensiune_sarcina);
cla;
axes(handles.axes_curent_sarcina);
cla;
axes(handles.axes_tensiune);
cla;
axes(handles.axes_curent);
cla;



function draw_tnegativ_E0(handles)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
l = handles.parameters.l;
v = handles.parameters.v;
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);
t = 0.5*l/v;
vector_y = E0*my_heaviside(t-vector_x/v);
axes(handles.axes_tensiune);
plot(vector_x,vector_y);
axis([0,l,1.2*min(vector_y),1.2*max(vector_y)]);
ylabel(' u [v]');
title('Tensiunea la t < 0');
vector_y = E0/Z0*my_heaviside(t-vector_x/v);
axes(handles.axes_curent);
plot(vector_x,vector_y);
axis([0,l,1.2*min(vector_y),1.2*max(vector_y)]);
xlabel(' x [m]');
ylabel(' i [A]');
title('Curentul la t < 0');

function Y = my_heaviside(X)
Y = zeros(size(X));
Y(X > 0) = 1;
Y(X == 0) = 0;

% --- Executes on button press in pushbutton_animatie.
function pushbutton_animatie_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_animatie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

switch handles.parameters.index
    case 1
        reflexie_R(handles);
    case 2
        reflexie_gol(handles);
    case 3
        reflexie_L(handles);
    case 4
        reflexie_C(handles);
    case 5
        reflexie_RL(handles);
    case 6
        reflexie_impuls(handles);
    case 7
        reflexie_front_exp(handles);
    otherwise
        disp('Case not implemented');
end

function reflexie_R(handles)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
R = handles.parameters.R;
v = handles.parameters.v;
l = handles.parameters.l;
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);
t0 = l/v;
vector_t = linspace(0,t0,no_pct);
for k = 1:no_pct
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    ylabel(' u[V]');
    title('Tensiune t < 0');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    ylabel(' i[A]');
    title('Curent t < 0');
    xlabel(' x[m]');
    drawnow;
end
for k = 1:no_pct/2
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0+(R-Z0)/(R+Z0)*E0*my_heaviside(t-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    title('Tensiune t > 0');
    ylabel(' u[V]');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0+(Z0-R)/(Z0+R)*E0/Z0*my_heaviside(t-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    title('Curent t > 0');
    ylabel(' i[A]');
    xlabel(' x[m]');
    drawnow;
end
axes(handles.axes_tensiune); grid on;
axes(handles.axes_curent); grid on;

function reflexie_gol(handles)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
v = handles.parameters.v;
l = handles.parameters.l;
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);
t0 = l/v;
vector_t = linspace(0,t0,no_pct);
for k = 1:no_pct
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    ylabel(' u[V]');
    title('Tensiune t < 0');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    ylabel(' i[A]');
    title('Curent t < 0');
    xlabel(' x[m]');
    drawnow;
end
for k = 1:no_pct/2
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0 + E0*my_heaviside(t-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    title('Tensiune t > 0');
    ylabel(' u[V]');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0 - E0/Z0*my_heaviside(t-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    title('Curent t > 0');
    ylabel(' i[A]');
    xlabel(' x[m]');
    drawnow;
end
axes(handles.axes_tensiune); grid on;
axes(handles.axes_curent); grid on;


function reflexie_L(handles)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
L = handles.parameters.L;
tau = L/Z0;
v = handles.parameters.v;
l = 8*tau*v;
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);
t0 = l/v;
vector_t = linspace(0,t0,no_pct);
for k = 1:no_pct
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    ylabel(' u[V]');
    title('Tensiune t < 0');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    ylabel(' i[A]');
    title('Curent t < 0');
    xlabel(' x[m]');
    drawnow;
end
for k = 1:no_pct/2
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0+(-1 + 2*exp(-(t-(l-vector_x)/v)/tau)).*E0.*my_heaviside(t-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    title('Tensiune t > 0');
    ylabel(' u[V]');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0+(1 - 2*exp(-(t-(l-vector_x)/v)/tau)).*(E0/Z0).*my_heaviside(t-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    title('Curent t > 0');
    ylabel(' i[A]');
    xlabel(' x[m]');
    drawnow;
end
axes(handles.axes_tensiune); grid on;
axes(handles.axes_curent); grid on;


function reflexie_C(handles)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
C = handles.parameters.C;
tau = Z0*C;
v = handles.parameters.v;
l = 8*tau*v;
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);
t0 = l/v;
vector_t = linspace(0,t0,no_pct);
for k = 1:no_pct
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    ylabel(' u[V]');
    title('Tensiune t < 0');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    ylabel(' i[A]');
    title('Curent t < 0');
    xlabel(' x[m]');
    drawnow;
end
for k = 1:no_pct/2
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0 + (1 - 2*exp(-(t-(l-vector_x)/v)/tau)).*E0.*my_heaviside(t-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    title('Tensiune t > 0');
    ylabel(' u[V]');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0 + (-1 + 2*exp(-(t-(l-vector_x)/v)/tau)).*(E0/Z0).*my_heaviside(t-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    title('Curent t > 0');
    ylabel(' i[A]');
    xlabel(' x[m]');
    drawnow;
end
axes(handles.axes_tensiune); grid on;
axes(handles.axes_curent); grid on;

function reflexie_RL(handles)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
L = handles.parameters.L;
R = handles.parameters.R;
tau = L/(R+Z0);
v = handles.parameters.v;
l = 8*tau*v;
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);
t0 = l/v;
vector_t = linspace(0,t0,no_pct);
for k = 1:no_pct
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    ylabel(' u[V]');
    title('Tensiune t < 0');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    ylabel(' i[A]');
    title('Curent t < 0');
    xlabel(' x[m]');
    drawnow;
end
for k = 1:no_pct/2
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0+((R-Z0)/(R+Z0) + 2*Z0/(R+Z0)*exp(-(t-(l-vector_x)/v)/tau)).*E0.*my_heaviside(t-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    title('Tensiune t > 0');
    ylabel(' u[V]');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0+((Z0-R)/(Z0+R) - 2*Z0/(R+Z0)*exp(-(t-(l-vector_x)/v)/tau)).*(E0/Z0).*my_heaviside(t-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    title('Curent t > 0');
    ylabel(' i[A]');
    xlabel(' x[m]');
    drawnow;
end
axes(handles.axes_tensiune); grid on;
axes(handles.axes_curent); grid on;



function draw_tnegativ_impuls(handles)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
l = handles.parameters.l;
v = handles.parameters.v;
l_impuls = handles.parameters.l_impuls;
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);
t = 0.5*l/v;
vector_y = E0*(my_heaviside(t-vector_x/v)-my_heaviside(t-(vector_x+l_impuls)/v));
axes(handles.axes_tensiune);
plot(vector_x,vector_y);
axis([0 l -2.1*E0 2.1*E0]);
ylabel(' u [v]');
title('Tensiunea la t < 0');
vector_y = E0/Z0*(my_heaviside(t-vector_x/v)-my_heaviside(t-(vector_x+l_impuls)/v));
axes(handles.axes_curent);
plot(vector_x,vector_y);
axis([0 l -2.1*E0/Z0 2.1*E0/Z0]);
xlabel(' x [m]');
ylabel(' i [A]');
title('Curentul la t < 0');

function reflexie_impuls(handles)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
R = handles.parameters.R;
v = handles.parameters.v;
l = handles.parameters.l;
l_impuls = handles.parameters.l_impuls;
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);
t0 = l/v;
vector_t = linspace(0,t0,no_pct);
for k = 1:no_pct
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0*(my_heaviside(t-vector_x/v)-my_heaviside(t-(vector_x+l_impuls)/v));
    plot(vector_x,vector_y);
    axis([0 l -2.1*E0 2.1*E0]);
    ylabel(' u[V]');
    title('Tensiune t < 0');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0*(my_heaviside(t-vector_x/v)-my_heaviside(t-(vector_x+l_impuls)/v));
    plot(vector_x,vector_y);
    axis([0 l -2.1*E0/Z0 2.1*E0/Z0]);
    ylabel(' i[A]');
    title('Curent t < 0');
    xlabel(' x[m]');
    drawnow;
end
for k = 1:no_pct/2
    axes(handles.axes_tensiune);
    t = vector_t(k) + t0;
    vector_y = E0*(my_heaviside(t-vector_x/v)-my_heaviside(t-(vector_x+l_impuls)/v)) + ...
        (R-Z0)/(R+Z0)*E0*(my_heaviside((t-t0)-(l-vector_x)/v)- my_heaviside((t-t0)-(l-vector_x-l_impuls)/v));
    plot(vector_x,vector_y);
    axis([0 l -2.1*E0 2.1*E0]);
    title('Tensiune t > 0');
    ylabel(' u[V]');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0*(my_heaviside(t-vector_x/v)-my_heaviside(t-(vector_x+l_impuls)/v))+...
        (Z0-R)/(Z0+R)*E0/Z0*(my_heaviside((t-t0)-(l-vector_x)/v)- my_heaviside((t-t0)-(l-vector_x-l_impuls)/v));
    plot(vector_x,vector_y);
    axis([0 l -2.1*E0/Z0 2.1*E0/Z0]);
    title('Curent t > 0');
    ylabel(' i[A]');
    xlabel(' x[m]');
    drawnow;
end
axes(handles.axes_tensiune); grid on;
axes(handles.axes_curent); grid on;



function draw_tnegativ_front_exp(handles)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
C = handles.parameters.C;
T = 2*Z0*C;
l = 2*T*handles.parameters.v;
%handles.parameters.l = handles.parameters.T*handles.parameters.v*2;
v = handles.parameters.v;
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);
t = 0.5*l/v;
vector_y = E0.*(1-exp(-(t-vector_x/v)/T)).*my_heaviside(t-vector_x/v);
axes(handles.axes_tensiune);
plot(vector_x,vector_y);
axis([0,l,1.2*min(vector_y),1.2*max(vector_y)]);
ylabel(' u [v]');
title('Tensiunea la t < 0');
vector_y = E0/Z0.*(1-exp(-(t-vector_x/v)/T)).*my_heaviside(t-vector_x/v);
axes(handles.axes_curent);
plot(vector_x,vector_y);
axis([0,l,1.2*min(vector_y),1.2*max(vector_y)]);
xlabel(' x [m]');
ylabel(' i [A]');
title('Curentul la t < 0');

function reflexie_front_exp(handles)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
C = handles.parameters.C;
v = handles.parameters.v;
l = handles.parameters.l;
tau = Z0*C;
T = 2*tau;
l = 8*max(T,tau)*v;
disp(sprintf('Reflexie, front exponential T = %e, tau = %e',T,tau));
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);
t0 = l/v;
vector_t = linspace(0,t0,no_pct);
for k = 1:no_pct
    axes(handles.axes_tensiune);
    t = vector_t(k);
    vector_y = E0.*(1-exp(-(t-vector_x/v)/T)).*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    ylabel(' u[V]');
    title('Tensiune t < 0');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0.*(1-exp(-(t-vector_x/v)/T)).*my_heaviside(t-vector_x/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    ylabel(' i[A]');
    title('Curent t < 0');
    xlabel(' x[m]');
    drawnow;
end
for k = 1:2/3*no_pct
    axes(handles.axes_tensiune);
    t = vector_t(k)+t0;
    vector_y = E0.*(1-exp(-(t-vector_x/v)/T)).*my_heaviside(t-vector_x/v) + ...
        E0.*(1-(T+tau)./(T-tau).*exp(-(t-t0-(l-vector_x)/v)/T)+...
        2*tau./(T-tau).*exp(-(t-t0-(l-vector_x)/v)/tau)).*my_heaviside(t-t0-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0]);
    title('Tensiune t > 0');
    ylabel(' u[V]');
    drawnow;
    axes(handles.axes_curent);
    vector_y = E0/Z0.*(1-exp(-(t-vector_x/v)/T)).*my_heaviside(t-vector_x/v) - ...
        E0/Z0.*(1-(T+tau)./(T-tau).*exp(-(t-t0-(l-vector_x)/v)/T)+...
        2*tau./(T-tau).*exp(-(t-t0-(l-vector_x)/v)/tau)).*my_heaviside(t-t0-(l-vector_x)/v);
    plot(vector_x,vector_y);
    axis([0 l 0 2.1*E0/Z0]);
    title('Curent t > 0');
    ylabel(' i[A]');
    xlabel(' x[m]');
    drawnow;
end

axes(handles.axes_tensiune); grid on;
axes(handles.axes_curent); grid on;



% --- Executes on button press in pushb_draw_initial.
function pushb_draw_initial_Callback(hObject, eventdata, handles)
% hObject    handle to pushb_draw_initial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if and(handles.parameters.index ~= 6,handles.parameters.index ~= 7)
    draw_tnegativ_E0(handles);
elseif handles.parameters.index == 6
    draw_tnegativ_impuls(handles);
elseif handles.parameters.index == 7
    draw_tnegativ_front_exp(handles);
else
    disp('draw_tnegativ - case not implemented');
end
axes(handles.axes_tensiune_sarcina);
cla;
axes(handles.axes_curent_sarcina);
cla;

% --- Executes on button press in pushb_marimi_sarcina.
function pushb_marimi_sarcina_Callback(hObject, eventdata, handles)
% hObject    handle to pushb_marimi_sarcina (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
E0 = handles.parameters.E0;
Z0 = handles.parameters.Z0;
R = handles.parameters.R;
L = handles.parameters.L;
C = handles.parameters.C;
v = handles.parameters.v;
l = handles.parameters.l;
l_impuls = handles.parameters.l_impuls;
no_pct = handles.parameters.no_pct;
vector_x = linspace(0,l,no_pct);

switch handles.parameters.index
    case 1
        t0 = l/v;
        vector_t = linspace(0,t0,no_pct);
        %axes(handles.axes_tensiune_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = E0+(R-Z0)/(R+Z0)*E0*ones(1,no_pct);
        t = [t1 t2];
        t = t-t0;
        yu = [y1 y2];
        %axis([-t0, t0, 0 2.1*E0]);
        %axes(handles.axes_curent_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = E0/Z0-(R-Z0)/(R+Z0)*E0/Z0*ones(1,no_pct);
        t = [t1 t2];
        t = t-t0;
        yc = [y1 y2];
        %axis([-t0, t0, 0 2.1*E0/Z0]);
    case 2
        t0 = l/v;
        vector_t = linspace(0,t0,no_pct);
        %axes(handles.axes_tensiune_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = 2*E0*ones(1,no_pct);
        t = [t1 t2];
        t = t-t0;
        yu = [y1 y2];
        %axis([-t0, t0, 0 2.1*E0]);
        %axes(handles.axes_curent_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = zeros(1,no_pct);;
        t = [t1 t2];
        t = t-t0;
        yc = [y1 y2];
        %axis([-t0, t0, 0 2.1*E0/Z0]);
    case 3
        tau = L/Z0;
        t0 = 8*tau;
        vector_t = linspace(0,t0,no_pct);
        %axes(handles.axes_tensiune_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = E0+(-1 + 2*exp(-t1/tau)).*E0.*my_heaviside(t1);
        t2(1) = [];
        y2(1) = [];
        t = [t1 t2];
        t = t-t0;
        yu = [y1 y2];
        %axis([-t0, t0, 0 2.1*E0]);
        %axes(handles.axes_curent_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = E0/Z0+(1 - 2*exp(-t1/tau)).*(E0/Z0).*my_heaviside(t1);
        t2(1) = [];
        y2(1) = [];
        t = [t1 t2];
        t = t-t0;
        yc = [y1 y2];
        %axis([-t0, t0, 0 2.1*E0/Z0]);
    case 4
        %axes(handles.axes_tensiune_sarcina);
        tau = Z0*C;
        t0 = 8*tau;
        vector_t = linspace(0,t0,no_pct);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = E0 + (1 - 2*exp(-(t1/tau))).*E0.*my_heaviside(t1);
        t2(1) = [];
        y2(1) = [];
        t = [t1 t2];
        t = t-t0;
        yu = [y1 y2];
        %axis([-t0, t0, 0 2.1*E0]);
        %axes(handles.axes_curent_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = E0/Z0 + (-1 + 2*exp(-(t1/tau))).*(E0/Z0).*my_heaviside(t1);
        t2(1) = [];
        y2(1) = [];
        t = [t1 t2];
        t = t-t0;
        yc = [y1 y2];
        %axis([-t0, t0, 0 2.1*E0/Z0]);
    case 5
        tau = L/(R+Z0);
        t0 = 8*tau;
        vector_t = linspace(0,t0,no_pct);
        %axes(handles.axes_tensiune_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = E0+((R-Z0)/(R+Z0) + 2*Z0/(R+Z0)*exp(-(t1)/tau)).*E0.*my_heaviside(t1);
        t2(1) = [];
        y2(1) = [];
        t = [t1 t2];
        t = t-t0;
        yu = [y1 y2];
        %axis([-t0, t0, 0 2.1*E0]);
        %axes(handles.axes_curent_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = E0/Z0+((Z0-R)/(Z0+R) - 2*Z0/(R+Z0)*exp(-(t1)/tau)).*(E0/Z0).*my_heaviside(t1);
        t2(1) = [];
        y2(1) = [];
        t = [t1 t2];
        t = t-t0;
        yc = [y1 y2];
        %axis([-t0, t0, 0 2.1*E0/Z0]);
    case 6
        t0 = l/v;
        vector_t = linspace(0,t0,no_pct);
        %axes(handles.axes_tensiune_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = (1+(R-Z0)/(R+Z0))*E0*(my_heaviside(t1)-my_heaviside(t1-l_impuls/v));
        t2(1) = [];
        y2(1) = [];
        t = [t1 t2];
        t = t-t0;
        yu = [y1 y2];
        %axis([-t0, t0 -2.1*E0 2.1*E0]);
        %axes(handles.axes_curent_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = (1-(R-Z0)/(R+Z0))*E0/Z0*(my_heaviside(t1)-my_heaviside(t1-l_impuls/v));
        t2(1) = [];
        y2(1) = [];
        t = [t1 t2];
        t = t-t0;
        yc = [y1 y2];
        %axis([-t0, t0 -2.1*E0/Z0 2.1*E0/Z0]);
    case 7
        tau = Z0*C;
        T = 2*tau;
        t0 = 8*max(T,tau);
        vector_t = linspace(0,t0,no_pct);
        %axes(handles.axes_tensiune_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = E0.*(1-exp(-t1/T)).*my_heaviside(t1) + ...
            E0.*(1-(T+tau)/(T-tau)*exp(-t1/T) + tau/(T-tau)*exp(-t1/tau)).*my_heaviside(t1);
        t2(1) = [];
        y2(1) = [];
        t = [t1 t2];
        t = t-t0;
        yu = [y1 y2];
        %axis([-t0, t0 -3*E0 3*E0]);
        %axes(handles.axes_curent_sarcina);
        t1 = vector_t;
        y1 = zeros(1,no_pct);
        t2 = t1 + t0;
        y2 = E0/Z0.*(1-exp(-t1/T)).*my_heaviside(t1) - ...
            E0/Z0.*(1-(T+tau)/(T-tau)*exp(-t1/T) + tau/(T-tau)*exp(-t1/tau)).*my_heaviside(t1);
        t2(1) = [];
        y2(1) = [];
        t = [t1 t2];
        t = t-t0;
        yc = [y1 y2];
        %axis([-t0, t0 -3*E0/Z0 3*E0/Z0]);
    otherwise
        error('Case not implemented');
end
axes(handles.axes_tensiune_sarcina);
plot(t,yu);
xlabel('t [s]');
ylabel('u [V]');
title('Tensiunea pe sarcina');
grid on;
axes(handles.axes_curent_sarcina);
plot(t,yc);
xlabel('t [s]');
ylabel('i [A]');
title('Curentul pe sarcina');
grid on;