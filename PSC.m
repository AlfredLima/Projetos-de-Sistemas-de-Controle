function varargout = PSC(varargin)
% PSC MATLAB code for PSC.fig
%      PSC, by itself, creates a new PSC or raises the existing
%      singleton*.
%
%      H = PSC returns the handle to a new PSC or the handle to
%      the existing singleton*.
%
%      PSC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PSC.M with the given input arguments.
%
%      PSC('Property','Value',...) creates a new PSC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PSC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PSC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PSC

% Last Modified by GUIDE v2.5 07-Dec-2018 16:47:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PSC_OpeningFcn, ...
                   'gui_OutputFcn',  @PSC_OutputFcn, ...
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


% --- Executes just before PSC is made visible.
function PSC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PSC (see VARARGIN)

% Choose default command line output for PSC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PSC wait for user response (see UIRESUME)
% uiwait(handles.figure1);
init_simulink() 
    

function init_simulink()
    global amp_degree_string;
    global amp_sine_string;
    global period_string;
    global offset_string;
    global amp_max_string;
    global amp_min_string;
    global period_max_string;
    global period_min_string;
    global operation_mode;
    global input_type;
    global t;
    global times;
    global tank1;
    global tank2;
    global motor_voltage;
    global err;
    amp_degree_string = '0';
    amp_sine_string = '0';
    period_string = '5';
    offset_string = '0';
    amp_max_string = '2';
    amp_min_string = '0';
    period_max_string = '4';
    period_min_string = '2';
    operation_mode = '0';
    input_type = '1';

    
function refresh_data()
    global amp_degree_string;
    global amp_sine_string;
    global period_string;
    global offset_string;
    global amp_max_string;
    global amp_min_string;
    global period_max_string;
    global period_min_string;
    global operation_mode;
    global input_type;
    global AmpDegree;
    global AmpSine;
    global Period;
    global Offset;
    global AmpMax;
    global AmpMin;
    global PeriodMax;
    global PeriodMin;
    
    % Setando os valores do simulink
    set_param('PSC_tank_comunication/WaveGenerator/AmpDegree','Value', amp_degree_string);
    set_param('PSC_tank_comunication/WaveGenerator/AmpSine','Value', amp_sine_string);
    set_param('PSC_tank_comunication/WaveGenerator/Period','Value', period_string);
    set_param('PSC_tank_comunication/WaveGenerator/Offset','Value', offset_string);
    set_param('PSC_tank_comunication/WaveGenerator/AmpMax','Value', amp_max_string);
    set_param('PSC_tank_comunication/WaveGenerator/AmpMin','Value', amp_min_string);
    set_param('PSC_tank_comunication/WaveGenerator/PeriodMax','Value', period_max_string);
    set_param('PSC_tank_comunication/WaveGenerator/PeriodMin','Value', period_min_string);
    set_param('PSC_tank_comunication/SelectLoop/Select','Value', operation_mode);
    set_param('PSC_tank_comunication/WaveGenerator/SelectWave','Value', input_type);

    
    
    
    
    
    

% --- Outputs from this function are returned to the command line.
function varargout = PSC_OutputFcn(hObject, eventdata, handles) 
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


function messageText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER
set(hObject, 'String', 'Welcome');
global Messages;
Messages = hObject;



function ampDegree_Callback(hObject, eventdata, handles)
% hObject    handle to inAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global amp_degree_string;
data = get(hObject,'String');
global AmpDegree;
if (~isnan(str2double(data)))
    amp_degree_string = data;
end
set(AmpDegree, 'String', amp_degree_string);

% Hints: get(hObject,'String') returns contents of inAmp as text
%        str2double(get(hObject,'String')) returns contents of inAmp as a double


% --- Executes during object creation, after setting all properties.
function ampDegree_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inAmp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global AmpDegree;
AmpDegree = hObject;



function period_Callback(hObject, eventdata, handles)
global period_string;
data = get(hObject,'String');
global Period;
if (~isnan(str2double(data)))
    period_string = data;
end
set(Period, 'String', period_string);

% --- Executes during object creation, after setting all properties.
function period_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inPeriod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global Period;
Period = hObject;



function offset_Callback(hObject, eventdata, handles)
global offset_string;
data = get(hObject,'String');
global Offset;
if (~isnan(str2double(data)))
    offset_string = data;    
end
set(Offset, 'String', offset_string);


