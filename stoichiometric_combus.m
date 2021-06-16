%Calculation of Stoichiometric coefficients for different fuels
%Author: Aditya Iyer Ramesh

clear all
clc

%First we have to creat an array of 30 carbon atoms
%number of moles of carbon atoms is denoted as "n"
%stoichiometric coefficient is denoted as "ar"

n = linspace(1,30,30);
m = length(n);
i = 1:m;

for i = 1:m;
    ar_alk = ((3*n) + 1)/2
    ar_alke = (3*n)/2 
    ar_alky = ((3*n) - 1)/2
end

%Plotting graphs for number of moles vs stoichiometric coefficients
plot(n,ar_alk,'linewidth',1.5,'color','b','marker','o')
grid on
hold on
plot(n,ar_alke,'linewidth',1.5,'color','r','marker','*')
plot(n,ar_alky,'linewidth',1.5,'color','g','marker','.')
hold off
title("Stoichiometric coefficients Vs Number of moles")
xlabel("Stoichiometric coefficients")
ylabel("Number of moles")
legend("Alkanes","Alkenes","Alkynes",'location',"northwest")