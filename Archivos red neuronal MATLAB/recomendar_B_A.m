function recomendacion=recomendar_B_A(input)
file=matfile("RN_B_A.mat");
disp(file.RN_B_A_TP);
disp(input);
recomendacion=sim(file.RN_B_A_TP,input);
end