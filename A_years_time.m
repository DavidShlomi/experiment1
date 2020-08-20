clear all, clc , close all
figure1=figure;
load VTEC_hrmn_01_01_23_11_2015.mat;
y=flip(rot90(VTEC_hrmn_dynamic,2),2);
imagesc(y);
colorbar 

set(gca,'XTick', 0:4:96 );
set(gca,'XTickLabel',0:1:24 );

set(gca,'YTick', 0:30:365 );
set(gca,'YTickLabel',[1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12]);

title 'The distribution of free electrons in the ionosphere over a year'
xlabel 'time   [h]'
ylabel ' the days of the year '

saveas(figure1,'threeD.jpg')


%%
figure1=figure;
x=mean(y');
plot((x),'-')
hold on
d=1:1:327;
z=24+9.*sin((2.*pi.*d)./327+400);
plot((z))

set(gca,'XTick', 0:30:365 );
set(gca,'XTickLabel',[1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12]);
title 'The distribution of free electrons in the ionosphere over a year'
xlabel ' the days of the year '
ylabel ' the distrebution '
saveas(figure1,'sin_wave.jpg')



%%
figure1=figure;
l=mean(y);
plot(l)

set(gca,'XTick', 0:4:96 );
set(gca,'XTickLabel',0:1:24 );

title 'The mean distribution of free electrons in the ionosphere in a day '
xlabel 'time   [h]'
ylabel ' the distrebution '

saveas(figure1,'mean_day.jpg')
