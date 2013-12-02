within ADMSL.Electrical.Analog.Interfaces;
partial model ConditionalHeatPort1
  extends Bases.ConditionalHeatPort(useHeatPort=true,
      redeclare ADMSL.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort(T(start=T)=T_heatPort, Q_flow=-LossPower,
                                                                          g_T = g_T_heatPort, g_Q_flow = g_LossPower));
  extends ADMSL.Interfaces.GradientInfo;

  parameter Real g_T[NG] = zeros(NG);

  Real  g_LossPower[NG];
  Real  g_T_heatPort[NG];

equation
  // g_T_heatPort[1:NG] = g_T[1:NG];

end ConditionalHeatPort1;