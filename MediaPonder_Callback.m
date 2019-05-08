function MediaPonder_Callback(hObject, eventdata, handles)
% hObject    handle to MediaPonder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
F= handles.image;
dim= handles.dims;

valorCima=str2double(handles.PonCima);
valorBaixo=str2double(handles.PonBaixo);
valorD=str2double(handles.PonDireita);
valorE=str2double(handles.PonEsquerda);
total=valorCima+valorBaixo+valorD+valorE;

h = [1 ,valorCima,1;valorD,1,valorE;1 valorBaixo 1]/(total+5);

if dim==3

r=F(:,:,1);
g=F(:,:,2);
b=F(:,:,3);

R=imfilter(r,h,'same','symmetric');
G=imfilter(g,h,'same','symmetric');
B=imfilter(b,h,'same','symmetric');

IMAGEM(:, :, 1)=R;
IMAGEM(:, :, 2)=G;
IMAGEM(:, :, 3)=B;

axes(handles.axes2);
imshow(IMAGEM);
end

if dim==2

IMAGEM = imfilter(F,h,'same','symmetric');
axes(handles.axes2);
imshow(IMAGEM);

end