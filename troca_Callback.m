function troca_Callback(hObject, eventdata, handles)
% hObject    handle to troca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

temp=handles.axes1.Children.CData
handles.axes1.Children.CData=handles.axes2.Children.CData
handles.image = handles.axes2.Children.CData
handles.axes2.Children.CData= temp

axes(handles.axes1);
imshow(handles.image);

axes(handles.axes2);
imshow(handles.axes2.Children.CData);

numDims = ndims(handles.image);
    if numDims== 3
        handles.dims=3;
    end
    
    if numDims== 2
        handles.dims=2;
    end

guidata(hObject, handles);