% --- Executes during object creation, after setting all properties.
function offset_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inOffset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global Offset;
Offset = hObject;


function ampMin_Callback(hObject, eventdata, handles)
% hObject    handle to ampMin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global amp_min_string;
global AmpMin;
data = get(hObject,'String');
if (~isnan(str2double(data)))
    amp_min_string = data;
end
set(AmpMin, 'String', amp_min_string);
% Hints: get(hObject,'String') returns contents of ampMin as text
%        str2double(get(hObject,'String')) returns contents of ampMin as a double


% --- Executes during object creation, after setting all properties.
function ampMin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampMin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global AmpMin;
AmpMin = hObject;



function ampMax_Callback(hObject, eventdata, handles)
% hObject    handle to ampMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global amp_max_string;
data = get(hObject,'String');
global AmpMax;
if (~isnan(str2double(data)))
    amp_max_string = data;
end
set(AmpMax, 'String', amp_max_string);
% Hints: get(hObject,'String') returns contents of ampMax as text
%        str2double(get(hObject,'String')) returns contents of ampMax as a double


% --- Executes during object creation, after setting all properties.
function ampMax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global AmpMax;
AmpMax = hObject;



function periodMax_Callback(hObject, eventdata, handles)
% hObject    handle to periodMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global period_max_string;
global PeriodMax;
data = get(hObject,'String');
if (~isnan(str2double(data)))
    period_max_string = data;
end
set(PeriodMax, 'String', period_max_string);
% Hints: get(hObject,'String') returns contents of periodMax as text
%        str2double(get(hObject,'String')) returns contents of periodMax as a double


% --- Executes during object creation, after setting all properties.
function periodMax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to periodMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global PeriodMax;
PeriodMax = hObject;



function periodMin_Callback(hObject, eventdata, handles)
% hObject    handle to inPeriodMin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global period_min_string;
global PeriodMin;
data = get(hObject,'String');
if (~isnan(str2double(data)))
    period_min_string = data;
end
set(PeriodMin, 'String', period_min_string);
% Hints: get(hObject,'String') returns contents of inPeriodMin as text
%        str2double(get(hObject,'String')) returns contents of inPeriodMin as a double


% --- Executes during object creation, after setting all properties.
function periodMin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inPeriodMin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global PeriodMin;
PeriodMin = hObject;


% Example set_param('testSimulink/Constant','Value','3')


% --- Executes on button press in buttonDegree.
function buttonDegree_Callback(hObject, eventdata, handles)
% hObject    handle to buttonDegree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global input_type;
input_type = '1';
global Messages;
set(Messages, 'String', 'Degree wave was selected.');
% Hint: get(hObject,'Value') returns toggle state of buttonDegree


% --- Executes on button press in buttonSquare.
function buttonSquare_Callback(hObject, eventdata, handles)
% hObject    handle to buttonSquare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global input_type;
input_type = '3';
global Messages;
set(Messages, 'String', 'Square wave was selected.');
% Hint: get(hObject,'Value') returns toggle state of buttonSquare


% --- Executes on button press in buttonSawtooth.
function buttonSawtooth_Callback(hObject, eventdata, handles)
% hObject    handle to buttonSawtooth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global input_type;
input_type = '2';
global Messages;
set(Messages, 'String', 'Sawtooth wave was selected.');
% Hint: get(hObject,'Value') returns toggle state of buttonSawtooth


% --- Executes on button press in buttonSine.
function buttonSine_Callback(hObject, eventdata, handles)
% hObject    handle to buttonSine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global input_type;
input_type = '4';
global Messages;
set(Messages, 'String', 'Sinusoidal wave was selected.');
% Hint: get(hObject,'Value') returns toggle state of buttonSine


% --- Executes on button press in buttonRandom.
function buttonRandom_Callback(hObject, eventdata, handles)
% hObject    handle to buttonRandom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global input_type;
input_type = '5';
global Messages;
set(Messages, 'String', 'Random wave was selected.');
% Hint: get(hObject,'Value') returns toggle state of buttonRandom


% --- Executes on button press in buttonClosedTank1.
function buttonClosedTank1_Callback(hObject, eventdata, handles)
% hObject    handle to buttonClosedTank1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global operation_mode;
operation_mode = '1';
% Hint: get(hObject,'Value') returns toggle state of buttonClosedTank1


