function TransformaLog_Callback(hObject, eventdata, handles)
% hObject    handle to TransformaLog (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I= handles.image;
dim= handles.dims;
c = handles.CTextoo;
C = str2double(c);



if dim==3

[X, NEWMAP] = rgb2ind(I, 256);

Loga=C*log(NEWMAP+1);
I=ind2rgb(X, Loga);
axes(handles.axes2);

imshow(I);
end

if dim==2


I=C*log(I+1);
axes(handles.axes2);

imshow(I);
end

