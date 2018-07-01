clc
close all
clear all

% accuratezze trovate con la 5-fold cross validation
acc_albero = [0.692 0.692 0.750 0.727 0.727];
acc_svm = [0.692 0.692 0.833 0.727 0.727];
acc_constant = [0.692 0.692 0.750 0.727 0.727];
acc_log = [0.692 0.692 0.750 0.727 0.727];
acc_naive = [0.769 0.692 0.833 0.727 0.727];
acc_knn = [0.692 0.462 0.750 0.727 0.727];
acc_cn2 = [0.692 0.769 0.750 0.818 0.727];

% accuratezze medie
mean_acc_albero = mean(acc_albero);
mean_acc_svm = mean(acc_svm);
mean_acc_constant = mean(acc_constant);
mean_acc_log = mean(acc_log);
mean_acc_naive = mean(acc_naive);
mean_acc_knn = mean(acc_knn);
mean_acc_cn2 = mean(acc_cn2);

% intervalli di confidenza
CI_Albero = InterConf(acc_albero);
CI_svm = InterConf(acc_svm);
CI_constant = InterConf(acc_constant);
CI_log = InterConf(acc_log);
CI_naive = InterConf(acc_naive);
CI_knn = InterConf(acc_knn);
CI_cn2 = InterConf(acc_cn2);