function editBaixo_Callback(hObject, eventdata, handles)
% hObject    handle to editBaixo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editBaixo as text
%        str2double(get(hObject,'String')) returns contents of editBaixo as a double
handles.PonBaixo = get(hObject,'String');
guidata(hObject, handles);
