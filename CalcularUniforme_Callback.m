function CalcularUniforme_Callback(hObject, eventdata, handles)
% hObject    handle to CalcularUniforme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f= handles.image;
dim= handles.dims;
a=handles.interA
b=handles.interB
a = str2double(a)/100;
b = str2double(b)/100;

if dim==2
    [M N] = size(f);
    r = imnoise2('uniform',M,N,a,b);
    NewImage=im2double(f)+r;
    axes(handles.axes2);
    imshow(NewImage);
end
