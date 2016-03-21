function varargout = DCMicrogrid2(varargin)
% DCMICROGRID2 M-file for DCMicrogrid2.fig
%      DCMICROGRID2, by itself, creates a new DCMICROGRID2 or raises the existing
%      singleton*.
%
%      H = DCMICROGRID2 returns the handle to a new DCMICROGRID2 or the handle to
%      the existing singleton*.
%
%      DCMICROGRID2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DCMICROGRID2.M with the given input arguments.
%
%      DCMICROGRID2('Property','Value',...) creates a new DCMICROGRID2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DCMicrogrid2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DCMicrogrid2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DCMicrogrid2

% Last Modified by GUIDE v2.5 14-May-2013 16:29:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DCMicrogrid2_OpeningFcn, ...
                   'gui_OutputFcn',  @DCMicrogrid2_OutputFcn, ...
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


% --- Executes just before DCMicrogrid2 is made visible.
function DCMicrogrid2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DCMicrogrid2 (see VARARGIN)

% Choose default command line output for DCMicrogrid2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DCMicrogrid2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DCMicrogrid2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');


%Hardware version

if experiment==2

set_param('GridSGHardware/OPC/Constant11','Value','0');
set_param('GridSGHardware/OPC/Constant12','Value','0');
set_param('GridSGHardware/OPC/Constant13','Value','0');


set_param('GridSGHardware/OPC/Constant10','Value','0');

set_param('GridSGHardware','SimulationCommand','Start');

else

set_param('DCMGHILS/OPC/Constant11','Value','0');
set_param('DCMGHILS/OPC/Constant12','Value','0');
set_param('DCMGHILS/OPC/Constant13','Value','0');

set_param('DCMGHILS/OPC/Constant10','Value','0');

set_param('DCMGHILS','SimulationCommand','Start');

%set_param('DCMicrogridFinal','SimulationCommand','Start');

end

h = guidata(DCMicrogrid2);

resfault=imread('ResidentialFault.png');
respowered=imread('ResidentialPowered.png');
resunpowered=imread('ResidentialUnpowered.png');
comfault=imread('CommercialFault.png');
compowered=imread('CommercialPowered.png');
comunpowered=imread('CommercialUnpowered.png');
battfault=imread('BattFault.png');
battconnected=imread('BattConnected.png');
battdisconnected=imread('BattOff.png');
solarfault=imread('SolarFault.png');
solarconnected=imread('Solar.png');
solardisconnected=imread('SolarOff.png');
forceclose=imread('ForceCloseButton.png');
forceopen=imread('ForceOpenButton.png');
groundfault=imread('GroundFaultWarning.png');
nofault=imread('NoFault.png');
undervoltage=imread('UndervoltageWarning.png');
noundervoltage=imread('NoUndervoltageWarning.png');


assignin('base','resfault',resfault);
assignin('base','respowered',respowered);
assignin('base','resunpowered',resunpowered);
assignin('base','comfault',comfault);
assignin('base','compowered',compowered);
assignin('base','comunpowered',comunpowered);
assignin('base','battfault',battfault);
assignin('base','battconnected',battconnected);
assignin('base','battdisconnected',battdisconnected);
assignin('base','solarfault',solarfault);
assignin('base','solarconnected',solarconnected);
assignin('base','solardisconnected',solardisconnected);
assignin('base','forceclose',forceclose);
assignin('base','forceopen',forceopen);
assignin('base','groundfault',groundfault);
assignin('base','nofault',nofault);
assignin('base','undervoltage',undervoltage);
assignin('base','noundervoltage',noundervoltage);

set(h.pushbutton27,'CData',solardisconnected);
set(h.pushbutton28,'CData',battdisconnected);
set(h.pushbutton17,'CData',resunpowered);
set(h.pushbutton21,'CData',resunpowered);
set(h.pushbutton20,'CData',resunpowered);
set(h.pushbutton19,'CData',resunpowered);
set(h.pushbutton18,'CData',resunpowered);
set(h.pushbutton26,'CData',comunpowered);
set(h.pushbutton25,'CData',comunpowered);
set(h.pushbutton24,'CData',comunpowered);
set(h.pushbutton23,'CData',comunpowered);
set(h.pushbutton22,'CData',comunpowered);
set(h.pushbutton55,'CData',nofault);
set(h.pushbutton57,'CData',nofault);
set(h.pushbutton62,'CData',noundervoltage);
set(h.pushbutton60,'CData',noundervoltage);
set(h.pushbutton61,'CData',noundervoltage);
    

%RL1currenttime=0;
%RL1current=0;
%RL1accounttime=0;
%RL1account=0;





%h=add_exec_event_listener('DCMicrogridGUI/Scope','PostOutputs',@don5)

%plot(handles.axes1,x,y);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

if experiment==2
    
%set_param('GridSGHardware/OPC/Constant10','Value','0');    
%set_param('GridSGHardware/OPC/Constant12','Value','0');
%set_param('GridSGHardware/OPC/Constant11','Value','1');

set_param('GridSGHardware','SimulationCommand','Stop');

else

%set_param('DCMGHILS/OPC/Constant10','Value','0');    
%set_param('DCMGHILS/OPC/Constant12','Value','0');    
%set_param('DCMGHILS/OPC/Constant11','Value','1');
    
set_param('DCMGHILS','SimulationCommand','Stop');

%set_param('DCMicrogridFinal','SimulationCommand','Stop');

end
    
%close_system('DCMicrogridGUI.mdl');

    


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

if experiment==2
 
set_param('GridSGHardware/OPC/Constant10','Value','0');
set_param('GridSGHardware/OPC/Constant11','Value','0');
    
set_param('GridSGHardware/OPC/Constant12','Value','1');

%set_param('GridSGHardware','SimulationCommand','Stop');

%set_param('GridSGHardware','SimulationCommand','Start');

else
 
set_param('DCMGHILS/OPC/Constant10','Value','0');
set_param('DCMGHILS/OPC/Constant11','Value','0');
    
set_param('DCMGHILS/OPC/Constant12','Value','1');
    
%set_param('DCMGHILS','SimulationCommand','Stop');

%set_param('DCMGHILS','SimulationCommand','Start');

end




% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


scenario=get(hObject,'Value');

assignin('base','scenario',scenario);

experiment=evalin('base','experiment');

