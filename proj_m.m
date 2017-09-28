clear all;
%% v-direction
dn = 10;

% %curve1:B-spline interpolation
D1=[0 0; 6.25 0; 12.5 0];
k1=3;
n1=3;
[P1, knots1] = BsplineInterpolate(D1,k1,n1);
Q1=bsplineCurve(P1, k1, knots1, dn);
% plot(Q1(:,1),Q1(:,2));
% hold on
% xlim([0 90]);
% ylim([0 90]);

% %curve2:d=3 bezier curve
P2=[12.5 0; 13.5 0; 13.5 2; 12.5 2]';
r2=bezierf(P2,dn);
% plot(r2(1,:),r2(2,:));

% %curve3:B-spline interpolation
D3=[12.5 2; 15.743 3.431; 16.658 4.981; 16.891 6.391; 16.582 8.007; 15 10];
k3=4;
n3=6;
[P3, knots3] = BsplineInterpolate(D3,k3,n3);
Q3=bsplineCurve(P3, k3, knots3, dn);
% plot(Q3(:,1),Q3(:,2));

% %curve4:B-spline interpolation
D4=[15 10; 13.866 10.922; 13.075 11.771; 12.2 13.092; 11.707 14];
k4=4;
n4=5;
[P4, knots4] = BsplineInterpolate(D4,k4,n4);
Q4=bsplineCurve(P4, k4, knots4, dn);
% plot(Q4(:,1),Q4(:,2));

% %curve5:B-spline interpolation
D5=[11.707 14; 11.707 14.5; 11.707 15];
k5=3;
n5=3;
[P5, knots5] = BsplineInterpolate(D5,k5,n5);
Q5=bsplineCurve(P5, k5, knots5, dn);
% plot(Q5(:,1),Q5(:,2));

% %curve6:B-spline interpolation
D6=[11.707 15; 9.391 19.883; 7.653 24.686; 6.368 29.626; 5.56 34.554; 5.183 40.981; 5.701 48.508; 7 55];
k6=4;
n6=8;
[P6, knots6] = BsplineInterpolate(D6,k6,n6);
Q6=bsplineCurve(P6, k6, knots6, dn);
% plot(Q6(:,1),Q6(:,2));

% %curve7:d=2 bezier curve
P7=[7 55; 11 57; 7 59]';
r7=bezierf2(P7,dn);
% plot(r7(1,:),r7(2,:));

% %curve8:d=2 bezier curve
P8=[7 59; 9 60; 7 61]';
r8=bezierf2(P8,dn);
% plot(r8(1,:),r8(2,:));

% %curve9:B-spline interpolation
D9=[7 61; 7 62.5; 7 64];
k9=3;
n9=3;
[P9, knots9] = BsplineInterpolate(D9,k9,n9);
Q9=bsplineCurve(P9, k9, knots9, dn);
% plot(Q9(:,1),Q9(:,2));

% %curve10:d=2 bezier curve
P10=[7 64; 8 64.5; 7 65]';
r10=bezierf2(P10,dn);
% plot(r10(1,:),r10(2,:));

% %curve11:B-spline interpolation
D11=[7 65; 9.282 69.894; 11.564 74.787];
k11=3;
n11=3;
[P11, knots11] = BsplineInterpolate(D11,k11,n11);
Q11=bsplineCurve(P11, k11, knots11, dn);
% plot(Q11(:,1),Q11(:,2));

% %curve12:B-spline interpolation
D12=[11.564 74.787; 11.611 74.998; 11.579 75.173; 11.314 75.455];
k12=4;
n12=4;
[P12, knots12] = BsplineInterpolate(D12,k12,n12);
Q12=bsplineCurve(P12, k12, knots12, dn);
% plot(Q12(:,1),Q12(:,2));

% %curve13:B-spline interpolation
D13=[11.314 75.455; 10.075 75.974; 6.977 76.994; 2.453 77.84];
k13=4;
n13=4;
[P13, knots13] = BsplineInterpolate(D13,k13,n13);
Q13=bsplineCurve(P13, k13, knots13, dn);
% plot(Q13(:,1),Q13(:,2));

% %curve14:B-spline interpolation
D14=[2.453 77.84; 3.784 79.704; 4 81; 3.784 82.296; 2.845 83.812; 2.646 84];
k14=4;
n14=6;
[P14, knots14] = BsplineInterpolate(D14,k14,n14);
Q14=bsplineCurve(P14, k14, knots14, dn);
% plot(Q14(:,1),Q14(:,2));

% %curve15:B-spline interpolation
D15=[2.646 84; 1.3 84; 0 84];
k15=3;
n15=3;
[P15, knots15] = BsplineInterpolate(D15,k15,n15);
Q15=bsplineCurve(P15, k15, knots15, dn);
% plot(Q15(:,1),Q15(:,2));

