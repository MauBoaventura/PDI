function abrir_Callback(hObject, eventdata, handles)
% hObject    handle to Abrir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(handles.axes1,'Visible','On');
%set(handles.textIMAGEM,'Visible','On');
[nomeArq,cancelar] = imgetfile;

if ~cancelar
    handles.arquivo = nomeArq;
    handles.image = imread(nomeArq);
    axes(handles.axes1);
    numDims = ndims(handles.image);
    if numDims== 3
        handles.dims=3;
    end
    
    if numDims== 2
        handles.dims=2;
    end
    imshow(handles.image);
end
handles.px2min = NaN;
guidata(hObject,handles);
end