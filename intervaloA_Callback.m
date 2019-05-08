function intervaloA_Callback(hObject, eventdata, handles)
% hObject    handle to intervaloA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervaloA as text
%        str2double(get(hObject,'String')) returns contents of intervaloA as a double
handles.interA = get(hObject,'String');
guidata(hObject, handles);
