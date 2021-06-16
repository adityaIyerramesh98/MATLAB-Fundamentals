# Pendulum-s-Motion
To simulate the oscillatory behavior of a pendulum having a second order ODE. 
Here are few points to sum up the visualization of code for a better perspective. 
1)	Initially the constants are declared before moving onto the solver part in order to maintain the effectiveness of code.
2)	Moving on, we declared the time range required for the bob to plunge between, along with mentioning its iteration as well (which appears to be 500 in our case). 
3)	Previously the used defined function is declared and implemented to see the relevant inference is being show cased or not. If not, tweak the UD function accordingly until we get the desired result.
4)	Then, after saving the UD function we get then go for the solver part wherein, we declare the get the solution for the ODE in terms of matrix (1X500, 500X1) respectively and plot them accordingly as “Ang Disp and Ang. Vel Vs Time” and “Ang. Disp Vs Ang. Vel” using markers, face-colors and legends respectively.
5)	Further, for the iterative-part, we create a for-loop to nest the “line of pendulum; where it’s kept, pendulum’s bob, it’s string and the motion” by the help of plots, linewidths and equations functions. We declare an initial condition of x0 and y0 i.e., where the bob situates itself first and then tweaking the conditions until we receive a clear pendulum’s motion. 
6)	We set a frame counter in order to reduce the timesteps as the values should be integral and not decimal so for ease of access, counter value (ct) is set to 1 (initially)
7)	Depending on the time range we classified above, we fix our axis accordingly in between 0 and 2 and go further for movie animation in MATLAB for the animation of our pendulum’s motion
8)	After ending the for-loop, we increment the counter value to plus 1 for loop to run infinitely (motion of pendulum). 
9)	We use a command called “getframe” ONLY IN MATLAB for storing and saving the 500 iterated images for pendulum’s motion. This command also helps in stitching all the 500 generated images and converts it into a gif, respectively.
10)	Finally, we make the use of movie maker function already embedded in MATLAB, for making a gif and saving it in the form of a “avi” file in our internal storage.


# Stoichiometric-combuation-calculator
Aim: a) To calculate the stoichiometric coefficient for alkanes, alkenes and alkynes 
b) To simulate various plots depicting the effect of number of atoms on stoichiometric coefficients by comparing alkanes, alkenes and alkynes respectively
We have been given a standard reaction which depicts the formation of oxygen, nitrogen and hydrogen by burning if fuel, which is as follows, 
C_(n ) H_(2n+2)+ar(O_2+3.76N_2 )→aCO_(2 )+bH_2 O+cN_2       
Here, 
ar = stoichiometric coefficient 
a = number of moles of carbon-dioxide
b = number of moles of water 
c = number of moles of nitrogen
