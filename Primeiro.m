function varargout = Primeiro(varargin)
% PRIMEIRO MATLAB code for Primeiro.fig
%      PRIMEIRO, by itself, creates a new PRIMEIRO or raises the existing
%      singleton*.
%
%      H = PRIMEIRO returns th'e handle to a new PRIMEIRO or the handle to
%      the existing singleton*.
%
%      PRIMEIRO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRIMEIRO.M with the given input arguments.
%
%      PRIMEIRO('Property','Value',...) creates a new PRIMEIRO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Primeiro_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Primeiro_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Primeiro

% Last Modified by GUIDE v2.5 08-May-2019 19:24:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Primeiro_OpeningFcn, ...
    'gui_OutputFcn',  @Primeiro_OutputFcn, ...
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

function Primeiro_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
visible(handles);

function varargout = Primeiro_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;

function Arquivo_Callback(hObject, eventdata, handles)
function Realce_Callback(hObject, eventdata, handles)
function Histograma_Callback(hObject, eventdata, handles)
function Modelos_de_Cor_Callback(hObject, eventdata, handles)
function Filtros_Espaciais_Callback(hObject, eventdata, handles)
function Ruido_Callback(hObject, eventdata, handles)
function Restaurar_Imagem_Callback(hObject, eventdata, handles)
function Morfologia_Matematica_Callback(hObject, eventdata, handles)

%---------------------------------------------------------------------------------------------------------
%---------------------------------------------------------------------------------------------------------
%---------------------------------------------------------------------------------------------------------
%---------------------------------------------------------------------------------------------------------
%---------------------------------------------------------------------------------------------------------

%MEDIA A
function ResMA_Callback(hObject, eventdata, handles)
visible(handles);
set(handles.textTamJanela,'Visible','On');
set(handles.porcentagemR,'Visible','On');
set(handles.ResMedia,'Visible','On');
function ResMedia_Callback(hObject, eventdata, handles)
F= handles.image;
tam=str2double(handles.valorPorcentagemRuido);
dim= handles.dims;
if dim==3
    
    r=F(:,:,1);
    g=F(:,:,2);
    b=F(:,:,3);
    
    mask = fspecial('average',3);%3 é padrão da imagem
    
    R = imfilter(r,mask,'replicate');
    G= imfilter(g,mask,'replicate');
    B= imfilter(b,mask,'replicate');
    
    I(:, :, 1)=R;
    I(:, :, 2)=G;
    I(:, :, 3)=B;
    axes(handles.axes2);
    imshow(I);
end
if dim==2
    f=imrest(F,'amean',tam,tam,0)
    I = f
    axes(handles.axes2);
    imshow(I);
end

%MEDIA G
function ResMG_Callback(hObject, eventdata, handles)
visible(handles);
set(handles.textTamJanela,'Visible','On');
set(handles.porcentagemR,'Visible','On');
set(handles.ResMediaG,'Visible','On');
function ResMediaG_Callback(hObject, eventdata, handles)
F= handles.image;
tam=str2double(handles.valorPorcentagemRuido);
dim= handles.dims;
if dim==2
    f=imrest(F,'gmean',tam,tam,0)
    I = f
    axes(handles.axes2);
    imshow(I);
end

%MEDIA H
function ResMH_Callback(hObject, eventdata, handles)
visible(handles);
set(handles.textTamJanela,'Visible','On');
set(handles.porcentagemR,'Visible','On');
set(handles.ResMediaH,'Visible','On');
function ResMediaH_Callback(hObject, eventdata, handles)
F= handles.image;
tam=str2double(handles.valorPorcentagemRuido);
dim= handles.dims;
if dim==2
    f=imrest(F,'hmean',tam,tam,0)
    I = f
    axes(handles.axes2);
    imshow(I);
end

%MEDIA CH
function ResMCH_Callback(hObject, eventdata, handles)
visible(handles);
set(handles.textCalcularMContraHarmonica,'Visible','On');
set(handles.CalcularMContraHarmonica,'Visible','On');
set(handles.ResMCHOrdem,'Visible','On');
set(handles.textTamJanela,'Visible','On');
set(handles.porcentagemR,'Visible','On');
set(handles.ResMediaCH,'Visible','On');
function ResMediaCH_Callback(hObject, eventdata, handles)
F= handles.image;
tam=str2double(handles.valorPorcentagemRuido);
ordem=str2double(handles.ordem)

dim= handles.dims;
if dim==2
    f=imrest(F,'chmean',tam,tam,ordem)
    I = f
    axes(handles.axes2);
    imshow(I);
end

%ADAPTATIVO LOCAL
function ResAdaptativo_Local_Callback(hObject, eventdata, handles)
visible(handles);
set(handles.textTamJanela,'Visible','On');
set(handles.porcentagemR,'Visible','On');
set(handles.ResAdapLocal,'Visible','On');
function ResAdapLocal_Callback(hObject, eventdata, handles)
F= handles.image;
tam=str2double(handles.valorPorcentagemRuido);

dim= handles.dims;
if dim==2
    f=wiener2(F,[tam tam])
    I = f
    axes(handles.axes2);
    imshow(I);
end

%ADAPTATIVO MEDIANA
function ResAdaptativo_Mediana_Callback(hObject, eventdata, handles)
visible(handles);
set(handles.textTamJanela,'Visible','On');
set(handles.porcentagemR,'Visible','On');
set(handles.ResAdapMed,'Visible','On');
function ResAdapMed_Callback(hObject, eventdata, handles)
F= handles.image;
tam=str2double(handles.valorPorcentagemRuido);

dim= handles.dims;
if dim==2
    f=adpmedian(F,tam)
    I = f
    axes(handles.axes2);
    imshow(I);
end

function Erosao_Callback(hObject, eventdata, handles)
F= handles.image;
se = strel('disk',1,0)
F2 = imerode(F,se);
axes(handles.axes2);
imshow(F2);

function Dilatacao_Callback(hObject, eventdata, handles)
F= handles.image;
se = strel('disk',1,0)
F2 = imdilate(F,se);
axes(handles.axes2);
imshow(F2);

function Abertura_Callback(hObject, eventdata, handles)
F= handles.image;
se = strel('disk',1,0)
F2 = imopen(F,se);
axes(handles.axes2);
imshow(F2);

function Fechamento_Callback(hObject, eventdata, handles)
F= handles.image;
se = strel('disk',1,0)
F2 = imclose(F,se)
axes(handles.axes2);
imshow(F2);

function Hit_or_Miss_Callback(hObject, eventdata, handles)
