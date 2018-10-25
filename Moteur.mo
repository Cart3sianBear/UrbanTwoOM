model Moteur
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 2) annotation(Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 0.050) annotation(Placement(visible = true, transformation(origin = {30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.EMF emf annotation(Placement(visible = true, transformation(origin = {30, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-90, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-88, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(emf.flange, flange_a) annotation(Line(points = {{40, -30}, {90, -30}, {90, 16}, {82, 16}, {82, 16}}));
  connect(emf.n, pin_n) annotation(Line(points = {{30, -40}, {-86, -40}, {-86, -64}, {-86, -64}}, color = {0, 0, 255}));
  connect(inductor1.n, emf.p) annotation(Line(points = {{30, 0}, {30, 0}, {30, -20}, {30, -20}}, color = {0, 0, 255}));
  connect(resistor1.n, inductor1.p) annotation(Line(points = {{0, 50}, {30, 50}, {30, 20}, {30, 20}}, color = {0, 0, 255}));
  connect(resistor1.p, pin_p) annotation(Line(points = {{-20, 50}, {-96, 50}, {-96, 58}, {-96, 58}}, color = {0, 0, 255}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end Moteur;