if scenario==1
    assignin('base','Manual',1);
    
    if experiment==1
        set_param('DCMGHILS','StopTime','inf');
    else
        set_param('GridSGHardware','StopTime','inf');
    end
    
    [in,TXT,RAW]=xlsread('SG.xlsx',1,'A2:AO1000');
    
    assignin('base','iter',[in(:,2) in(:,1)]);
    assignin('base','Solar_Power',[in(:,2) in(:,3)]);
    assignin('base','SP_SG_Relay',[in(:,2) in(:,4)]);
    assignin('base','BG_SG_Relay',[in(:,2) in(:,5)]);
    assignin('base','RB_SG1_Relay',[in(:,2) in(:,6)]);
    assignin('base','RB_SG2_Relay',[in(:,2) in(:,7)]);
    assignin('base','RF_SG_Relay',[in(:,2) in(:,8)]);
    assignin('base','CB_SG1_Relay',[in(:,2) in(:,19)]);
    assignin('base','CB_SG2_Relay',[in(:,2) in(:,20)]);
    assignin('base','CF_SG_Relay',[in(:,2) in(:,21)]);
    assignin('base','RL1_SG1_Relay',[in(:,2) in(:,9)]);
    assignin('base','RL1_SG2_Relay',[in(:,2) in(:,10)]);
    assignin('base','RL2_SG1_Relay',[in(:,2) in(:,11)]);
    assignin('base','RL2_SG2_Relay',[in(:,2) in(:,12)]);
    assignin('base','RL3_SG1_Relay',[in(:,2) in(:,13)]);
    assignin('base','RL3_SG2_Relay',[in(:,2) in(:,14)]);
    assignin('base','RL4_SG1_Relay',[in(:,2) in(:,15)]);
    assignin('base','RL4_SG2_Relay',[in(:,2) in(:,16)]);
    assignin('base','RL5_SG1_Relay',[in(:,2) in(:,17)]);
    assignin('base','RL5_SG2_Relay',[in(:,2) in(:,18)]);
    assignin('base','CL1_SG1_Relay',[in(:,2) in(:,22)]);
    assignin('base','CL1_SG2_Relay',[in(:,2) in(:,23)]);
    assignin('base','CL2_SG1_Relay',[in(:,2) in(:,24)]);
    assignin('base','CL2_SG2_Relay',[in(:,2) in(:,25)]);
    assignin('base','CL3_SG1_Relay',[in(:,2) in(:,26)]);
    assignin('base','CL3_SG2_Relay',[in(:,2) in(:,27)]);
    assignin('base','CL4_SG1_Relay',[in(:,2) in(:,28)]);
    assignin('base','CL4_SG2_Relay',[in(:,2) in(:,29)]);
    assignin('base','CL5_SG1_Relay',[in(:,2) in(:,30)]);
    assignin('base','CL5_SG2_Relay',[in(:,2) in(:,31)]);
    
    assignin('base','H1P',[in(:,2) in(:,32)]);
    assignin('base','H2P',[in(:,2) in(:,33)]);
    assignin('base','H3P',[in(:,2) in(:,34)]);
    assignin('base','H4P',[in(:,2) in(:,35)]);
    assignin('base','H5P',[in(:,2) in(:,36)]);
    assignin('base','L1P',[in(:,2) in(:,37)]);
    assignin('base','L2P',[in(:,2) in(:,38)]);
    assignin('base','L3P',[in(:,2) in(:,39)]);
    assignin('base','L4P',[in(:,2) in(:,40)]);
    assignin('base','L5P',[in(:,2) in(:,41)]);
    
else
    
    assignin('base','Manual',0);
    
    Sheet_current=scenario-1;
    
    [in,TXT,RAW]=xlsread('SG.xlsx',Sheet_current,'A2:AO1000');
    
    assignin('base','iter',[in(:,2) in(:,1)]);
    assignin('base','Solar_Power',[in(:,2) in(:,3)]);
    assignin('base','SP_SG_Relay',[in(:,2) in(:,4)]);
    assignin('base','BG_SG_Relay',[in(:,2) in(:,5)]);
    assignin('base','RB_SG1_Relay',[in(:,2) in(:,6)]);
    assignin('base','RB_SG2_Relay',[in(:,2) in(:,7)]);
    assignin('base','RF_SG_Relay',[in(:,2) in(:,8)]);
    assignin('base','CB_SG1_Relay',[in(:,2) in(:,19)]);
    assignin('base','CB_SG2_Relay',[in(:,2) in(:,20)]);
    assignin('base','CF_SG_Relay',[in(:,2) in(:,21)]);
    assignin('base','RL1_SG1_Relay',[in(:,2) in(:,9)]);
    assignin('base','RL1_SG2_Relay',[in(:,2) in(:,10)]);
    assignin('base','RL2_SG1_Relay',[in(:,2) in(:,11)]);
    assignin('base','RL2_SG2_Relay',[in(:,2) in(:,12)]);
    assignin('base','RL3_SG1_Relay',[in(:,2) in(:,13)]);
    assignin('base','RL3_SG2_Relay',[in(:,2) in(:,14)]);
    assignin('base','RL4_SG1_Relay',[in(:,2) in(:,15)]);
    assignin('base','RL4_SG2_Relay',[in(:,2) in(:,16)]);
    assignin('base','RL5_SG1_Relay',[in(:,2) in(:,17)]);
    assignin('base','RL5_SG2_Relay',[in(:,2) in(:,18)]);
    assignin('base','CL1_SG1_Relay',[in(:,2) in(:,22)]);
    assignin('base','CL1_SG2_Relay',[in(:,2) in(:,23)]);
    assignin('base','CL2_SG1_Relay',[in(:,2) in(:,24)]);
    assignin('base','CL2_SG2_Relay',[in(:,2) in(:,25)]);
    assignin('base','CL3_SG1_Relay',[in(:,2) in(:,26)]);
    assignin('base','CL3_SG2_Relay',[in(:,2) in(:,27)]);
    assignin('base','CL4_SG1_Relay',[in(:,2) in(:,28)]);
    assignin('base','CL4_SG2_Relay',[in(:,2) in(:,29)]);
    assignin('base','CL5_SG1_Relay',[in(:,2) in(:,30)]);
    assignin('base','CL5_SG2_Relay',[in(:,2) in(:,31)]);
    
    assignin('base','H1P',[in(:,2) in(:,32)]);
    assignin('base','H2P',[in(:,2) in(:,33)]);
    assignin('base','H3P',[in(:,2) in(:,34)]);
    assignin('base','H4P',[in(:,2) in(:,35)]);
    assignin('base','H5P',[in(:,2) in(:,36)]);
    assignin('base','L1P',[in(:,2) in(:,37)]);
    assignin('base','L2P',[in(:,2) in(:,38)]);
    assignin('base','L3P',[in(:,2) in(:,39)]);
    assignin('base','L4P',[in(:,2) in(:,40)]);
    assignin('base','L5P',[in(:,2) in(:,41)]);
    
    
    time_array=in(:,2);
    
    N=size(in(:,2),1);
    
    time_final=time_array(N);
    
    time_final=num2str(time_final);
    
     if experiment==1
        set_param('DCMGHILS','StopTime',time_final);
    else
        set_param('GridSGHardware','StopTime',time_final);
     end
    
