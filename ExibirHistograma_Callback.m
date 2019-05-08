function ExibirHistograma_Callback(hObject, eventdata, handles)
% hObject    handle to ExibirHistograma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles);
IMG= handles.image;

dim=handles.dims;
if dim==3
    [X, NEWMAP] = rgb2ind(IMG, 265);
    
    figure('units','normalized','outerposition',[0 0 1 1]);
    subplot(1,2,1);imshow(IMG);title('Original');
    subplot(1,2,2);imhist(NEWMAP);title('Histograma');
end

if dim==2
    figure('units','normalized','outerposition',[0 0 1 1]);
    subplot(1,2,1);imshow(IMG);title('Original');
    subplot(1,2,2);imhist(IMG);title('Histograma');

end

end
