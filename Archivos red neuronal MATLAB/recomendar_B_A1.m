function recomendacion=recomendar_B_A1(input)
file=matfile("RN_B_A1.mat");
disp(file.RN_B_A1_TP);
disp(input);
recomendacion=sim(file.RN_B_A1_TP,input);
end