%% u-direction
for a=1:361
    if a<=90
        xv(a)=cos(a/180*pi);
        yv(a)=sin(a/180*pi);
    elseif a>90 && a<=180
        xv(a)=cos(a/180*pi);
        yv(a)=sin(a/180*pi);
    elseif a>180 && a<=270
        xv(a)=cos(a/180*pi);
        yv(a)=sin(a/180*pi);
    else
        xv(a)=cos(a/180*pi);
        yv(a)=sin(a/180*pi);
    end
    zv=ones(361,1)';
end

t1=size(Q1,1);
for i=1:361
    for j=1:t1
        x1(i,j)=Q1(j,1)*xv(i);
        y1(i,j)=Q1(j,1)*yv(i);
        z1(i,j)=Q1(j,2)*zv(i);
    end
end

t3=size(Q3,1);
for i=1:361
    for j=1:t3
        x3(i,j)=Q3(j,1)*xv(i);
        y3(i,j)=Q3(j,1)*yv(i);
        z3(i,j)=Q3(j,2)*zv(i);
    end
end

t4=size(Q4,1);
for i=1:361
    for j=1:t4
        x4(i,j)=Q4(j,1)*xv(i);
        y4(i,j)=Q4(j,1)*yv(i);
        z4(i,j)=Q4(j,2)*zv(i);
    end
end

t5=size(Q5,1);
for i=1:361
    for j=1:t5
        x5(i,j)=Q5(j,1)*xv(i);
        y5(i,j)=Q5(j,1)*yv(i);
        z5(i,j)=Q5(j,2)*zv(i);
    end
end

t6=size(Q6,1);
for i=1:361
    for j=1:t6
        x6(i,j)=Q6(j,1)*xv(i);
        y6(i,j)=Q6(j,1)*yv(i);
        z6(i,j)=Q6(j,2)*zv(i);
    end
end

t9=size(Q9,1);
for i=1:361
    for j=1:t9
        x9(i,j)=Q9(j,1)*xv(i);
        y9(i,j)=Q9(j,1)*yv(i);
        z9(i,j)=Q9(j,2)*zv(i);
    end
end

t11=size(Q11,1);
for i=1:361
    for j=1:t11
        x11(i,j)=Q11(j,1)*xv(i);
        y11(i,j)=Q11(j,1)*yv(i);
        z11(i,j)=Q11(j,2)*zv(i);
    end
end

t12=size(Q12,1);
for i=1:361
    for j=1:t12
        x12(i,j)=Q12(j,1)*xv(i);
        y12(i,j)=Q12(j,1)*yv(i);
        z12(i,j)=Q12(j,2)*zv(i);
    end
end

t13=size(Q13,1);
for i=1:361
    for j=1:t13
        x13(i,j)=Q13(j,1)*xv(i);
        y13(i,j)=Q13(j,1)*yv(i);
        z13(i,j)=Q13(j,2)*zv(i);
    end
end

t14=size(Q14,1);
for i=1:361
    for j=1:t14
        x14(i,j)=Q14(j,1)*xv(i);
        y14(i,j)=Q14(j,1)*yv(i);
        z14(i,j)=Q14(j,2)*zv(i);
    end
end

t15=size(Q15,1);
for i=1:361
    for j=1:t15
        x15(i,j)=Q15(j,1)*xv(i);
        y15(i,j)=Q15(j,1)*yv(i);
        z15(i,j)=Q15(j,2)*zv(i);
    end
end

t2=size(r2,2);
for i=1:361
    for j=1:t2
        x2(i,j)=r2(1,j)*xv(i);
        y2(i,j)=r2(1,j)*yv(i);
        z2(i,j)=r2(2,j)*zv(i);
    end
end

t7=size(r7,2);
for i=1:361
    for j=1:t7
        x7(i,j)=r7(1,j)*xv(i);
        y7(i,j)=r7(1,j)*yv(i);
        z7(i,j)=r7(2,j)*zv(i);
    end
end

t8=size(r8,2);
for i=1:361
    for j=1:t8
        x8(i,j)=r8(1,j)*xv(i);
        y8(i,j)=r8(1,j)*yv(i);
        z8(i,j)=r8(2,j)*zv(i);
    end
end

t10=size(r10,2);
for i=1:361
    for j=1:t10
        x10(i,j)=r10(1,j)*xv(i);
        y10(i,j)=r10(1,j)*yv(i);
        z10(i,j)=r10(2,j)*zv(i);
    end
end

% surf(x1,y1,z1);
% hold on
% surf(x3,y3,z3);
% surf(x4,y4,z4);
% surf(x5,y5,z5);
% surf(x6,y6,z6);
% surf(x9,y9,z9);
% surf(x11,y11,z11);
% surf(x12,y12,z12);
% surf(x13,y13,z13);
% surf(x14,y14,z14);
% surf(x15,y15,z15);
% 
% surf(x2,y2,z2);
% surf(x7,y7,z7);
% surf(x8,y8,z8);
% surf(x10,y10,z10);
%% cross section

%cross bottom
DC1=[2.646 84; 2.646 86; 2.646 88];
kc1=3;
nc1=3;
[PC1, knotsc1] = BsplineInterpolate(DC1,kc1,nc1);
QC1=bsplineCurve(DC1, kc1, knotsc1, dn);
% plot(QC1(:,1),QC1(:,2));

