function EqualizarHistograma_Callback(hObject, eventdata, handles)
% hObject    handle to EqualizarHistograma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles);
IMG= handles.image;
dim= handles.dims;
if dim==3
    [X, NEWMAP] = rgb2ind(IMG, 265);
    equaliB=histeq(NEWMAP);
    
    IMG1=ind2rgb(X,equaliB);
    axes(handles.axes2);
    imshow(IMG1);
    
    figure('units','normalized','outerposition',[0 0 1 1]);
    subplot(2,2,1);imshow(IMG);title('Original');
    subplot(2,2,2);imhist(NEWMAP);title('Histograma');
    subplot(2,2,3);imshow(IMG1);title('Equalizada');
    subplot(2,2,4);imhist(equaliB);title('Histograma Equalizado');
    
    handles.IMAGEMEQUALIZADA = IMG1;
    guidata(hObject, handles);
end

if dim==2
    equaliB=histeq(IMG);
    
    axes(handles.axes2);
    imshow(equaliB);
    
    figure('units','normalized','outerposition',[0 0 1 1]);
    subplot(2,2,1);imshow(IMG);title('Original');
    subplot(2,2,2);imhist(IMG);title('Histograma');
    subplot(2,2,3);imshow(equaliB);title('Equalizada');
    subplot(2,2,4);imhist(equaliB);title('Histograma Equalizado');
    handles.IMAGEMEQUALIZADA = equaliB;
    guidata(hObject, handles);
end
end
