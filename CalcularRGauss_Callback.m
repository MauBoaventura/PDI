function CalcularRGauss_Callback(hObject, eventdata, handles)
% hObject    handle to CalcularRGauss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I= handles.image;
por = handles.valorPorcentagemRuido;
por = str2double(por);
I=imnoise(I,'gaussian')

axes(handles.axes2);
imshow(I);
end