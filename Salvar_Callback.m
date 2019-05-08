function Salvar_Callback(hObject, eventdata, handles)
% hObject    handle to Salvar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imsave(handles.axes2);
end