end

    


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
h = guidata(DCMicrogrid2);
set(h.pushbutton79,'BackgroundColor','white');

data=get(hObject,'Value');

data=num2str(data);

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/OPC/Constant','Value',data);

else
    
set_param('DCMGHILS/OPC/Constant','Value',data);

end


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

Home1_Priority=get(hObject,'Value');

assignin('base', 'Home1_Priority', Home1_Priority);


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3

experiment=get(hObject,'Value');

assignin('base', 'experiment', experiment);

if experiment==2
    
    close_system('DCMGHILS.mdl');
    
    open('GridSGHardware.mdl');

    load_system('GridSGHardware.mdl');
    
    %set_param('GridSGHardware/OPC/Constant13','Value','0');
    
else
    
    close_system('GridSGHardware.mdl');
    
    open('DCMGHILS.mdl');

    load_system('DCMGHILS.mdl');
    
    %set_param('DCMGHILS/OPC/Constant13','Value','1');
    
end



    


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4

h = guidata(DCMicrogrid2);
set(h.pushbutton79,'BackgroundColor','white');
data=get(hObject,'Value');

data=num2str(data);

experiment=evalin('base','experiment')

if experiment==2

set_param('GridSGHardware/OPC/Constant1','Value',data);

else

set_param('DCMGHILS/OPC/Constant1','Value',data);

end




% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5

h = guidata(DCMicrogrid2);
set(h.pushbutton79,'BackgroundColor','white');
data=get(hObject,'Value');

data=num2str(data);

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/OPC/Constant2','Value',data);

else
    
set_param('DCMGHILS/OPC/Constant2','Value',data);

end


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6
h = guidata(DCMicrogrid2);
set(h.pushbutton79,'BackgroundColor','white');
data=get(hObject,'Value');

data=num2str(data);

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/OPC/Constant3','Value',data);

else
    
    set_param('DCMGHILS/OPC/Constant3','Value',data);
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7
h = guidata(DCMicrogrid2);
set(h.pushbutton79,'BackgroundColor','white');
data=get(hObject,'Value');

data=num2str(data);

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/OPC/Constant4','Value',data);

else
    
set_param('DCMGHILS/OPC/Constant4','Value',data);

end


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8
h = guidata(DCMicrogrid2);
set(h.pushbutton79,'BackgroundColor','white');
data=get(hObject,'Value');

data=num2str(data);

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/OPC/Constant5','Value',data);

else
    
set_param('DCMGHILS/OPC/Constant5','Value',data);

end


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9
h = guidata(DCMicrogrid2);
set(h.pushbutton79,'BackgroundColor','white');
data=get(hObject,'Value');

data=num2str(data);

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/OPC/Constant6','Value',data);

else

set_param('DCMGHILS/OPC/Constant6','Value',data);

end


% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10
h = guidata(DCMicrogrid2);
set(h.pushbutton79,'BackgroundColor','white');
data=get(hObject,'Value');

data=num2str(data);

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/OPC/Constant7','Value',data);

else
    
    set_param('DCMGHILS/OPC/Constant7','Value',data);
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu11.
function popupmenu11_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu11 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu11
h = guidata(DCMicrogrid2);
set(h.pushbutton79,'BackgroundColor','white');
data=get(hObject,'Value');

data=num2str(data);

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/OPC/Constant8','Value',data);

else
    
set_param('DCMGHILS/OPC/Constant8','Value',data);

end


% --- Executes during object creation, after setting all properties.
function popupmenu11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu12.
function popupmenu12_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu12
h = guidata(DCMicrogrid2);
set(h.pushbutton79,'BackgroundColor','white');
data=get(hObject,'Value');

data=num2str(data);

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/OPC/Constant9','Value',data);

else
    
    set_param('DCMGHILS/OPC/Constant9','Value',data);
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/Scopes/Scope2','Open','On');
set_param('GridSGHardware/Scopes/Scope4','Open','On');

else
    
    set_param('DCMGHILS/Scopes/Scope2','Open','On');
set_param('DCMGHILS/Scopes/Scope4','Open','On');

end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/Scopes/Scope','Open','On');

else
    
    set_param('DCMGHILS/Scopes/Scope','Open','On');
    
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/Scopes/Scope3','Open','On');
set_param('GridSGHardware/Scopes/Scope5','Open','On');

else
    
    set_param('DCMGHILS/Scopes/Scope3','Open','On');
set_param('DCMGHILS/Scopes/Scope5','Open','On');

end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

if experiment==2

set_param('GridSGHardware/Scopes/Scope1','Open','On');

else
    
    set_param('DCMGHILS/Scopes/Scope1','Open','On');
    
end


% --- Executes on selection change in popupmenu15.
function popupmenu15_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu15 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu15

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant30','Value','0');
else
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant30','Value','1');
end

else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant30','Value','0');
else
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant30','Value','1');
    end

end




% --- Executes during object creation, after setting all properties.
function popupmenu15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu16.
function popupmenu16_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu16 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu16

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant31','Value','0');
else
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant31','Value','1');
end

else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant31','Value','0');
else
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant31','Value','1');
    end

end


% --- Executes during object creation, after setting all properties.
function popupmenu16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu17.
function popupmenu17_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu17 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu17

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant34','Value','0');
else
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant34','Value','1');
end

else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant34','Value','0');
else
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant34','Value','1');
    end

end


