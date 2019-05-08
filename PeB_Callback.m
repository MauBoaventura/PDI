function PeB_Callback(hObject, eventdata, handles)
% hObject    handle to PeB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles);
IMG=handles.image
PeB=rgb2gray(IMG);
axes(handles.axes2);
imshow(PeB)
