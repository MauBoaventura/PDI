function Mediana_Callback(hObject, eventdata, handles)
% hObject    handle to Mediana (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles);
F= handles.image;
dim= handles.dims;
if dim==3
    r=F(:,:,1);
    g=F(:,:,2);
    b=F(:,:,3);
    
    R= medfilt2(r);
    G= medfilt2(g);
    B= medfilt2(b);
    
    I(:, :, 1)=R;
    I(:, :, 2)=G;
    I(:, :, 3)=B;
    
    axes(handles.axes2);
    imshow(I);
end

if dim==2
    I= medfilt2(F)
    axes(handles.axes2);
    imshow(I);
end
