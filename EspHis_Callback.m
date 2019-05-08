function EspHis_Callback(hObject, eventdata, handles)
% hObject    handle to EspHis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
IMG= handles.image;

x0 = handles.xis0;
x1 = handles.xis1;
y0 = handles.yp0;
y1 = handles.yp1;

x0 = str2double(x0);
x1 = str2double(x1);
y0 = str2double(y0);
y1 = str2double(y1);

RGB2 = imadjust(IMG,[x0 x1],[y0 y1]);
figure('units','normalized','outerposition',[0 0 1 1]);
imshow(RGB2);
handles.IMAGEMESPECIFICADA = RGB2;

disp(handles.IMAGEMESPECIFICADA);
guidata(hObject, handles);
