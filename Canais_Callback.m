function Canais_Callback(hObject, eventdata, handles)
% hObject    handle to Canais (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles);
IMG= handles.image;

R = IMG(:, :, 1); % Matriz de tons vermelho
G = IMG(:, :, 2); % Matriz de tons verdes
B = IMG(:, :, 3); % Matriz de tons azuis

IMGR(:, :, 1)=R;
IMGG(:, :, 1)=G;
IMGB(:, :, 1)=B;

figure;

subplot(2,3,2);imshow(IMG);title('Original');
subplot(2,3,4);imshow(IMGR);title('Vermelha');
subplot(2,3,5);imshow(IMGG);title('Verde');
subplot(2,3,6);imshow(IMGB);title('Azul');
