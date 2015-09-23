x = linspace(0,1,101);
for i=1:101
    y(i)=-1*(x(i)*log(x(i))+(1-x(i))*log(1-x(i)));
    z(i)=min(x(i),1-x(i));
end
m = 0.5/max(y);
for i=1:101
    y(i) = y(i)*m;
end
f = figure;
hold on;
plot(x,y);
plot(x,z, '--');
title('Entropy vs. Class. Error on Binary Variable', 'FontSize',14);
xlabel('\theta', 'FontSize',15);
legend('Entropy','Min. Class. Error');