function varargout = demo5(varargin)
% DEMO5 M-file for demo5.fig
%      DEMO5 - ilustrates the reflection of transient waves on
%             a ____finite____, lossless transmission line.

% Code by Gabriela Ciuprina 
% gabriela@lmn.pub.ro
% www.lmn.pub.ro/~gabriela
% Last update by GC - 09 April 2008

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @demo5_OpeningFcn, ...
                   'gui_OutputFcn',  @demo5_OutputFcn, ...
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


% --- Executes just before demo5 is made visible.
function demo5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to demo5 (see VARARGIN)
handles.parameters.E = 12;
handles.parameters.Z_G = 100;
handles.parameters.Z_0 = 50;
handles.parameters.l = 100;
handles.parameters.v = 3e8;
handles.parameters.Z_L = 200;
handles.parameters.n = 8;
handles.parameters.no_pct = 100;
handles = clear_figures(handles);

% Choose default command line output for demo5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes demo5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = demo5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_E_Callback(hObject, eventdata, handles)
% hObject    handle to edit_E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.E = str2double(get(hObject,'String'));
handles = clear_figures(handles);
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function edit_E_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Z_G_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Z_G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.Z_G = str2double(get(hObject,'String'));
handles = clear_figures(handles);
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function edit_Z_G_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Z_G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Z_0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Z_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.Z_0 = str2double(get(hObject,'String'));
handles = clear_figures(handles);
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function edit_Z_0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Z_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_l_Callback(hObject, eventdata, handles)
% hObject    handle to edit_l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.l = str2double(get(hObject,'String'));
handles = clear_figures(handles);
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit_l_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_v_Callback(hObject, eventdata, handles)
% hObject    handle to edit_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.v = str2double(get(hObject,'String'));
handles = clear_figures(handles);
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function edit_v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Z_L_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Z_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.Z_L = str2double(get(hObject,'String'));
handles = clear_figures(handles);
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function edit_Z_L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Z_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_n_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.parameters.n = str2double(get(hObject,'String'));
handles = clear_figures(handles);
guidata(hObject,handles);



% --- Executes during object creation, after setting all properties.
function edit_n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushb_marimi_generator.
function [minV maxV minC maxC] = draw_marimi_generator(handles)
E = handles.parameters.E;
Z_G = handles.parameters.Z_G;
Z_0 = handles.parameters.Z_0;
l = handles.parameters.l;
v = handles.parameters.v;
Z_L = handles.parameters.Z_L;
n = handles.parameters.n;
no_pct = handles.parameters.no_pct;
t0 = l/v;
Gamma_G = (Z_G - Z_0)/(Z_G + Z_0);
Gamma_L = (Z_L - Z_0)/(Z_L + Z_0);
vector_t = linspace(0,t0,no_pct);
vector_x = linspace(0,l,no_pct);
max_tens = Z_L/(Z_L + Z_G)*E;
if max_tens == 0
    max_tens = E;
end
max_crt = 1/(Z_0 + Z_G)*E;
E0 = Z_0/(Z_0 + Z_G)*E;

t = [];
u_G = [];
i_G = [];
for idx_n = 1:n+1 
    if idx_n == 1
        Efix = 0;
        Edir = E0;
        Ifix = 0;
        Idir = E0/Z_0;
        t = [t 0];
        u_G = [u_G Efix+Edir];
        i_G = [i_G Ifix+Idir];
        tcrt = 0;
    elseif mod(idx_n,2) == 0        
        Efix = Efix + Edir;
        Einv = Edir*Gamma_L;
        Ifix = Ifix + Idir;
        Iinv = -Idir*Gamma_L;       
        tcrt = tcrt + t0;
        t = [t tcrt];
        u_G = [u_G u_G(length(u_G))];
        i_G = [i_G i_G(length(i_G))];
    else
        Efix = Efix + Einv;
        Edir = Einv*Gamma_G;
        Ifix = Ifix + Iinv;
        Idir = -Iinv*Gamma_G;      
        tcrt = tcrt + t0;
        t = [t tcrt];
        u_G = [u_G u_G(length(u_G))];
        i_G = [i_G i_G(length(i_G))];
        t = [t tcrt];
        u_G = [u_G Efix + Edir];
        i_G = [i_G Ifix + Idir];     
    end
