function recomendacion=recomendar_C_B(input)
file=matfile("RN_C_B.mat");
disp(file.RN_C_B_TP);
disp(input);
recomendacion=sim(file.RN_C_B_TP,input);
end