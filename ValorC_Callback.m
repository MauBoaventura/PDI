function ValorC_Callback(hObject, eventdata, handles)
% hObject    handle to ValorC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ValorC as text
%        str2double(get(hObject,'String')) returns contents of ValorC as a double
handles.ValorDeC = get(hObject,'String');
guidata(hObject, handles);