% --- Executes during object creation, after setting all properties.
function popupmenu17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu18.
function popupmenu18_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu18 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu18

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant32','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant33','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant32','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant33','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant32','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant33','Value','1');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant32','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant33','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant32','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant33','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant32','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant33','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu19.
function popupmenu19_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu19 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu19

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant38','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant39','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant38','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant39','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant38','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant39','Value','1');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant38','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant39','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant38','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant39','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant38','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant39','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu20.
function popupmenu20_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu20 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu20

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant40','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant41','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant40','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant41','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant40','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant41','Value','1');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant40','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant41','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant40','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant41','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant40','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant41','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu21.
function popupmenu21_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu21 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu21

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant42','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant43','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant42','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant43','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant42','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant43','Value','1');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant42','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant43','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant42','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant43','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant42','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant43','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu22.
function popupmenu22_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu22 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu22

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant44','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant45','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant44','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant45','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant44','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant45','Value','1');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant44','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant45','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant44','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant45','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant44','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant45','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu23.
function popupmenu23_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu23 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu23

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant46','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant47','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant46','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant47','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant46','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant47','Value','1');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant46','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant47','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant46','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant47','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant46','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant47','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu24.
function popupmenu24_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu24 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu24

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant29','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant29','Value','10');
elseif data==3
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant29','Value','20');
     elseif data==4
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant29','Value','30');
     elseif data==5
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant29','Value','40');
     elseif data==6
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant29','Value','50');
else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant29','Value','60');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant29','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant29','Value','10');
elseif data==3
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant29','Value','20');
     elseif data==4
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant29','Value','30');
     elseif data==5
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant29','Value','40');
     elseif data==6
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant29','Value','50');
else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant29','Value','60');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu25.
function popupmenu25_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu25 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu25

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant37','Value','0');
else
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant37','Value','1');
end

else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant37','Value','0');
else
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant37','Value','1');
    end

end


% --- Executes during object creation, after setting all properties.
function popupmenu25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu26.
function popupmenu26_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu26 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu26

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant35','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant36','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant35','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant36','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant35','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant36','Value','1');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant35','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant36','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant35','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant36','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant35','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant36','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu27.
function popupmenu27_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu27 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu27

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant48','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant49','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant48','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant49','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant48','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant49','Value','1');
end

else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant48','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant49','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant48','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant49','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant48','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant49','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu28.
function popupmenu28_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu28 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu28

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant50','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant51','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant50','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant51','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant50','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant51','Value','1');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant50','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant51','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant50','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant51','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant50','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant51','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu29.
function popupmenu29_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu29 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu29

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant52','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant53','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant52','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant53','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant52','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant53','Value','1');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant52','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant53','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant52','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant53','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant52','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant53','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu30.
function popupmenu30_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu30 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu30

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant54','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant55','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant54','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant55','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant54','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant55','Value','1');
end

else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant54','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant55','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant54','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant55','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant54','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant55','Value','1');
    end
    
end


% --- Executes during object creation, after setting all properties.
function popupmenu30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu31.
function popupmenu31_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu31 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu31

data=get(hObject,'Value');

experiment=evalin('base','experiment');

if experiment==2

if data==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant56','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant57','Value','0');
elseif data==2
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant56','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant57','Value','0');
    else
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant56','Value','0');
     set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant57','Value','1');
end
    
else
    
    if data==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant56','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant57','Value','0');
elseif data==2
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant56','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant57','Value','0');
    else
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant56','Value','0');
     set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant57','Value','1');
    end
    
end



% --- Executes during object creation, after setting all properties.
function popupmenu31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

if experiment==2
    
set_param('GridSGHardware/Monitor','Open','On');

else
    
    set_param('DCMGHILS/Monitor','Open','On');
    
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

if experiment==2

open('GridSGHardware.mdl');

else
    
open('DCMGHILS.mdl');

open('DCMicrogridFinal.mdl');

end


% --- Executes during object creation, after setting all properties.
function pushbutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

%Hardware version

if experiment==2

set_param('GridSGHardware/OPC/Constant11','Value','0');
set_param('GridSGHardware/OPC/Constant12','Value','0');

set_param('GridSGHardware/OPC/Constant10','Value','1');

%set_param('GridSGHardware','SimulationCommand','Start');

else

%load_system('DCMicrogridFinal.mdl');

set_param('DCMGHILS/OPC/Constant11','Value','0');
set_param('DCMGHILS/OPC/Constant12','Value','0');
set_param('DCMGHILS/OPC/Constant10','Value','1');

%set_param('DCMGHILS','SimulationCommand','Start');

%set_param('DCMicrogridFinal','SimulationCommand','Start');

end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

if experiment==2
    
set_param('GridSGHardware/OPC/Constant10','Value','0');    
set_param('GridSGHardware/OPC/Constant12','Value','0');
set_param('GridSGHardware/OPC/Constant11','Value','1');

%set_param('GridSGHardware','SimulationCommand','Stop');

else

set_param('DCMGHILS/OPC/Constant10','Value','0');    
set_param('DCMGHILS/OPC/Constant12','Value','0');    
set_param('DCMGHILS/OPC/Constant11','Value','1');
    
%set_param('DCMGHILS','SimulationCommand','Stop');

%set_param('DCMicrogridFinal','SimulationCommand','Stop');

end


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
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



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function GUIScope(block,eventdata)

 h = guidata(DCMicrogrid2);
 
inom=0.025;  %Threshold to detect power being delivered to a load (Amps)
vnom=11.00; %Undervoltage threshold

