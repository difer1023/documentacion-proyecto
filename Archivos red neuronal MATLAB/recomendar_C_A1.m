function recomendacion=recomendar_C_A1(input)
file=matfile("RN_C_A1.mat");
disp(file.RN_C_A1_TP);
disp(input);
recomendacion=sim(file.RN_C_A1_TP,input);
end