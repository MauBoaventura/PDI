function ResMCHOrdem_Callback(hObject, eventdata, handles)
% hObject    handle to ResMCHOrdem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ResMCHOrdem as text
%        str2double(get(hObject,'String')) returns contents of ResMCHOrdem as a double
handles.ordem = get(hObject,'String');
guidata(hObject, handles);
