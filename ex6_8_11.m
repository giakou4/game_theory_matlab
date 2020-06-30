%% Exercise 6.8.11
clear all; close all; clc
T1 = 11;
T2 = 100;
g1 = 0.9;
g2 = 1;

QP(1).q = [0 0;0 0];
QP(1).P(:,:,1) = [1/2 1/2;1/2 0];
QP(1).P(:,:,2) = [0 0;0 0];
QP(1).P(:,:,3) = [0 1/2;0 0];
QP(1).P(:,:,4) = [1/2 0;1/2 1];

QP(2).q = [3 4;4 3];
QP(2).P(:,:,1) = [0 0;0 0];
QP(2).P(:,:,2) = [0 0;0 0];
QP(2).P(:,:,3) = [0 0;0 0];
QP(2).P(:,:,4) = [1 1;1 1];

QP(3).q = [3 -2;4 6];
QP(3).P(:,:,1) = [0 0;0 0];
QP(3).P(:,:,2) = [0 0;0 0];
QP(3).P(:,:,3) = [0 0;0 0];
QP(3).P(:,:,4) = [1 1;1 1];

QP(4).q = [-1 6;4 3];
QP(4).P(:,:,1) = [1 0;0 0];
QP(4).P(:,:,2) = [0 0;0 0];
QP(4).P(:,:,3) = [0 0;0 0];
QP(4).P(:,:,4) = [0 1;1 1];

tic
V=StochGam(QP,T1,g1);
V=StochGam(QP,T1,g2);
V=StochGam(QP,T2,g1);
V=StochGam(QP,T2,g2);
clc;
toc