experiment=evalin('base','experiment');
 
  time_current=block.CurrentTime;
  RL1_Current=min(block.InputPort(1).Data);
  RL2_Current=min(block.InputPort(2).Data);
  RL3_Current=min(block.InputPort(3).Data);
  RL4_Current=min(block.InputPort(4).Data);
  RL5_Current=min(block.InputPort(5).Data);
  CL1_Current=min(block.InputPort(6).Data);
  CL2_Current=min(block.InputPort(7).Data);
  CL3_Current=min(block.InputPort(8).Data);
  CL4_Current=min(block.InputPort(9).Data);
  CL5_Current=min(block.InputPort(10).Data);
  H1AccountBalance=block.InputPort(11).Data;
  H2AccountBalance=block.InputPort(12).Data;
  H3AccountBalance=block.InputPort(13).Data;
  H4AccountBalance=block.InputPort(14).Data;
  H5AccountBalance=block.InputPort(15).Data;
  C1AccountBalance=block.InputPort(16).Data;
  C2AccountBalance=block.InputPort(17).Data;
  C3AccountBalance=block.InputPort(18).Data;
  C4AccountBalance=block.InputPort(19).Data;
  C5AccountBalance=block.InputPort(20).Data;
  DL_Voltage=min(block.InputPort(21).Data);
  RB_Voltage=min(block.InputPort(22).Data);
  CB_Voltage=min(block.InputPort(23).Data);
  Solar_Power=block.InputPort(24).Data;
  Bat_SOC=block.InputPort(25).Data;
  Electricity_Price=block.InputPort(26).Data;
  SP_Current=min(block.InputPort(27).Data);
  SP_Voltage=min(block.InputPort(28).Data);
  BG_Current=min(block.InputPort(29).Data);
  BG_Voltage=min(block.InputPort(30).Data);
  
  SP_SG_Relay=block.InputPort(31).Data;
  BG_SG_Relay=block.InputPort(32).Data;
  RB_SG1_Relay=block.InputPort(33).Data;
  RB_SG2_Relay=block.InputPort(34).Data;
  RF_SG_Relay=block.InputPort(35).Data;
  CB_SG1_Relay=block.InputPort(36).Data;
  CB_SG2_Relay=block.InputPort(37).Data;
  CF_SG_Relay=block.InputPort(38).Data;
  RL1_SG1_Relay=block.InputPort(39).Data;
  RL1_SG2_Relay=block.InputPort(40).Data;
   RL2_SG1_Relay=block.InputPort(41).Data;
   RL2_SG2_Relay=block.InputPort(42).Data;
   RL3_SG1_Relay=block.InputPort(43).Data;
   RL3_SG2_Relay=block.InputPort(44).Data;
   RL4_SG1_Relay=block.InputPort(45).Data;
   RL4_SG2_Relay=block.InputPort(46).Data;
   RL5_SG1_Relay=block.InputPort(47).Data;
   RL5_SG2_Relay=block.InputPort(48).Data;
   CL1_SG1_Relay=block.InputPort(49).Data;
   CL1_SG2_Relay=block.InputPort(50).Data;
   CL2_SG1_Relay=block.InputPort(51).Data;
   CL2_SG2_Relay=block.InputPort(52).Data;
   CL3_SG1_Relay=block.InputPort(53).Data;
   CL3_SG2_Relay=block.InputPort(54).Data;
   CL4_SG1_Relay=block.InputPort(55).Data;
   CL4_SG2_Relay=block.InputPort(56).Data;
   CL5_SG1_Relay=block.InputPort(57).Data;
   CL5_SG2_Relay=block.InputPort(58).Data;
   ResetSuccess=block.InputPort(59).Data;
   StartSuccess=block.InputPort(60).Data;
   ShutdownSuccess=block.InputPort(61).Data;
   iter=block.InputPort(62).Data;
   H1P=block.InputPort(63).Data;
   H2P=block.InputPort(64).Data;
   H3P=block.InputPort(65).Data;
   H4P=block.InputPort(66).Data;
   H5P=block.InputPort(67).Data;
   C1P=block.InputPort(68).Data;
   C2P=block.InputPort(69).Data;
   C3P=block.InputPort(70).Data;
   C4P=block.InputPort(71).Data;
   C5P=block.InputPort(72).Data;
   LowestSupportedPriority=block.InputPort(73).Data;
   
  
  
  
  set(h.edit4,'String',num2str(RL1_Current));
  set(h.edit6,'String',num2str(RL2_Current));
  set(h.edit8,'String',num2str(RL3_Current));
  set(h.edit10,'String',num2str(RL4_Current));
  set(h.edit12,'String',num2str(RL5_Current));
  set(h.edit14,'String',num2str(CL1_Current));
  set(h.edit16,'String',num2str(CL2_Current));
  set(h.edit18,'String',num2str(CL3_Current));
  set(h.edit20,'String',num2str(CL4_Current));
  set(h.edit22,'String',num2str(CL5_Current));
  set(h.edit3,'String',num2str(H1AccountBalance));
  set(h.edit5,'String',num2str(H2AccountBalance));
  set(h.edit7,'String',num2str(H3AccountBalance));
  set(h.edit9,'String',num2str(H4AccountBalance));
  set(h.edit11,'String',num2str(H5AccountBalance));
  set(h.edit13,'String',num2str(C1AccountBalance));
  set(h.edit15,'String',num2str(C2AccountBalance));
  set(h.edit17,'String',num2str(C3AccountBalance));
  set(h.edit19,'String',num2str(C4AccountBalance));
  set(h.edit21,'String',num2str(C5AccountBalance));
  set(h.edit29,'String',num2str(DL_Voltage));
  set(h.edit30,'String',num2str(RB_Voltage));
  set(h.edit31,'String',num2str(CB_Voltage));
  %set(h.edit25,'String',num2str(Solar_Power));
  set(h.edit28,'String',num2str(Bat_SOC));
  set(h.edit32,'String',num2str(Electricity_Price));
  set(h.edit23,'String',num2str(SP_Current));
  set(h.edit24,'String',num2str(SP_Voltage));
  set(h.edit26,'String',num2str(BG_Current));
  set(h.edit27,'String',num2str(BG_Voltage));
  set(h.edit35,'String',num2str(Solar_Power));
  set(h.edit36,'String',num2str(H1P));
  set(h.edit37,'String',num2str(H2P));
  set(h.edit38,'String',num2str(H3P));
  set(h.edit39,'String',num2str(H4P));
  set(h.edit40,'String',num2str(H5P));
  set(h.edit41,'String',num2str(C1P));
  set(h.edit42,'String',num2str(C2P));
  set(h.edit43,'String',num2str(C3P));
  set(h.edit44,'String',num2str(C4P));
  set(h.edit45,'String',num2str(C5P));
  set(h.edit46,'String',num2str(LowestSupportedPriority));
  
  Manual=evalin('base','Manual');
  
  if Manual==1
      set(h.edit34,'String','Manual');
  else
      set(h.edit34,'String',num2str(iter));
  end
  
  
  %Read in images used to update the GUI
  
