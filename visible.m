function visible(handles)
%MENU
set(handles.axes1,'Visible','Off');
set(handles.axes2,'Visible','Off');
%GAMA
set(handles.ValorGama,'Visible','Off');
set(handles.GamaT,'Visible','Off');
set(handles.GamaTe,'Visible','Off');
set(handles.ValorC,'Visible','Off');
set(handles.CTee,'Visible','Off');
set(handles.TransformadaGama,'Visible','Off');
set(handles.CTex,'Visible','Off');
%LOGARITMICA
set(handles.LogaritmicaT,'Visible','Off');
set(handles.variavelc,'Visible','Off');
set(handles.TransformaLog,'Visible','Off');
%ESPECIFICACAO DO HISTOGRAMA
set(handles.x0,'Visible','Off');
set(handles.x1,'Visible','Off');
set(handles.y0,'Visible','Off');
set(handles.y1,'Visible','Off');
set(handles.x0T,'Visible','Off');
set(handles.x1T,'Visible','Off');
set(handles.y0T,'Visible','Off');
set(handles.y1T,'Visible','Off');
set(handles.EspHis,'Visible','Off');
set(handles.EspTexto,'Visible','Off');
%MEDIA PONDERADA
set(handles.textMediaP,'Visible','Off');
set(handles.editCima,'Visible','Off');
set(handles.editD,'Visible','Off');
set(handles.editE,'Visible','Off');
set(handles.editBaixo,'Visible','Off');
set(handles.MediaPonder,'Visible','Off');
%RUIDOS
%Sal e Pimenta
set(handles.CalcularSalEPimenta,'Visible','Off');
set(handles.porcentagemR,'Visible','Off');
set(handles.textPorc,'Visible','Off');
%Gaussiano
set(handles.CalcularRGauss,'Visible','Off');
set(handles.textGauss,'Visible','Off');
%Uniforme
set(handles.textIntervalo,'Visible','Off');
set(handles.CalcularUniforme,'Visible','Off');
set(handles.intervaloA,'Visible','Off');
set(handles.intervaloB,'Visible','Off');
%Erlang
set(handles.textErlang,'Visible','Off');
set(handles.CalcularErlang,'Visible','Off');
%Contra Harmonica
set(handles.textCalcularMContraHarmonica,'Visible','Off');
set(handles.CalcularMContraHarmonica,'Visible','Off');
%Restauração
%MEDIA A / H / G
set(handles.textTamJanela,'Visible','Off');
set(handles.ResMedia,'Visible','Off');
set(handles.ResMediaG,'Visible','Off');
set(handles.ResMediaH,'Visible','Off');

% MEDIA CH
set(handles.ResMCHOrdem,'Visible','Off');
set(handles.ResMediaCH,'Visible','Off');

% ADAPTATIVO
set(handles.ResAdapLocal,'Visible','Off');
set(handles.ResAdapMed,'Visible','Off');

end