end
axes(handles.axes_tensiune_generator);
plot(t,u_G,'LineWidth',2);
minV = min(min(0,min(u_G)),1.1*(min(u_G)));
maxV = max(E,1.1*max(u_G));
axis([0 n*t0  minV maxV]);
ylabel('Tensiunea la generator [V]');
grid on;
%u_G
axes(handles.axes_curent_generator);
plot(t,i_G,'LineWidth',2);
minC = min(min(0,min(i_G)),1.1*(min(i_G)));
maxC = max(E/Z_0,1.1*max(i_G));
axis([0 n*t0  minC maxC]);
%axis([0 n*t0 -1.1*max_crt 1.1*max_crt]);
xlabel('Timp [s]');
ylabel('Curentul la generator [A]');
grid on;
%i_G

function [minV maxV minC maxC] =  draw_marimi_sarcina(handles)

E = handles.parameters.E;
Z_G = handles.parameters.Z_G;
Z_0 = handles.parameters.Z_0;
l = handles.parameters.l;
v = handles.parameters.v;
Z_L = handles.parameters.Z_L;
n = handles.parameters.n;
no_pct = handles.parameters.no_pct;
t0 = l/v;
Gamma_G = (Z_G - Z_0)/(Z_G + Z_0);
Gamma_L = (Z_L - Z_0)/(Z_L + Z_0);
vector_t = linspace(0,t0,no_pct);
vector_x = linspace(0,l,no_pct);
max_tens = Z_L/(Z_L + Z_G)*E;
max_crt = 1/(Z_0 + Z_G)*E;
E0 = Z_0/(Z_0 + Z_G)*E;

t = [];
u_L = [];
i_L = [];
for idx_n = 1:n+1 
    if idx_n == 1
        Efix = 0;
        Edir = E0;
        Ifix = 0;
        Idir = E0/Z_0;
        t = [t 0];
        u_L = [u_L 0];
        i_L = [i_L 0];
        tcrt = 0;
    elseif mod(idx_n,2) == 0        
        Efix = Efix + Edir;
        Einv = Edir*Gamma_L;
        Ifix = Ifix + Idir;
        Iinv = -Idir*Gamma_L;
        tcrt = tcrt + t0;
        t = [t tcrt];
        u_L = [u_L u_L(length(u_L))];
        i_L = [i_L i_L(length(i_L))];
        t = [t tcrt];
        u_L = [u_L Efix + Einv];
        i_L = [i_L Ifix + Iinv];           
    else
        Efix = Efix + Einv;
        Edir = Einv*Gamma_G;
        Ifix = Ifix + Iinv;
        Idir = -Iinv*Gamma_G;      
        tcrt = tcrt + t0;
        t = [t tcrt];
        u_L = [u_L u_L(length(u_L))];
        i_L = [i_L i_L(length(i_L))];
    end
end
axes(handles.axes_tensiune_sarcina);
plot(t,u_L,'LineWidth',2);
minV = min(min(0,min(u_L)),1.1*(min(u_L)));
maxV = max(E,1.1*max(u_L));
axis([0 n*t0 minV maxV] );
ylabel('Tensiunea la sarcina [V]');
grid on;
%u_L

axes(handles.axes_curent_sarcina);
plot(t,i_L,'LineWidth',2);
axis([0 n*t0 min(0,min(i_L)) max(E/Z_0,1.1*max(i_L))]);
minC = min(min(0,min(i_L)),1.1*(min(i_L)));
maxC = max(E/Z_0,1.1*max(i_L));
axis([0 n*t0 minC maxC]);
xlabel('Timp [s]');
ylabel('Curentul la sarcina [A]');
grid on;
%i_L