xvv=[1 1 -1 -1 1 1];
yvv=[0 1 1 -1 -1 0];
zvv=[1 1 1 1 1 1];
tc1=size(QC1,1);
for i=1:6
    for j=1:tc1
        xc1(i,j)=QC1(j,1)*xvv(i);
        yc1(i,j)=QC1(j,1)*yvv(i);
        zc1(i,j)=QC1(j,2)*zvv(i);
    end
end
% surf(xc1,yc1,zc1);
% hold on

%cross middle
Qx=[6.646 2.646 -2.646 -6.646 -6.646 -2.646 2.646 6.646 6.646];
Qy=[2.646 2.646 2.646 2.646 -2.646 -2.646 -2.646 -2.646 2.646];
for i=1:11
    for j=1:9
        xc2(i,j)=Qx(j);
        yc2(i,j)=Qy(j);
        zc2(i,j)=88+(i-1)*0.4;
    end
end
% surf(xc2,yc2,zc2);

%cross top
DC3=[2.646 92; 2.646 94; 2.646 96];
kc3=3;
nc3=3;
[PC3, knotsc3] = BsplineInterpolate(DC3,kc3,nc3);
QC3=bsplineCurve(DC3, kc3, knotsc3, dn);
% plot(QC3(:,1),QC3(:,2));

xvv=[1 1 -1 -1 1 1];
yvv=[0 1 1 -1 -1 0];
zvv=[1 1 1 1 1 1];
tc3=size(QC3,1);
for i=1:6
    for j=1:tc3
        xc3(i,j)=QC3(j,1)*xvv(i);
        yc3(i,j)=QC3(j,1)*yvv(i);
        zc3(i,j)=QC3(j,2)*zvv(i);
    end
end
% surf(xc3,yc3,zc3);

%cover the top
xtv=linspace(-2.646,2.646,20);
ytv=linspace(-2.646,2.646,20);
ztv=ones(1,20)*96;
for i=1:20
    for j=1:20
        xt(i,j)=xtv(i);
        yt(i,j)=ytv(j);
        zt(i,j)=ztv(i);
    end
end
% surf(xt,yt,zt);

%cover the bottom
xbv=linspace(-2.646,2.646,20);
ybv=linspace(-2.646,2.646,20);
zbv=ones(1,20)*84;
for i=1:20
    for j=1:20
        xb(i,j)=xbv(i);
        yb(i,j)=ybv(j);
        zb(i,j)=zbv(i);
    end
end
% surf(xb,yb,zb);

%cover the middle
xmv1=linspace(2.646,6.646,20);
ymv1=linspace(-2.646,2.646,20);
zmv1=ones(1,20)*92;
for i=1:20
    for j=1:20
        xm1(i,j)=xmv1(i);
        ym1(i,j)=ymv1(j);
        zm1(i,j)=zmv1(i);
    end
end
% surf(xm1,ym1,zm1);

xmv3=linspace(-6.646,-2.646,20);
ymv3=linspace(-2.646,2.646,20);
zmv3=ones(1,20)*92;
for i=1:20
    for j=1:20
        xm3(i,j)=xmv3(i);
        ym3(i,j)=ymv3(j);
        zm3(i,j)=zmv3(i);
    end
end
% surf(xm3,ym3,zm3);

xmv5=linspace(2.646,6.646,20);
ymv5=linspace(-2.646,2.646,20);
zmv5=ones(1,20)*88;
for i=1:20
    for j=1:20
        xm5(i,j)=xmv5(i);
        ym5(i,j)=ymv5(j);
        zm5(i,j)=zmv5(i);
    end
end
% surf(xm5,ym5,zm5);

xmv7=linspace(-6.646,-2.646,20);
ymv7=linspace(-2.646,2.646,20);
zmv7=ones(1,20)*88;
for i=1:20
    for j=1:20
        xm7(i,j)=xmv7(i);
        ym7(i,j)=ymv7(j);
        zm7(i,j)=zmv7(i);
    end
end
% surf(xm7,ym7,zm7);
% % shading interp
% xlim([-50 50]);
% ylim([-50 50]);
% zlim([0 100]);

% x=[x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15];
% y=[y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 y11 y12 y13 y14 y15];
% z=[z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 z13 z14 z15];
% surf2stl('trial_com.stl',x,y,z);
% x_m=[xt xb xm1 xm3 xm5 xm7];
% y_m=[yt yb ym1 ym3 ym5 ym7];
% z_m=[zt zb zm1 zm3 zm5 zm7];
% surf2stl('trial_xm.stl',x_m,y_m,z_m);
% xc_1=[xc1 xc3];
% yc_1=[yc1 yc3];
% zc_1=[zc1 zc3];
% surf2stl('trial_xc1.stl',xc_1,yc_1,zc_1);
% surf2stl('trial_xc2.stl',xc2,yc2,zc2);

