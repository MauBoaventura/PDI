function Media_Callback(hObject, eventdata, handles)
% hObject    handle to Media (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles);
F= handles.image;

dim= handles.dims;
if dim==3
    
    r=F(:,:,1);
    g=F(:,:,2);
    b=F(:,:,3);
    
    mask = fspecial('average',3);%3 é padrão da imagem
    
    R = imfilter(r,mask,'replicate');
    G= imfilter(g,mask,'replicate');
    B= imfilter(b,mask,'replicate');
    
    I(:, :, 1)=R;
    I(:, :, 2)=G;
    I(:, :, 3)=B;
    axes(handles.axes2);
    imshow(I);
end
if dim==2
    mask = fspecial('average',3);
    I = imfilter(F,mask,'replicate');
    axes(handles.axes2);
    imshow(I);
end