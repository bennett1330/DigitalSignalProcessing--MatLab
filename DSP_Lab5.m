t = 0:10^(-3):11;
n = 0:11;
k = 1;
T_array = [ 2.1, 1.5, 0.8 ];

syms y_fd(T) y_bd(T) pole_fd(T) pole_bd(T);
y_t = exp(-k*t);
y_fd(T) = (1-k*T).^(n);
y_bd(T) = (1+k*T).^(-n);
pole_fd(T) = 1-k*T; 
pole_bd(T) = (1+k*T)^(-1);

figure('Name','Lab5');

for p = 1:length(T_array)
    subplot(3, 2, 2*p-1);
    plot(t, y_t, 'b');
    hold on;
    plot(n, y_fd( T_array(p) ), 'r');
    title( sprintf('F.D.    T=%.1f, Pole=%.1f', ...
                    T_array(p), pole_fd( T_array(p) ) ...
    ) );
    
    subplot(3, 2, 2*p);
    plot(t, y_t, 'b');
    hold on;
    plot(n, y_bd( T_array(p) ), 'r');
    title( sprintf('B.D.    T=%.1f, Pole=%.1f', ...
                    T_array(p), pole_bd( T_array(p) ) ...
    ) );
end
