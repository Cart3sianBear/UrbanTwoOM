model FC
  input Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  H2Port_a port_a annotation(Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  constant Real R = 8.314;
  constant Real F = 96485.33;
  constant Real T = 298;
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor1 annotation(Placement(visible = true, transformation(origin = {40, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage1 annotation(Placement(visible = true, transformation(origin = {-40,0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Tables.CombiTable1D combiTable1D1( smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative,table = [0, 59.5; 1, 53.7; 3, 49.8; 5, 48.5; 10, 46.1; 15, 44.5; 20, 43; 25, 41.5]) annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
equation
  connect(signalVoltage1.n, pin_n) annotation(
    Line(points = {{-40, -10}, {-40, -10}, {-40, -60}, {100, -60}, {100, -60}}, color = {0, 0, 255}));
  connect(signalVoltage1.v, combiTable1D1.y[1]) annotation(
    Line(points = {{-32, 0}, {-11, 0}}, color = {0, 0, 127}));
  connect(currentSensor1.i, combiTable1D1.u[1]) annotation(
    Line(points = {{40, 50}, {40, 0}, {12, 0}}, color = {0, 0, 127}));
  connect(currentSensor1.n, pin_p) annotation(
    Line(points = {{50, 60}, {100, 60}, {100, 68}, {96, 68}}, color = {0, 0, 255}));
  connect(currentSensor1.p, signalVoltage1.p) annotation(
    Line(points = {{30, 60}, {-40, 60}, {-40, 10}}, color = {0, 0, 255}));
  port_a.H2flow * port_a.H2pressure / R / T = currentSensor1.i / 2 / F;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(initialScale = 0.1)), uses(Modelica(version = "3.2.2")));
end FC;