% --- Executes on button press in pushb_animatie.
function pushb_animatie_Callback(hObject, eventdata, handles)
% hObject    handle to pushb_animatie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
E = handles.parameters.E;
Z_G = handles.parameters.Z_G;
Z_0 = handles.parameters.Z_0;
l = handles.parameters.l;
v = handles.parameters.v;
Z_L = handles.parameters.Z_L;
n = handles.parameters.n;
no_pct = handles.parameters.no_pct;
t0 = l/v;
Gamma_G = (Z_G - Z_0)/(Z_G + Z_0);
Gamma_L = (Z_L - Z_0)/(Z_L + Z_0);
vector_t = linspace(0,t0,no_pct);
vector_x = linspace(0,l,no_pct);
max_tens = Z_L/(Z_L + Z_G)*E;
max_crt = 1/(Z_0 + Z_G)*E;
E0 = Z_0/(Z_0 + Z_G)*E;

for idx_n = 1:n 
    if idx_n == 1
        Efix = 0;
        Edir = E0;
        Ifix = 0;
        Idir = E0/Z_0;
    elseif mod(idx_n,2) == 0
        Efix = Efix + Edir;
        Einv = Edir*Gamma_L;
        Ifix = Ifix + Idir;
        Iinv = -Idir*Gamma_L;
    else
        Efix = Efix + Einv;
        Edir = Einv*Gamma_G;
        Ifix = Ifix + Iinv;
        Idir = -Iinv*Gamma_G;
    end
    
    if mod(idx_n,2) == 1
        for k = 1:no_pct           
            t = vector_t(k);
            vector_y = Efix + Edir*my_heaviside(t-vector_x/v);
            vector_c = Ifix + Idir*my_heaviside(t-vector_x/v);
            axes(handles.axes_animatie_tensiune);
            plot(vector_x,vector_y,'LineWidth',2);
            axis([0 l handles.minV handles.maxV]);
            ylabel('Tensiunea pe linie [V]');
            title(sprintf('idx_n = %d',idx_n));
            drawnow;
            axes(handles.axes_animatie_curent);
            plot(vector_x,vector_c,'LineWidth',2);
            axis([0 l handles.minC handles.maxC]);
            ylabel('Curentul pe linie [A]');
            xlabel(sprintf('idx_n = %d,  z [m]',idx_n));
            drawnow;
        end
    else
        for k = 1:no_pct                   
            t = vector_t(k);
            vector_y = Efix + Einv*my_heaviside(t-(l-vector_x)/v);
            vector_c = Ifix + Iinv*my_heaviside(t-(l-vector_x)/v);
            axes(handles.axes_animatie_tensiune);
            plot(vector_x,vector_y,'LineWidth',2);
            axis([0 l handles.minV handles.maxV]);
            ylabel('Tensiunea pe linie [V]');
            drawnow;
            axes(handles.axes_animatie_curent);
            plot(vector_x,vector_c,'LineWidth',2);
            axis([0 l handles.minC handles.maxC]);
            ylabel('Curentul pe linie [A]');
            xlabel(sprintf('idx_n = %d,  z [m]',idx_n));
            drawnow;
        end
    end
end
axes(handles.axes_animatie_tensiune);; grid on;
axes(handles.axes_animatie_curent); grid on;


function handles = clear_figures(handles)
axes(handles.axes_tensiune_generator);
cla;
axes(handles.axes_curent_generator);
cla;
axes(handles.axes_tensiune_sarcina);
cla;
axes(handles.axes_curent_sarcina);
cla;
axes(handles.axes_animatie_tensiune);
cla;
axes(handles.axes_animatie_curent);
cla;
[minV1 maxV1 minC1 maxC1] = draw_marimi_generator(handles);
[minV2 maxV2 minC2 maxC2] = draw_marimi_sarcina(handles);
handles.minV = min(minV1,minV2);
handles.maxV = max(maxV1,maxV2);
handles.minC = min(minC1,minC2);
handles.maxC = max(maxC1,maxC2);

function Y = my_heaviside(X)
Y = zeros(size(X));
Y(X > 0) = 1;
Y(X == 0) = 0;
