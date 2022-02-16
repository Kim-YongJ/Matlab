# 201400875 ±è¿ëÁØ Ex 14.3

format compact

y=[29.65 28.55 28.65 30.15 29.35 29.75 29.25 30.65 28.15 29.85 ... 
29.05 30.25 30.85 28.75 29.65 30.45 29.15 30.45 33.65 29.35 ... 
29.75 31.25 29.45 30.15 29.65 30.55 29.65 29.25]; 
meany = mean(y) 
mediany = median(y) 
modey = mode(y) 
range = max(y)-min(y) 
stddevy = std(y) 
variancey = var(y) 
cv = stddevy / meany 

ny = (34 - 28) / 0.4 - 1; 
binmids = linspace(28 + 0.4, 34 - 0.4, ny); 
hist(y, binmids)