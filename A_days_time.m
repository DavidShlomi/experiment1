clear , clc , close all 

%%
%for igsg0240.dat
long1=12; 
long2=13;
lat1=35;
lat2=32.5;
lat1_1=743;
lat1_2=1172;
lat2_1=749;
Name='igsg0240.dat';
hrjump=12;
latpol=33.8;

l=sigmapolation2(long1,long2,lat1,lat2,lat1_1,lat1_2,lat2_1,Name,hrjump,latpol);
figure1=figure;
plot(l)
set(gca,'XTick', 0:0.5:12 );
set(gca,'XTickLabel',0:1:24 );

title 'The distribution of free electrons in the ionosphere '
xlabel 'time   [h]'
ylabel ' the distrebution '

saveas(figure1,'igsg0240_1.jpg')

x=-4:0.75:4.7;
% x=[x , 4.7 4.7 4.7 4.7 4.7 4.7 4.7 4.7  ];
sigma=1.5;
f=(75./(sigma.*sqrt(2.*pi))).*exp(-0.5.*(x./sigma).^2)+7.596;

hold on 
plot(f)

saveas(figure1,'igsg0240_1.jpg')

figure1=figure;
[y]=meshgrid(l,l);
z=rot90(y);
z=mean(z);

plot(f-z)
set(gca,'XTick', 0:0.5:12 );
set(gca,'XTickLabel',0:1:24 );

set(gca,'YTick', -15:5.8:30 );
set(gca,'YTickLabel',5:5: 30);

title 'The distribution of free electrons in the ionosphere '
xlabel 'time   [h]'
ylabel ' the distrebution '

saveas(figure1,'igsg0240_2.jpg')

%%
%for jplg0240.dat
long1=12; 
long2=13;
lat1=35;
lat2=32.5;
lat1_1=392;
lat1_2=821;
lat2_1=398;
Name='jplg0240.dat';
hrjump=12;
latpol=33.8;

l=sigmapolation2(long1,long2,lat1,lat2,lat1_1,lat1_2,lat2_1,Name,hrjump,latpol);
figure1=figure;
plot(l)
set(gca,'XTick', 0:0.5:12 );
set(gca,'XTickLabel',0:1:24 );

title 'The distribution of free electrons in the ionosphere '
xlabel 'time   [h]'
ylabel ' the distrebution '


saveas(figure1,'jplg0240_1.jpg')

x=-4:0.75:4.7;
% x=[x , 4.7 4.7 4.7 4.7 4.7 4.7 4.7 4.7  ];
sigma=1.5;
f=(80./(sigma.*sqrt(2.*pi))).*exp(-0.5.*(x./sigma).^2)+7.596;

hold on 
plot(f)

saveas(figure1,'jplg0240_1.jpg')

figure1=figure;
[y]=meshgrid(l,l);
z=rot90(y);
z=mean(z);

plot(f-z)
set(gca,'XTick', 0:0.5:12 );
set(gca,'XTickLabel',0:1:24 );

set(gca,'YTick', -15:5.5:30 );
set(gca,'YTickLabel',5:5: 30);

title 'The distribution of free electrons in the ionosphere '
xlabel 'time   [h]'
ylabel ' the distrebution '


saveas(figure1,'jplg0240_2.jpg')
%%
%for upcg0240.dat
long1=12; 
long2=13;
lat1=35;
lat2=32.5;
lat1_1=297;
lat1_2=726;
lat2_1=303;
Name='upcg0240.dat';
hrjump=12;
latpol=33.8;

l=sigmapolation2(long1,long2,lat1,lat2,lat1_1,lat1_2,lat2_1,Name,hrjump,latpol);
figure1=figure;
plot(l)

set(gca,'XTick', 0:0.5:12 );
set(gca,'XTickLabel',0:1:24 );

title 'The distribution of free electrons in the ionosphere '
xlabel 'time   [h]'
ylabel ' the distrebution '



saveas(figure1,'upcg0240_1.jpg')

x=-4:0.75:4.7;
% x=[x , 4.7 4.7 4.7 4.7 4.7 4.7 4.7 4.7  ];
sigma=1.5;
f=(72./(sigma.*sqrt(2.*pi))).*exp(-0.5.*(x./sigma).^2)+7.596;

hold on 
plot(f)

saveas(figure1,'upcg0240_1.jpg')

figure1=figure;
[y]=meshgrid(l,l);
z=rot90(y);
z=mean(z);

plot(f-z)
set(gca,'XTick', 0:0.5:12 );
set(gca,'XTickLabel',0:1:24 );

set(gca,'YTick', -11:4.9:10 );
set(gca,'YTickLabel',5:5:25 );

title 'The distribution of free electrons in the ionosphere '
xlabel 'time   [h]'
ylabel ' the distrebution '



saveas(figure1,'upcg0240_2.jpg')

%%
%for uqrg0240.dat
long1=12; 
long2=13;
lat1=35;
lat2=32.5;
lat1_1=288;
lat1_2=717;
lat2_1=294;
Name='uqrg0240.dat';
hrjump=96;
latpol=33.8;

l=sigmapolation2(long1,long2,lat1,lat2,lat1_1,lat1_2,lat2_1,Name,hrjump,latpol);
figure1=figure;
plot(l)
set(gca,'XTick', 0:4:96 );
set(gca,'XTickLabel',0:1:24 );

title 'The distribution of free electrons in the ionosphere '
xlabel 'time   [h]'
ylabel ' the distrebution '


saveas(figure1,'uqrg0240_1.jpg')

x=-4:0.1:4.7;
x=[x , 4.7 4.7 4.7 4.7 4.7 4.7 4.7 4.7  ];
sigma=1.5;
f=(65./(sigma.*sqrt(2.*pi))).*exp(-0.5.*(x./sigma).^2)+7.596;

hold on 
plot(f)


saveas(figure1,'uqrg0240_1.jpg')

figure1=figure;
[y]=meshgrid(l,l);
z=rot90(y);
z=mean(z);

plot(f-z)
set(gca,'XTick', 0:4:96 );
set(gca,'XTickLabel',0:1:24 );

set(gca,'YTick', -11:4.9:10 );
set(gca,'YTickLabel',5:5:25 );

title 'The distribution of free electrons in the ionosphere '
xlabel 'time   [h]'
ylabel ' the distrebution '


saveas(figure1,'uqrg0240_2.jpg')