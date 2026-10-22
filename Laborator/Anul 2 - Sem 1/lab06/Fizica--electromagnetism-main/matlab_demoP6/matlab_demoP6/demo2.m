function varargout = demo2(varargin)
% DEMO2 M-file for demo2.fig
%      DEMO2 - ilustrates the propagation of forward wave in lossy
%      dielectrics

% Code by Gabriela Ciuprina 
% gabriela@lmn.pub.ro
% www.lmn.pub.ro/~gabriela
% Last update by GC - 9 March 2008
%
% Last Modified by GUIDE v2.5 30-Mar-2008 18:15:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @demo2_OpeningFcn, ...
                   'gui_OutputFcn',  @demo2_OutputFcn, ...
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


% --- Executes just before demo2 is made visible.
function demo2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to demo2 (see VARARGIN)

handles.parameters.eps_r = 4;
handles.parameters.mu_r = 1;
handles.parameters.sigma = 1e-3;
handles.parameters.f = 1e8;
handles.parameters.Ex_0 = 30;
handles.parameters.psi_0 = 0;
handles.parameters.t0 = 0;
handles.parameters.z0 = 0;
handles.parameters.nr_per_timp = 4;
handles.parameters.nr_per_spatiu = 4;
handles.parameters.nr_pct = 100;

handles = TEM(handles);

% Choose default command line output for demo2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes demo2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = demo2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_text_eps_r_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_eps_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_eps_r as text
%        str2double(get(hObject,'String')) returns contents of edit_text_eps_r as a double
handles.parameters.eps_r = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 


% --- Executes during object creation, after setting all properties.
function edit_text_eps_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_eps_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_mu_r_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_mu_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_mu_r as text
%        str2double(get(hObject,'String')) returns contents of edit_text_mu_r as a double
handles.parameters.mu_r = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 

% --- Executes during object creation, after setting all properties.
function edit_text_mu_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_mu_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_sigma_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_sigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_sigma as text
%        str2double(get(hObject,'String')) returns contents of edit_text_sigma as a double
handles.parameters.sigma = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 

% --- Executes during object creation, after setting all properties.
function edit_text_sigma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_sigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_frecventa_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_frecventa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_frecventa as text
%        str2double(get(hObject,'String')) returns contents of edit_text_frecventa as a double
handles.parameters.f = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 

% --- Executes during object creation, after setting all properties.
function edit_text_frecventa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_frecventa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox_alpha.
function listbox_alpha_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_alpha contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_alpha


% --- Executes during object creation, after setting all properties.
function listbox_alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox_beta.
function listbox_beta_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_beta contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_beta


% --- Executes during object creation, after setting all properties.
function listbox_beta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox_tangent_delta.
function listbox_tangent_delta_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_tangent_delta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_tangent_delta contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_tangent_delta


% --- Executes during object creation, after setting all properties.
function listbox_tangent_delta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_tangent_delta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox_delta.
function listbox_delta_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_delta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_delta contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_delta


% --- Executes during object creation, after setting all properties.
function listbox_delta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_delta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox_zeta_modul.
function listbox_zeta_modul_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_zeta_modul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_zeta_modul contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_zeta_modul


% --- Executes during object creation, after setting all properties.
function listbox_zeta_modul_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_zeta_modul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox_zeta_arg.
function listbox_zeta_arg_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_zeta_arg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_zeta_arg contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_zeta_arg


% --- Executes during object creation, after setting all properties.
function listbox_zeta_arg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_zeta_arg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox_eta_modul.
function listbox_eta_modul_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_eta_modul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_eta_modul contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_eta_modul


% --- Executes during object creation, after setting all properties.
function listbox_eta_modul_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_eta_modul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox_eta_arg.
function listbox_eta_arg_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_eta_arg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_eta_arg contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_eta_arg


% --- Executes during object creation, after setting all properties.
function listbox_eta_arg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_eta_arg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox_skin_depth.
function listbox_skin_depth_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_skin_depth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_skin_depth contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_skin_depth


% --- Executes during object creation, after setting all properties.
function listbox_skin_depth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_skin_depth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_Ex_0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_Ex_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_Ex_0 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_Ex_0 as a double
handles.parameters.Ex_0 = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 


% --- Executes during object creation, after setting all properties.
function edit_text_Ex_0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_Ex_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_psi_0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_psi_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_psi_0 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_psi_0 as a double
handles.parameters.psi_0 = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 

% --- Executes during object creation, after setting all properties.
function edit_text_psi_0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_psi_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_z0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_z0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_z0 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_z0 as a double
handles.parameters.z0 = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 

