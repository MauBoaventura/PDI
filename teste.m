diagram = imread('C:\Users\Maurício\Downloads\10 Periodo\Processamento Digital de Imagem\2019.1 Mauricio\Imagens Trabalho PDI\Gato Colorido.jpg')
diagram = rgb2gray(diagram);%------------------------------The picture is converted to grayscale
[M N] = size(diagram);
%     B = roipoly(diagram)
%     [B,c,r] = roipoly(diagram)
%Statistical image histogram
%     h = imhist(diagram)
%     h1 = h(1:10:256)
%     horz = 1:10:256
%     bar(h)
%ROI histogram statistics
    c = [122+N 172+N 200+N 170+N 121+N 94+N];
    r = [21+M 21+M 75+M 121+M 121+M 75+M];
%     c = [1 3 3 1 ];
%     r = [1 1 3 3 ];
%     B = roipoly(diagram,c,r);
    figure,imshow(diagram) %Display image
%     figure, imshow(B)
%ROI histogram statistics
%     [p,npix] = histroi(diagram,c,r) %A return value of P is the histogram data, npix is the number of elements in the ROI
%     figure,bar(p,1)
%By the mean and variance of the area covered by B, statistical moment calculation of ROI image histogram. 
 %   [v,unv] = statmoments(p,2) %A return value of UNV (1) is the mean of ROI, UNV (2) is the variance of ROI
%Spatial filtering and median filtering
%     f1 = medfilt2(diagram,[17,17],'symmetric')
%     figure,imshow(f1)
%Spatial filtering and adaptive spatial filtering
  %  f2 = adpmedian(diagram,57)
   % figure,imshow(f2)
%Pepper noise filtering
%     fp = spfilt(diagram,'chmean',3,3,9)
%     figure,imshow(fp)
%Filter the salt and pepper noise
    fs = imrest(diagram,'hmean',5,5,-15)
    figure,imshow(fs)