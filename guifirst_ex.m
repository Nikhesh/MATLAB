function varargout = guifirst_ex(varargin)
% GUIFIRST_EX M-file for guifirst_ex.fig
%      GUIFIRST_EX, by itself, creates a new GUIFIRST_EX or raises the existing
%      singleton*.
%
%      H = GUIFIRST_EX returns the handle to a new GUIFIRST_EX or the handle to
%      the existing singleton*.
%
%      GUIFIRST_EX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIFIRST_EX.M with the given input arguments.
%
%      GUIFIRST_EX('Property','Value',...) creates a new GUIFIRST_EX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guifirst_ex_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guifirst_ex_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help guifirst_ex

% Last Modified by GUIDE v2.5 28-Sep-2016 14:18:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guifirst_ex_OpeningFcn, ...
                   'gui_OutputFcn',  @guifirst_ex_OutputFcn, ...
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


% --- Executes just before guifirst_ex is made visible.
function guifirst_ex_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guifirst_ex (see VARARGIN)

% Choose default command line output for guifirst_ex
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guifirst_ex wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guifirst_ex_OutputFcn(hObject, eventdata, handles) 
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
im=imread('cameraman.tif');
imshow(im)

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