resfault=evalin('base','resfault');
respowered=evalin('base','respowered');
resunpowered=evalin('base','resunpowered');
comfault=evalin('base','comfault');
compowered=evalin('base','compowered');
comunpowered=evalin('base','comunpowered');
battfault=evalin('base','battfault');
battconnected=evalin('base','battconnected');
battdisconnected=evalin('base','battdisconnected');
solarfault=evalin('base','solarfault');
solarconnected=evalin('base','solarconnected');
solardisconnected=evalin('base','solardisconnected');
groundfault=evalin('base','groundfault');
nofault=evalin('base','nofault');
undervoltage=evalin('base','undervoltage');
noundervoltage=evalin('base','noundervoltage');



if SP_SG_Relay==0 && min(SP_Current)>inom
    set(h.pushbutton27,'CData',solarconnected);
elseif SP_SG_Relay==0 && min(SP_Current)<=inom
    set(h.pushbutton27,'CData',solardisconnected);
else
    set(h.pushbutton27,'CData',solarfault);
end

if BG_SG_Relay==0 && (min(BG_Current)>inom || min(BG_Current)<-inom)
    set(h.pushbutton28,'CData',battconnected);
elseif BG_SG_Relay==0 && (min(BG_Current)<=inom || min(BG_Current)>=-inom)
    set(h.pushbutton28,'CData',battdisconnected);
else
    set(h.pushbutton28,'CData',battfault);
end


if (RL1_SG1_Relay==0 && RL1_SG2_Relay==0) && min(RL1_Current)>inom
    set(h.pushbutton17,'CData',respowered);
elseif (RL1_SG1_Relay==0 && RL1_SG2_Relay==0) && min(RL1_Current)<=inom
    set(h.pushbutton17,'CData',resunpowered);
else
    set(h.pushbutton17,'CData',resfault);
end

if (RL2_SG1_Relay==0 && RL2_SG2_Relay==0) && min(RL2_Current)>inom
    set(h.pushbutton21,'CData',respowered);
elseif (RL2_SG1_Relay==0 && RL2_SG2_Relay==0) && min(RL2_Current)<=inom
    set(h.pushbutton21,'CData',resunpowered);
else
    set(h.pushbutton21,'CData',resfault);
end

if (RL3_SG1_Relay==0 && RL3_SG2_Relay==0) && min(RL3_Current)>inom
    set(h.pushbutton20,'CData',respowered);
elseif (RL3_SG1_Relay==0 && RL3_SG2_Relay==0) && min(RL3_Current)<=inom
    set(h.pushbutton20,'CData',resunpowered);
else
    set(h.pushbutton20,'CData',resfault);
end

if (RL4_SG1_Relay==0 && RL4_SG2_Relay==0) && min(RL4_Current)>inom
    set(h.pushbutton19,'CData',respowered);
elseif (RL4_SG1_Relay==0 && RL4_SG2_Relay==0) && min(RL4_Current)<=inom
    set(h.pushbutton19,'CData',resunpowered);
else
    set(h.pushbutton19,'CData',resfault);
end

if (RL5_SG1_Relay==0 && RL5_SG2_Relay==0) && min(RL5_Current)>inom
    set(h.pushbutton18,'CData',respowered);
elseif (RL5_SG1_Relay==0 && RL5_SG2_Relay==0) && min(RL5_Current)<=inom
    set(h.pushbutton18,'CData',resunpowered);
else
    set(h.pushbutton18,'CData',resfault);
end

if (CL1_SG1_Relay==0 && CL1_SG2_Relay==0) && min(CL1_Current)>inom
    set(h.pushbutton26,'CData',compowered);
elseif (CL1_SG1_Relay==0 && CL1_SG2_Relay==0) && min(CL1_Current)<=inom
    set(h.pushbutton26,'CData',comunpowered);
else
    set(h.pushbutton26,'CData',comfault);
end

if (CL2_SG1_Relay==0 && CL2_SG2_Relay==0) && min(CL2_Current)>inom
    set(h.pushbutton25,'CData',compowered);
elseif (CL2_SG1_Relay==0 && CL2_SG2_Relay==0) && min(CL2_Current)<=inom
    set(h.pushbutton25,'CData',comunpowered);
else
    set(h.pushbutton25,'CData',comfault);
end

if (CL3_SG1_Relay==0 && CL3_SG2_Relay==0) && min(CL3_Current)>inom
    set(h.pushbutton24,'CData',compowered);
elseif (CL3_SG1_Relay==0 && CL3_SG2_Relay==0) && min(CL3_Current)<=inom
    set(h.pushbutton24,'CData',comunpowered);
else
    set(h.pushbutton24,'CData',comfault);
end

if (CL4_SG1_Relay==0 && CL4_SG2_Relay==0) && min(CL4_Current)>inom
    set(h.pushbutton23,'CData',compowered);
elseif (CL4_SG1_Relay==0 && CL4_SG2_Relay==0) && min(CL4_Current)<=inom
    set(h.pushbutton23,'CData',comunpowered);
else
    set(h.pushbutton23,'CData',comfault);
end

if (CL5_SG1_Relay==0 && CL5_SG2_Relay==0) && min(CL5_Current)>inom
    set(h.pushbutton22,'CData',compowered);
elseif (CL5_SG1_Relay==0 && CL5_SG2_Relay==0) && min(CL5_Current)<=inom
    set(h.pushbutton22,'CData',comunpowered);
else
    set(h.pushbutton22,'CData',comfault);
end

if RF_SG_Relay==0
    set(h.pushbutton55,'CData',nofault);
else
    set(h.pushbutton55,'CData',groundfault);
end

if CF_SG_Relay==0
    set(h.pushbutton57,'CData',nofault);
else
    set(h.pushbutton57,'CData',groundfault);
end

if min(DL_Voltage)<vnom
    set(h.pushbutton62,'CData',undervoltage);
else
    set(h.pushbutton62,'CData',noundervoltage);
end

if min(RB_Voltage)<vnom
    set(h.pushbutton60,'CData',undervoltage);
else
    set(h.pushbutton60,'CData',noundervoltage);
end

if min(CB_Voltage)<vnom
    set(h.pushbutton61,'CData',undervoltage);
else
    set(h.pushbutton61,'CData',noundervoltage);
end


if experiment==1

if ResetSuccess==1
     set_param('DCMGHILS/OPC/Constant12','Value','0');
end

if StartSuccess==1
     set_param('DCMGHILS/OPC/Constant10','Value','0');
end

if ShutdownSuccess==1
     set_param('DCMGHILS/OPC/Constant11','Value','0');
end

