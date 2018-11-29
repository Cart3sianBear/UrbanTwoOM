model P_mesure
  extends Modelica.Icons.RotationalSensor;
  Modelica.Blocks.Interfaces.RealOutput phi annotation(Placement(visible = true, transformation(origin = {0, -100}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {0, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  H2Port_b port_b annotation(Placement(visible = true, transformation(origin = {96, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  H2Port_a port_a annotation(Placement(visible = true, transformation(origin = {-96, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  port_a.H2pressure = port_b.H2pressure;
  port_a.H2flow = phi;
  port_b.H2flow = -phi;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Line(origin = {-75, 0}, points = {{-5, 0}, {5, 0}, {5, 0}}), Line(origin = {76.2071, -1.20711}, points = {{5.79289, -0.792893}, {3.79289, 1.20711}, {-6.20711, 1.20711}}), Line(origin = {0, -86}, points = {{0, 16}, {0, -16}}), Text(origin = {2, -37}, extent = {{-24, 15}, {24, -15}}, textString = "Flow")}));
end P_mesure;