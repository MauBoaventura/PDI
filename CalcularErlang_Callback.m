function CalcularErlang_Callback(hObject, eventdata, handles)
% hObject    handle to CalcularErlang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f= handles.image;
dim= handles.dims;
a=handles.interA
b=handles.interB

a = str2double(a)/100;
b = str2double(b)/100;
r = imnoise2('erlang',M,N,a,b);

if dim==2
    %     figure('units','normalized','outerposition',[0 0 1 1]);
    %     subplot(1,2,1);imshow(r);title('Original');
    %     subplot(1,2,2);imhist(r);title('Histograma');
    NewImage=im2double(f)+r;
    axes(handles.axes2);
    imshow(NewImage);
end
