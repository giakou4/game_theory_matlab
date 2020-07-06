%% Exercise 1.6.2
clear all; close all; clc;
T = 100;
g = 1;
QP(1).q = [0 4; 5 0];
QP(1).P(:,:,1) = [0 0;0 0];
QP(1).P(:,:,2) = [1 0;0 0];
QP(1).P(:,:,3) = [0 0;0 1];
QP(1).P(:,:,4) = [0 1; 1 0];

QP(2).q = [0 3; 2 -1];
QP(2).P(:,:,1) = [0 0;0 0];
QP(2).P(:,:,2) = [0 0;0 0];
QP(2).P(:,:,3) = [0 0;0 0];
QP(2).P(:,:,4) = [1 1;1 1];

QP(3).q = [0 1;4 3];
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
V=StochGam(QP,T,g);
clc;
toc
