function ValorGama_Callback(hObject, eventdata, handles)
% hObject    handle to ValorGama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ValorGama as text
%        str2double(get(hObject,'String')) returns contents of ValorGama as a double
handles.gama = get(hObject,'String');
guidata(hObject, handles);
