function variavelc_Callback(hObject, eventdata, handles)
% hObject    handle to variavelc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of variavelc as text
%        str2double(get(hObject,'String')) returns contents of variavelc as a double
handles.CTextoo = get(hObject,'String');
guidata(hObject, handles);
