%% Exercise 6.9.2
clear all; close all; clc
T = 100;
g1 = 0.9;
g2 = 1;

QP(1).q = [0 4;5 0];
QP(1).P(:,:,1) = [0 0;0 0];
QP(1).P(:,:,2) = [1 0;0 0];
QP(1).P(:,:,3) = [0 0;0 1];
QP(1).P(:,:,4) = [0 1;1 0];

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

QP(4).q = [0];
QP(4).P(:,:,1) = [0];
QP(4).P(:,:,2) = [0];
QP(4).P(:,:,3) = [0];
QP(4).P(:,:,4) = [1];

tic
V=StochGam(QP,T,g1);
V=StochGam(QP,T,g2);
clc;
toc