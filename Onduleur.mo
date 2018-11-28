model Onduleur
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n1 annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode1 annotation(Placement(visible = true, transformation(origin = {40, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p1 annotation(Placement(visible = true, transformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch idealOpeningSwitch1 annotation(Placement(visible = true, transformation(origin = {-30, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput u annotation(Placement(visible = true, transformation(origin = {0, 100}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {0, 80}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
equation
  connect(idealOpeningSwitch1.control, u) annotation(
    Line(points = {{-30, 68}, {-30, 68}, {-30, 76}, {0, 76}, {0, 100}, {0, 100}}, color = {255, 0, 255}));
  connect(idealDiode1.n, idealOpeningSwitch1.n) annotation(
    Line(points = {{40, 0}, {40, 60}, {-20, 60}}, color = {0, 0, 255}));
  connect(idealOpeningSwitch1.p, pin_p) annotation(
    Line(points = {{-40, 60}, {-100, 60}}, color = {0, 0, 255}));
  connect(idealOpeningSwitch1.n, pin_p1) annotation(
    Line(points = {{-20, 60}, {100, 60}}, color = {0, 0, 255}));
  connect(pin_n, idealDiode1.p) annotation(
    Line(points = {{-100, -60}, {40, -60}, {40, -20}}, color = {0, 0, 255}));
  connect(pin_n, pin_n1) annotation(
    Line(points = {{-100, -60}, {98, -60}, {98, -60}, {100, -60}}, color = {0, 0, 255}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end Onduleur;