else
    
    if ResetSuccess==1
     set_param('GridSGHardware/OPC/Constant12','Value','0');
end

if StartSuccess==1
     set_param('GridSGHardware/OPC/Constant10','Value','0');
end

if ShutdownSuccess==1
     set_param('GridSGHardware/OPC/Constant11','Value','0');
end

end
    



% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



experiment=evalin('base','experiment');

    
    

%Hardware version

if experiment==2
    
%open('GridSGHardware.mdl');

%load_system('GridSGHardware.mdl');

set_param('GridSGHardware/OPC/Constant11','Value','0');
set_param('GridSGHardware/OPC/Constant12','Value','0');
set_param('GridSGHardware/OPC/Constant10','Value','0');

set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant30','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant31','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant32','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant33','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant34','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant35','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant36','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant37','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant38','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant39','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant40','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant41','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant42','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant43','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant44','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant45','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant46','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant47','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant48','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant49','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant50','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant51','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant52','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant53','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant54','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant55','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant56','Value','0');
set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant57','Value','0');


else
    
%open('DCMGHILS.mdl');

%open('DCMicrogridFinal.mdl');
  
%load_system('DCMGHILS.mdl');

%load_system('DCMicrogridFinal.mdl');

set_param('DCMGHILS/OPC/Constant11','Value','0');
set_param('DCMGHILS/OPC/Constant12','Value','0');
set_param('DCMGHILS/OPC/Constant10','Value','0');

set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant30','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant31','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant32','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant33','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant34','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant35','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant36','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant37','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant38','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant39','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant40','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant41','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant42','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant43','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant44','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant45','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant46','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant47','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant48','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant49','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant50','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant51','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant52','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant53','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant54','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant55','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant56','Value','0');
set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant57','Value','0');


%set_param('DCMicrogridFinal','SimulationCommand','Start');

end




% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant38';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant39';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant38';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant39';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end



% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant56';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant57';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant56';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant57';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant40';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant41';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant40';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant41';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant42';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant43';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant42';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant43';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant44';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant45';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant44';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant45';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant46';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant47';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant46';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant47';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant48';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant49';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant48';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant49';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant50';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant51';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant50';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant51';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant52';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant53';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant52';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant53';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant54';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant55';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant54';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant55';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton39.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');


%Hardware
if experiment==2
 
    SG1=str2num(get_param('GridSGHardware/Analog Digital Outputs to Grid/Constant32','Value'));
    SG2=str2num(get_param('GridSGHardware/Analog Digital Outputs to Grid/Constant33','Value'));
    
    if SG1==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant32','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant33','Value','0');
    else
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant32','Value','1');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant33','Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param('DCMGHILS/Analog Digital Outputs to Grid/Constant32','Value'));
    SG2=str2num(get_param('DCMGHILS/Analog Digital Outputs to Grid/Constant33','Value'));
    
    if SG2==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant32','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant33','Value','0');
    else
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant32','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant33','Value','1');
    end
    
end


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant35';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant36';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant35';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant36';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG2==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG2==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton41.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

%Hardware
if experiment==2
 
    SG1=str2num(get_param('GridSGHardware/Analog Digital Outputs to Grid/Constant32','Value'));
    SG2=str2num(get_param('GridSGHardware/Analog Digital Outputs to Grid/Constant33','Value'));
    
    if SG2==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant32','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant33','Value','0');
    else
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant32','Value','0');
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant33','Value','1');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param('DCMGHILS/Analog Digital Outputs to Grid/Constant32','Value'));
    SG2=str2num(get_param('DCMGHILS/Analog Digital Outputs to Grid/Constant33','Value'));
    
    if SG1==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant32','Value','0');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant33','Value','0');
    else
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant32','Value','1');
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant33','Value','0');
    end
    
end



% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant38';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant39';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant38';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant39';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','1');
    set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant48';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant49';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant48';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant49';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','1');
    set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant40';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant41';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant40';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant41';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','1');
    set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant50';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant51';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant50';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant51';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','1');
    set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant42';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant43';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant42';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant43';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','1');
    set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant52';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant53';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant52';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant53';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','1');
    set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant44';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant45';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant44';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant45';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','1');
    set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton49.
function pushbutton49_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant54';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant55';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant54';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant55';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','1');
    set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant46';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant47';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant46';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant47';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','1');
    set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant56';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant57';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant56';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant57';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
    set_param(sg1hw,'Value','0');
    set_param(sg2hw,'Value','0');
    else
    set_param(sg1hw,'Value','1');
    set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton52.
function pushbutton52_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');


%Hardware
if experiment==2
 
    SP_SG_Relay=str2num(get_param('GridSGHardware/Analog Digital Outputs to Grid/Constant30','Value'));
    
    if SP_SG_Relay==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant30','Value','0');
    else
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant30','Value','1');
    end

 
%HILS
else
    
    SP_SG_Relay=str2num(get_param('DCMGHILS/Analog Digital Outputs to Grid/Constant30','Value'));
    
    
    if SP_SG_Relay==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant30','Value','0');
    else
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant30','Value','1');
    end
 
end



% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');


%Hardware
if experiment==2
 
    BG_SG_Relay=str2num(get_param('GridSGHardware/Analog Digital Outputs to Grid/Constant31','Value'));
    
    if BG_SG_Relay==1
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant31','Value','0');
    else
    set_param('GridSGHardware/Analog Digital Outputs to Grid/Constant31','Value','1');
    end

 
%HILS
else
    
    BG_SG_Relay=str2num(get_param('DCMGHILS/Analog Digital Outputs to Grid/Constant31','Value'));
    
    if BG_SG_Relay==1
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant31','Value','0');
    else
    set_param('DCMGHILS/Analog Digital Outputs to Grid/Constant31','Value','1');
    end
 
end


% --- Executes on button press in pushbutton55.
function pushbutton55_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sgfhw='GridSGHardware/Analog Digital Outputs to Grid/Constant34';
sgfhils='DCMGHILS/Analog Digital Outputs to Grid/Constant34';