% --- Executes during object creation, after setting all properties.
function edit_text_z0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_z0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_t0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_t0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_t0 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_t0 as a double
handles.parameters.t0 = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 

% --- Executes during object creation, after setting all properties.
function edit_text_t0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_t0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_nr_per_spatiu_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_nr_per_spatiu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_nr_per_spatiu as text
%        str2double(get(hObject,'String')) returns contents of edit_text_nr_per_spatiu as a double
handles.parameters.nr_per_spatiu = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 

% --- Executes during object creation, after setting all properties.
function edit_text_nr_per_spatiu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_nr_per_spatiu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_nr_per_timp_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_nr_per_timp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_nr_per_timp as text
%        str2double(get(hObject,'String')) returns contents of edit_text_nr_per_timp as a double
handles.parameters.nr_per_timp = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 

% --- Executes during object creation, after setting all properties.
function edit_text_nr_per_timp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_nr_per_timp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_nr_pct_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_nr_pct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_nr_pct as text
%        str2double(get(hObject,'String')) returns contents of edit_text_nr_pct as a double
handles.parameters.nr_pct = str2double(get(hObject,'String'));
handles = TEM(handles);
guidata(hObject,handles); 

% --- Executes during object creation, after setting all properties.
function edit_text_nr_pct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_nr_pct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_animatie.
function pushbutton_animatie_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_animatie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TEM_animatie(handles);



% --- Executes on selection change in listbox_v.
function listbox_v_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_v contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_v


% --- Executes during object creation, after setting all properties.
function listbox_v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function [handles] = TEM(handles)
% Unda TEM care se propaga dupa directia Oz are:
% campul electric orientat dupa directia Ox, care
% se propaga dupa directia Oz avand expresia
% Ex = Ex_0 * exp(-alpha*z) * sin(omega*t - beta*z + psi_0)
% si campul magnetic orientat dupa directia Oy, care
% se propaga dupa directia Oz, avand expresia
% Hy = Hy_0 * exp(-alpha*z) * sin(omega*t - beta*z + psi_0 - teta)
% unde Hy_0 = Ex_0/modula(zeta)
% teta = argument(zeta)

eps_r = handles.parameters.eps_r;
mu_r = handles.parameters.mu_r;
sigma = handles.parameters.sigma;
f = handles.parameters.f;
Ex_0 =   handles.parameters.Ex_0;
psi_0 = handles.parameters.psi_0;
t0 = handles.parameters.t0;
z0 = handles.parameters.z0;
nr_per_timp = handles.parameters.nr_per_timp;
nr_per_spatiu = handles.parameters.nr_per_spatiu;
nr_pct = handles.parameters.nr_pct;

eps_0 = 1/(36*pi)*1e-9;  %[F/m]
mu_0 = 4*pi*1e-7;        %[H/m]
omega = 2*pi*f;          %[rad/s]
epsilon = eps_0*eps_r;   %[F/m]
mu = mu_0*mu_r;          %[H/m]

sigma_pe_omegaepsilon = sigma/(omega*epsilon);
muepsilon_pe_doi = mu*epsilon/2;

alpha = omega*...
    sqrt(muepsilon_pe_doi*(sqrt(sigma_pe_omegaepsilon^2+1)-1)); %[Np/m]
beta = omega*...
    sqrt(muepsilon_pe_doi*(sqrt(sigma_pe_omegaepsilon^2+1)+1)); %[rad/m]
v = omega/beta; %[m/s]
tan_delta = sigma_pe_omegaepsilon;
delta = atan(tan_delta);
zeta_patrat = i*omega*mu/(sigma + i*omega*epsilon);
zeta = sqrt(zeta_patrat);
eta = 1/zeta;
zeta_modul = abs(zeta); %[Ohm]
zeta_arg = phase(zeta);   %[rad]
eta_modul = abs(eta);   %[S]
eta_arg = phase(eta);     %[rad]

%skin_depth = 1/sqrt(pi*f*mu*sigma); %[m]
skin_depth = 1/alpha; %[m]


Hy_0 = Ex_0/zeta_modul;

% reprezentare la timp constant
axes(handles.axes_Edez);
lambda = 2*pi/beta;
zmin = z0;
zmax = zmin + lambda*nr_per_spatiu;
vector_z = linspace(zmin,zmax,nr_pct);
[val_E,val_H] = ...
    unda_TEM(Ex_0,Hy_0,omega,vector_z,t0,alpha,beta,psi_0,zeta_arg);
