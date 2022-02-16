# 201400875 김용준 연습문제 3.12
function ttstart(tstart, tend, ni)
  
# t(1) = tstart;
# y(1) = 12 + 6 * cos(2 * pi * t(1) / (tend - tstart));
# for i = 2 : ni + 1
#  t(i) = t(i-1) + (tend - tstart) / ni;
#  y(i) = 10 + 5 * cos(2 * pi * t(i) / (tend - tstart));
# end

tt = tstart : (tend - tstart) / ni : tend
yy = 12 + 6 * cos(2 * pi * tt / (tend - tstart))
