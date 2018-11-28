model FC
  input Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V = 48) annotation(Placement(visible = true, transformation(origin = {-40, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor1 annotation(
    Placement(visible = true, transformation(origin = {-40, -30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  H2Port_a port_a annotation(
    Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  constant Real R = 8.314;
  constant Real F = 96485.33;
  constant Real T = 298;
equation
  connect(currentSensor1.p, constantVoltage1.n) annotation(
    Line(points = {{-40, -20}, {-40, 20}}, color = {0, 0, 255}));
  connect(constantVoltage1.p, pin_p) annotation(
    Line(points = {{-40, 40}, {-40, 60}, {100, 60}}, color = {0, 0, 255}));
  connect(currentSensor1.n, pin_n) annotation(
    Line(points = {{-40, -40}, {-40, -40}, {-40, -60}, {100, -60}, {100, -60}}, color = {0, 0, 255}));
  port_a.H2flow*port_a.H2pressure/R/T = currentSensor1.i/2/F;
  annotation(
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})),
    Diagram(coordinateSystem(initialScale = 0.1)),
    uses(Modelica(version = "3.2.2")));
end FC;