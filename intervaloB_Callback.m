function intervaloB_Callback(hObject, eventdata, handles)
% hObject    handle to intervaloB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervaloB as text
%        str2double(get(hObject,'String')) returns contents of intervaloB as a double
handles.interB = get(hObject,'String');
guidata(hObject, handles);
