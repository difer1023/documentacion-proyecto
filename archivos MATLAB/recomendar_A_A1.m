function recomendacion=recomendar_A_A1(input)
file=matfile("RN_A_A1.mat");
disp(file.RN_A_A1_TP);
disp(input);
recomendacion=sim(file.RN_A_A1_TP,input);
end