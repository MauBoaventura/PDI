function HSV_Callback(hObject, eventdata, handles)
% hObject    handle to HSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles);
IMG= handles.image;
HSV=rgb2hsv(IMG);
axes(handles.axes2);
imshow(HSV);
