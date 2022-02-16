# 201400875 ±è¿ëÁØ Example 3.3

function freefalli
  
  g = 9.81;
  m = input('Mass (kg) : ');
  cd = input('Drag cpeffocoent (kg/m) : ');
  t = input('Time (s) : ');
  disp(' ')
  disp('Velocity (m/s) : ')
  disp(sqrt(g * m / cd) * tanh(sqrt(g * cd / m) * t))