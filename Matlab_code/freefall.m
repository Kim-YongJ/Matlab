# 201400875 ±è¿ëÁØ Example 3.2

function v = freefall(t, m, cd)
  # freefall : bungee velocity with second-order drag
  # v = freefall (t, m, dc) computes the free-fall velocity
  # input :
  # t = time(s)
  # m = mass(kg)
  # cd = second-order drag coefficient (kg/m)
  # output : 
  # v = downward velocity (m/s)
  
  g = 9.81;
  v = sqrt(g * m / cd) * tanh(sqrt(g * cd / m) * t);
  
  # freefall(12, 68.1, 0.25)