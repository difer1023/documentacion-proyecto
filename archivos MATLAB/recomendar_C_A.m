function recomendacion=recomendar_C_A(input)
file=matfile("RN_C_A.mat");
disp(file.RN_C_A);
disp(input);
recomendacion=sim(file.RN_C_A,input);
end