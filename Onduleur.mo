model Onduleur
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n1 annotation(Placement(visible = true, transformation(origin = {90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {92, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-92, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode1 annotation(Placement(visible = true, transformation(origin = {8, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p1 annotation(Placement(visible = true, transformation(origin = {90, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {92, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-90, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-92, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch idealOpeningSwitch1 annotation(Placement(visible = true, transformation(origin = {-6, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput u annotation(Placement(visible = true, transformation(origin = {0, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {2, 92}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  connect(idealOpeningSwitch1.control, u) annotation(Line(points = {{-6, 37}, {-2, 37}, {-2, 80}, {6, 80}, {6, 80}}, color = {255, 0, 255}));
  connect(idealDiode1.n, idealOpeningSwitch1.n) annotation(Line(points = {{8, -8}, {8, 18}, {4, 18}, {4, 30}}, color = {0, 0, 255}));
  connect(idealOpeningSwitch1.n, pin_p1) annotation(Line(points = {{4, 30}, {90, 30}}, color = {0, 0, 255}));
  connect(idealOpeningSwitch1.p, pin_p) annotation(Line(points = {{-16, 30}, {-90, 30}}, color = {0, 0, 255}));
  connect(idealDiode1.p, pin_n1) annotation(Line(points = {{8, -28}, {90, -28}, {90, -70}}, color = {0, 0, 255}));
  connect(idealDiode1.p, pin_n) annotation(Line(points = {{8, -28}, {-90, -28}, {-90, -70}}, color = {0, 0, 255}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end Onduleur;