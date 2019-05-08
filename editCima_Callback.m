function editCima_Callback(hObject, eventdata, handles)
% hObject    handle to editCima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCima as text
%        str2double(get(hObject,'String')) returns contents of editCima as a double
handles.PonCima = get(hObject,'String');
guidata(hObject, handles);