% --- Executes on button press in buttonOpen.
function buttonOpen_Callback(hObject, eventdata, handles)
% hObject    handle to buttonOpen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global operation_mode;
operation_mode = '0';
% Hint: get(hObject,'Value') returns toggle state of buttonOpen


% --- Executes when uipanel2 is resized.
function uipanel2_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonClosedTank2.
function buttonClosedTank2_Callback(hObject, eventdata, handles)
% hObject    handle to buttonClosedTank2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of buttonClosedTank2
global operation_mode;
operation_mode = '2';


% --- Executes during object deletion, before destroying properties.
function figure1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Connect.
function Connect_Callback(hObject, eventdata, handles)
rtwbuild('PSC_tank_comunication');
set_param(gcs,'SimulationMode','external');
set_param(gcs,'SimulationCommand','connect');
set_param(gcs,'SimulationCommand','start');
set(handles.Connect, 'Enable', 'off');
init_simulink();
refresh_data();

% --- Executes on button press in updateButton.
function updateButton_Callback(hObject, eventdata, handles)
% hObject    handle to updateButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
refresh_data();


% --- Executes on button press in stopButton.
function stopButton_Callback(hObject, eventdata, handles)
% hObject    handle to stopButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('PSC_tank_comunication','SimulationCommand','stop');
set(handles.Connect, 'Enable', 'on');


% --- Executes on button press in tank1View.
function tank1View_Callback(hObject, eventdata, handles)
if (get(hObject,'Value'))
    set_param('PSC_tank_comunication/Tank 1 Level (cm)','open','on');
else
    set_param('PSC_tank_comunication/Tank 1 Level (cm)','open','off');
end

% --- Executes on button press in tank2View.
function tank2View_Callback(hObject, eventdata, handles)
% hObject    handle to tank2View (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tank2View
if (get(hObject,'Value'))
    set_param('PSC_tank_comunication/Tank 2 Level (cm)','open','on');
else
    set_param('PSC_tank_comunication/Tank 2 Level (cm)','open','off');
end


% --- Executes on button press in motorVoltageView.
function motorVoltageView_Callback(hObject, eventdata, handles)
% hObject    handle to motorVoltageView (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of motorVoltageView
if (get(hObject,'Value'))
    set_param('PSC_tank_comunication/Motor Voltage (V)','open','on');
else
    set_param('PSC_tank_comunication/Motor Voltage (V)','open','off');
end


% --- Executes on button press in controlSignalView.
function controlSignalView_Callback(hObject, eventdata, handles)
% hObject    handle to controlSignalView (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of controlSignalView
if (get(hObject,'Value'))
    set_param('PSC_tank_comunication/Control Signal','open','on');
else
    set_param('PSC_tank_comunication/Control Signal','open','off');
end



function edit51_Callback(hObject, eventdata, handles)
% hObject    handle to ampDegree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ampDegree as text
%        str2double(get(hObject,'String')) returns contents of ampDegree as a double


% --- Executes during object creation, after setting all properties.
function edit51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampDegree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit42_Callback(hObject, eventdata, handles)
% hObject    handle to period (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of period as text
%        str2double(get(hObject,'String')) returns contents of period as a double


% --- Executes during object creation, after setting all properties.
function edit42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to period (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit43_Callback(hObject, eventdata, handles)
% hObject    handle to offset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of offset as text
%        str2double(get(hObject,'String')) returns contents of offset as a double


% --- Executes during object creation, after setting all properties.
function edit43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to offset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ampSine_Callback(hObject, eventdata, handles)
% hObject    handle to ampSine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ampSine as text
%        str2double(get(hObject,'String')) returns contents of ampSine as a double
global amp_sine_string;
global AmpSine;
data = get(hObject,'String');
if (~isnan(str2double(data)))
    amp_sine_string = data;
end
set(AmpSine, 'String', amp_sine_string);


% --- Executes during object creation, after setting all properties.
function ampSine_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampSine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global AmpSine;
AmpSine = hObject;


% --- Executes on button press in updateButton.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to updateButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in setpointView.
function setpointView_Callback(hObject, eventdata, handles)
% hObject    handle to setpointView (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of setpointView
if (get(hObject,'Value'))
    set_param('PSC_tank_comunication/Setpoint','open','on');
else
    set_param('PSC_tank_comunication/Setpoint','open','off');
end
