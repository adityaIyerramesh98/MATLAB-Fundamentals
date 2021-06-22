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

# Stoichiometric-combustion-calculator
Aim: 
a) To calculate the stoichiometric coefficient for alkanes, alkenes and alkynes 
b) To simulate various plots depicting the effect of number of atoms on stoichiometric coefficients by comparing alkanes, alkenes and alkynes respectively
We have been given a standard reaction which depicts the formation of oxygen, nitrogen and hydrogen by burning if fuel, which is as follows, 
C_(n ) H_(2n+2)+ar(O_2+3.76N_2 )→aCO_(2 )+bH_2 O+cN_2       
Here, 
ar = stoichiometric coefficient 
a = number of moles of carbon-dioxide
b = number of moles of water 
c = number of moles of nitrogen
Please note that, after theoretically calculating the stoichiometric coefficients for alkanes, alkenes and alkynes, we then code the same process in MATLAB in order to plot and find out the effect of number of moles and stoichiometric coefficients for different gases and state their results in conclusion.


# Discretization-basics-and-range-of-dx
Programs that compares the first, second and fourth order approximations of the first derivative against the analytical or exact derivative using MATLAB, for a single value of dx and also a range of dx values from π/40 to π/4000 in 20 successions. 
Sets of uploaded MATLAB programs for the above numerical discretization is for better visualization of approximations and errors, for a single value and a range of dx values from pi/40 to pi/4000 in 20 alternate successions, respectively;
a)	Function for “forward differencing first order approximation”
b)	Function for “backward differencing first order approximation”
c)	Function for “central differencing second order approximation”
d)	Function for “central differencing fourth order approximation”
e)  Main programs for single and range if dx values;

**Discussions of Results**

a)	First of all, a function loop for “forward differencing first order approximation” is defined in code space so that error for the approximation can be found out by typing in _“abs”_ command and is stored separately in the same working directory.

b)	Secondly, a similar function loop for “backward differencing first order approximation” is defined in code space (with a different equation) so that the error for backward approximation can be found out by typing in “abs” command and is stored separately in the same working directory.

c)	Thirdly, two different function loops are created for central differencing error that occurs while performing the computation for “second order” and “fourth order” respectively. Those two programs are stored separately under a suitable name but in same working directory for ease of access when the main program is run for simulating the plots on “effect of dx” on various different types of errors.

d)	Finally, two main programs containing two “for-loops” are coded along with several subplots in midst of them so as to better visualize what effect does a rage of dx has when it is approximated using different approximations separately. 

e)	The first “subplot” depicts that with increasing value of dx, the error as well increases. This portrays the “linear behaviour” of the line plot which was created after running the main program.

f)	The second “log-log plot” depicts that the error for “central-differencing” second and fourth order remains the same when executed, while errors for “forward and backward differencing” first order linearly changes as it advances for the original vertices. As the graph goes on it becomes straightened thereby indicating the curtailing of errors in several order approximations. Second and fourth order errors are straight lines overlapping each other depict very less or nil frequency of error in when “central differencing schemes’ is applied to higher order approximations.

g)	Finally, the third “bar subplot” indicates the frequency of error in different order approximations we have taken. Both the graphs for first order, i.e., “forward differencing and backward differencing” show a significant increase when the range value of dx increases. At the same time, bar plots for “central differencing” for “second and fourth order approximations” show constant (or) real (same-level) behaviour when value of dx changes. So, these sets of bar plots portray a linear relationship when “forward and backward differencing scheme” is considered for “first order approximation” and a constant relationship when “central differencing scheme” is applied to “second and fourth order approximations”, respectively. 

