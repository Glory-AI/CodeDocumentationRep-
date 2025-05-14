 syms t a f 
 %defining symbolic time function
 xt= exp(-a * t)* cos(2*pi*f*t);
 %specify function parameters
 a= input('Enter the decay constant a=');
 T= input('Enter time period T=');
 f= input('Enter the frequency of the sinusoid f=');
 no_of_plot= input('Enter number of plot points between 0 and t');

 %evaluate the time function for given a, t and f values
 xt= subs(xt);
 %plot time period
 t1= linspace(0, T, no_of_plot);
 %solves func t=t1 and converts to double
 % Evaluate xt over a range of t values
 xt1= double(subs(xt, t, t1));

 plot(t1,xt1);
 grid;

 xlabel('Time(sec)');
 ylabel('Amplitude');
 title('Exponential time Function Plot');
 title(['x(t)= e^{-', num2str(a),'t}cos(2\pi',num2str(f), 't)']);
