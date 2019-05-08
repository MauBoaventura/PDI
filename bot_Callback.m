function bot_Callback(hObject, eventdata, handles)
% hObject    handle to bot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
IMG= handles.image;
R = IMG(:, :, 1); % Matriz de tons vermelhos
G = IMG(:, :, 2); % Matriz de tons verdes
B = IMG(:, :, 3); % Matriz de tons azuis

IMG1(:, :, 1)=R;
IMG1(:, :, 2)=G;
IMG1(:, :, 3)=B;

figure;
subplot(4,2,1);imshow(R);title('R');
subplot(4,2,2);imhist(R);
subplot(4,2,3);imshow(G);title('G');
subplot(4,2,4);imhist(G);
subplot(4,2,5);imshow(B);title('B');
subplot(4,2,6);imhist(B);
subplot(4,2,7);imshow(IMG1);title('Soma');
subplot(4,2,8);imshow(IMG);title('Original');