%Hardware
if experiment==2
 
    SGF=str2num(get_param(sgfhw,'Value'));
    
    
    if SGF==1
    set_param(sgfhw,'Value','0');
    else
    set_param(sgfhw,'Value','1');
    end
    
else
    
    SGF=str2num(get_param(sgfhils,'Value'));
    
    
    if SGF==1
    set_param(sgfhils,'Value','0');
    else
    set_param(sgfhils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton57.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sgfhw='GridSGHardware/Analog Digital Outputs to Grid/Constant37';
sgfhils='DCMGHILS/Analog Digital Outputs to Grid/Constant37';


%Hardware
if experiment==2
 
    SGF=str2num(get_param(sgfhw,'Value'));
    
    
    if SGF==1
    set_param(sgfhw,'Value','0');
    else
    set_param(sgfhw,'Value','1');
    end
    
else
    
    SGF=str2num(get_param(sgfhils,'Value'));
    
    
    if SGF==1
    set_param(sgfhils,'Value','0');
    else
    set_param(sgfhils,'Value','1');
    end
    
end


% --- Executes on button press in pushbutton58.
function pushbutton58_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

h = guidata(DCMicrogrid2);

rl1status=evalin('base','solardisconnected');

set(h.pushbutton58,'CData',rl1status);


% --- Executes on button press in pushbutton59.
function pushbutton59_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton63.
function pushbutton63_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

experiment=evalin('base','experiment');

sg1hw='GridSGHardware/Analog Digital Outputs to Grid/Constant35';
sg2hw='GridSGHardware/Analog Digital Outputs to Grid/Constant36';
sg1hils='DCMGHILS/Analog Digital Outputs to Grid/Constant35';
sg2hils='DCMGHILS/Analog Digital Outputs to Grid/Constant36';

%Hardware
if experiment==2
 
    SG1=str2num(get_param(sg1hw,'Value'));
    SG2=str2num(get_param(sg2hw,'Value'));
    
    if SG1==1
        set_param(sg1hw,'Value','0');
        set_param(sg2hw,'Value','0');
    else
        set_param(sg1hw,'Value','1');
        set_param(sg2hw,'Value','0');
    end
    
else
    
    %HILS
    
    SG1=str2num(get_param(sg1hils,'Value'));
    SG2=str2num(get_param(sg2hils,'Value'));
    
    if SG1==1
    set_param(sg1hils,'Value','0');
    set_param(sg2hils,'Value','0');
    else
    set_param(sg1hils,'Value','1');
    set_param(sg2hils,'Value','0');
    end
    
end


% --- Executes on button press in pushbutton72.
function pushbutton72_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton73.
function pushbutton73_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34 as text
%        str2double(get(hObject,'String')) returns contents of edit34 as a double


% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double


% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit36_Callback(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit36 as text
%        str2double(get(hObject,'String')) returns contents of edit36 as a double


% --- Executes during object creation, after setting all properties.
function edit36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit37_Callback(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit37 as text
%        str2double(get(hObject,'String')) returns contents of edit37 as a double


% --- Executes during object creation, after setting all properties.
function edit37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit38_Callback(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit38 as text
%        str2double(get(hObject,'String')) returns contents of edit38 as a double


% --- Executes during object creation, after setting all properties.
function edit38_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit39_Callback(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit39 as text
%        str2double(get(hObject,'String')) returns contents of edit39 as a double


% --- Executes during object creation, after setting all properties.
function edit39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit40_Callback(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit40 as text
%        str2double(get(hObject,'String')) returns contents of edit40 as a double


% --- Executes during object creation, after setting all properties.
function edit40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit41_Callback(hObject, eventdata, handles)
% hObject    handle to edit41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit41 as text
%        str2double(get(hObject,'String')) returns contents of edit41 as a double


% --- Executes during object creation, after setting all properties.
function edit41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit42_Callback(hObject, eventdata, handles)
% hObject    handle to edit42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit42 as text
%        str2double(get(hObject,'String')) returns contents of edit42 as a double


% --- Executes during object creation, after setting all properties.
function edit42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit43_Callback(hObject, eventdata, handles)
% hObject    handle to edit43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit43 as text
%        str2double(get(hObject,'String')) returns contents of edit43 as a double


% --- Executes during object creation, after setting all properties.
function edit43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit44_Callback(hObject, eventdata, handles)
% hObject    handle to edit44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit44 as text
%        str2double(get(hObject,'String')) returns contents of edit44 as a double


% --- Executes during object creation, after setting all properties.
function edit44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit45_Callback(hObject, eventdata, handles)
% hObject    handle to edit45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit45 as text
%        str2double(get(hObject,'String')) returns contents of edit45 as a double


% --- Executes during object creation, after setting all properties.
function edit45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function edit46_Callback(hObject, eventdata, handles)
% hObject    handle to edit46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit46 as text
%        str2double(get(hObject,'String')) returns contents of edit46 as a double


% --- Executes during object creation, after setting all properties.
function edit46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton79.
%sets priority values to defaults
function pushbutton79_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)\
experiment=evalin('base','experiment');
set(hObject,'BackgroundColor','green');

if experiment==2

set_param('GridSGHardware/OPC/Constant','Value','10');
set_param('GridSGHardware/OPC/Constant1','Value','9');
set_param('GridSGHardware/OPC/Constant2','Value','8');
set_param('GridSGHardware/OPC/Constant3','Value','7');
set_param('GridSGHardware/OPC/Constant4','Value','6');
set_param('GridSGHardware/OPC/Constant5','Value','5');
set_param('GridSGHardware/OPC/Constant6','Value','4');
set_param('GridSGHardware/OPC/Constant7','Value','3');
set_param('GridSGHardware/OPC/Constant8','Value','2');
set_param('GridSGHardware/OPC/Constant9','Value','1');

else
    
set_param('DCMGHILS/OPC/Constant','Value','10');
set_param('DCMGHILS/OPC/Constant1','Value','9');
set_param('DCMGHILS/OPC/Constant2','Value','8');
set_param('DCMGHILS/OPC/Constant3','Value','7');
set_param('DCMGHILS/OPC/Constant4','Value','6');
set_param('DCMGHILS/OPC/Constant5','Value','5');
set_param('DCMGHILS/OPC/Constant6','Value','4');
set_param('DCMGHILS/OPC/Constant7','Value','3');
set_param('DCMGHILS/OPC/Constant8','Value','2');
set_param('DCMGHILS/OPC/Constant9','Value','1');

end
