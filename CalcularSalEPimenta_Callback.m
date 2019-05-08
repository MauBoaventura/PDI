function CalcularSalEPimenta_Callback(hObject, eventdata, handles)
% hObject    handle to PorcentagemSalEPimenta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I= handles.image;
por = handles.valorPorcentagemRuido;
por = str2double(por)/100;
I=imnoise(I,'salt & pepper',por)
axes(handles.axes2);
imshow(I);
