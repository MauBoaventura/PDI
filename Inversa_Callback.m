function Inversa_Callback(hObject, eventdata, handles)
% hObject    handle to Inversa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles);
I = handles.image;
g1=imcomplement(I);
axes(handles.axes2);
imshow(g1);
