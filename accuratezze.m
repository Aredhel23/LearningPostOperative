clc
close all
clear all

% accuratezze trovate con la 5-fold cross validation
acc_albero = [0.692 0.692 0.750 0.727 0.727];
acc_constant = [0.692 0.692 0.750 0.727 0.727];
acc_log = [0.692 0.692 0.750 0.727 0.727];
acc_naive = [0.769 0.692 0.833 0.727 0.727];
acc_knn = [0.692 0.462 0.750 0.727 0.727];
acc_cn2 = [0.692 0.769 0.750 0.818 0.727];

% accuratezze medie
mean_acc_albero = mean(acc_albero);
mean_acc_constant = mean(acc_constant);
mean_acc_log = mean(acc_log);
mean_acc_naive = mean(acc_naive);
mean_acc_knn = mean(acc_knn);
mean_acc_cn2 = mean(acc_cn2);

accuratezza = [acc_albero' acc_constant' acc_log' acc_naive' acc_knn' acc_cn2'];
[p_acc, table_acc, stats_acc] = anova2(accuratezza,1)
c_acc = multcompare(stats_acc)
% intervalli di confidenza
CI_Albero = InterConf(acc_albero);
CI_constant = InterConf(acc_constant);
CI_log = InterConf(acc_log);
CI_naive = InterConf(acc_naive);
CI_knn = InterConf(acc_knn);
CI_cn2 = InterConf(acc_cn2);

%auc 
AUC_albero = [0.472 0.375 0.241 0.271 0.375]; 
AUC_constant = [0.5 0.5 0.5 0.5 0.5];
AUC_log = [0.500 0.667 0.444 0.333 0.625];
AUC_naive = [0.597 0.583 0.500 0.521 0.500];
AUC_knn = [0.500 0.431 	0.389 0.417 0.292];
AUC_cn2 = [0.486 0.514 0.444 0.542 0.208];

%AUC medie
mean_AUC_albero = mean(AUC_albero);
mean_AUC_constant = mean(AUC_constant);
mean_AUC_log = mean(AUC_log);
mean_AUC_naive = mean(AUC_naive);
mean_AUC_knn = mean(AUC_knn);
mean_AUC_cn2 = mean(AUC_cn2);

auc = [AUC_albero' AUC_constant' AUC_log' AUC_naive' AUC_knn' AUC_cn2'];
[p_AUC, table_AUC, stats_AUC] = anova2(auc,1)
c_AUC = multcompare(stats_AUC)