plot(vector_z,val_E,'r','Linewidth',2);
axis([zmin zmax,...
    -Ex_0,Ex_0]);
grid on;
xlabel('z [m]');
ylabel(strcat('Ex(z,',num2str(t0),')'));
axes(handles.axes_Hdez);
plot(vector_z,val_H,'g','Linewidth',2);
axis([zmin zmax,...
    -Hy_0,Hy_0]);
grid on;
xlabel('z [m]');
ylabel(strcat('Hy(z,',num2str(t0),')'));

% reprezentare la z constant
axes(handles.axes_Edet);
T = 1/f;
tmin = t0;
tmax = tmin + nr_per_timp*T;
vector_t = linspace(tmin,tmax,nr_pct);
[val_E,val_H] = ...
    unda_TEM(Ex_0,Hy_0,omega,z0,vector_t,alpha,beta,psi_0,zeta_arg);
plot(vector_t,val_E,'r','Linewidth',2);
axis([tmin tmax,...
    -Ex_0,Ex_0]);
grid on;
xlabel('t [s]');
ylabel(strcat('Ex(',num2str(z0),',t)'));
axes(handles.axes_Hdet);
plot(vector_t,val_H,'g','Linewidth',2);
axis([tmin tmax,...
    -Hy_0,Hy_0]);
grid on;
xlabel('t [s]');
ylabel(strcat('Hy(',num2str(z0),',t)'));

set(handles.listbox_alpha,'String',num2str(alpha));
set(handles.listbox_beta,'String',num2str(beta));
set(handles.listbox_tangent_delta,'String',num2str(tan_delta));
set(handles.listbox_delta,'String',num2str(delta));
set(handles.listbox_zeta_modul,'String',num2str(zeta_modul));
set(handles.listbox_zeta_arg,'String',num2str(zeta_arg));
set(handles.listbox_eta_modul,'String',num2str(eta_modul));
set(handles.listbox_eta_arg,'String',num2str(eta_arg));
set(handles.listbox_skin_depth,'String',num2str(skin_depth));
set(handles.listbox_v,'String',num2str(v));
set(handles.listbox_lambda,'String',num2str(lambda));

handles.parameters.lambda = lambda;
handles.parameters.Hy_0 = Hy_0;
handles.parameters.omega = omega;
handles.parameters.alpha = alpha;
handles.parameters.beta = beta;
handles.parameters.zeta_arg = zeta_arg;

function [] = TEM_animatie(handles)

f = handles.parameters.f;
Ex_0 =   handles.parameters.Ex_0;
psi_0 = handles.parameters.psi_0;
t0 = handles.parameters.t0;
z0 = handles.parameters.z0;
nr_per_timp = handles.parameters.nr_per_timp;
nr_per_spatiu = handles.parameters.nr_per_spatiu;
nr_pct = handles.parameters.nr_pct;
lambda = handles.parameters.lambda;
Hy_0 =   handles.parameters.Hy_0;
omega = handles.parameters.omega;
alpha = handles.parameters.alpha;
beta = handles.parameters.beta;
zeta_arg = handles.parameters.zeta_arg;

zmin = z0;
zmax = zmin + lambda*nr_per_spatiu;
vector_z = linspace(zmin,zmax,nr_pct);
T = 1/f;
tmin = t0;
tmax = tmin + nr_per_timp*T;
vector_t = linspace(tmin,tmax,nr_pct);
figure(1);
for k = 1:length(vector_t)
    hold off;
    [val_E,val_H] = ...
    unda_TEM(Ex_0,Hy_0,omega,vector_z,vector_t(k),alpha,beta,psi_0,zeta_arg);
    plot3(val_E,zeros(nr_pct,1),vector_z,'r','Linewidth',2);
    hold on;
    plot3(zeros(nr_pct,1),val_H,vector_z,'g','Linewidth',2);
    xlabel('x [m]');
    ylabel('y [m]');
    zlabel('z [m]');
    grid on;
    axis([-Ex_0 Ex_0 -Hy_0 Hy_0 zmin zmax]);
    drawnow
end

function [val_E,val_H] = unda_TEM(Ex_0,Hy_0,omega,z,t,alpha,beta,psi0,teta)

val_E = Ex_0*exp(-alpha*z).*sin(omega*t-beta*z+psi0);
val_H = Hy_0*exp(-alpha*z).*sin(omega*t-beta*z+psi0-teta);




% --- Executes on selection change in listbox_lambda.
function listbox_lambda_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_lambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox_lambda contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_lambda


% --- Executes during object creation, after setting all properties.
function listbox_lambda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_lambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


