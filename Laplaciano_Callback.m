function Laplaciano_Callback(hObject, eventdata, handles)
% hObject    handle to Laplaciano (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles);
F= handles.image;
L = [ 0 -1 0; -1 4 -1; 0 -1 0 ];
dim= handles.dims;
if dim==3
    r=F(:,:,1);
    g=F(:,:,2);
    b=F(:,:,3);
    
    

    CLr = uint8(conv2(single(r),single(L)));
    CLg = uint8(conv2(single(g),single(L)));
    CLb = uint8(conv2(single(b),single(L)));
    
    CL(:, :, 1)=CLr;
    CL(:, :, 1)=CLg;
    CL(:, :, 1)=CLb;
    
    axes(handles.axes2);
    imshow(CL);
end
if dim==2
     I = uint8(conv2(single(F),single(L)));
    axes(handles.axes2);
    imshow(I);
end

end

