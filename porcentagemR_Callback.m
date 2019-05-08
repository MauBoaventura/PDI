function porcentagemR_Callback(hObject, eventdata, handles)
% hObject    handle to porcentagemR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of porcentagemR as text
%        str2double(get(hObject,'String')) returns contents of porcentagemR as a double
handles.valorPorcentagemRuido= get(hObject,'String');
guidata(hObject, handles);
