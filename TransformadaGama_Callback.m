function TransformadaGama_Callback(hObject, eventdata, handles)
% hObject    handle to TransformadaGama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
original = handles.image;
a = handles.gama;
b = handles.ValorDeC;
gama = str2double(a);
c = str2double(b);

g1 = imadjust(original, [0 c], [0 c], gama);
axes(handles.axes2);
imshow(g1);
