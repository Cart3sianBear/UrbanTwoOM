model Moteur
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 2) annotation(Placement(visible = true, transformation(origin = {-30, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 0.050, i(fixed = true)) annotation(Placement(visible = true, transformation(origin = {20, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.EMF emf(k = 1)  annotation(Placement(visible = true, transformation(origin = {20, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b annotation(
    Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(emf.flange, flange_b) annotation(
    Line(points = {{30, -30}, {60, -30}, {60, 0}, {100, 0}, {100, 0}}));
  connect(pin_n, emf.n) annotation(
    Line(points = {{-100, -60}, {20, -60}, {20, -40}}, color = {0, 0, 255}));
  connect(inductor1.n, emf.p) annotation(
    Line(points = {{20, 0}, {20, 0}, {20, -2}, {20, -2}, {20, -22}, {19, -22}, {19, -20}, {20, -20}}, color = {0, 0, 255}));
  connect(resistor1.n, inductor1.p) annotation(
    Line(points = {{-20, 60}, {3, 60}, {3, 60}, {20, 60}, {20, 20}}, color = {0, 0, 255}));
  connect(resistor1.p, pin_p) annotation(
    Line(points = {{-40, 60}, {-100, 60}}, color = {0, 0, 255}));
  annotation(
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})),
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})),
    uses(Modelica(version = "3.2.2")));
end Moteur;