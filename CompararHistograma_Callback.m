function CompararHistograma_Callback(hObject, eventdata, handles)
% hObject    handle to CompararHistograma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%visible(handles);
IMG= handles.image;
IMGEQL= handles.IMAGEMEQUALIZADA;
IMGESP= handles.IMAGEMESPECIFICADA;

[X, NEWMAP] = rgb2ind(IMG, 265);
[X1, NEWMAP1] = rgb2ind(IMGEQL, 265);
[X2, NEWMAP2] = rgb2ind(IMGESP, 265);

figure('units','normalized','outerposition',[0 0 1 1]);

subplot(3,2,1);imshow(IMG);title('Original');
subplot(3,2,2);imhist(NEWMAP);
subplot(3,2,3);imshow(IMGEQL);title('Equalizada');
subplot(3,2,4);imhist(NEWMAP1);
subplot(3,2,5);imshow(IMGESP);title('Especificada');
subplot(3,2,6);imhist(NEWMAP2);
