model main
  Onduleur onduleur1 annotation(Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Moteur moteur1 annotation(Placement(visible = true, transformation(origin = {10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse1 annotation(Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Mecanique mecanique1 annotation(Placement(visible = true, transformation(origin = {50, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  FC fC1 annotation(Placement(visible = true, transformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fC1.pin_n, onduleur1.pin_n) annotation(Line(points = {{-61, 3}, {-40, 3}, {-40, 2}, {-40, 2}}, color = {0, 0, 255}));
  connect(fC1.pin_p, onduleur1.pin_p) annotation(Line(points = {{-61, 17}, {-38, 17}, {-38, 16}, {-38, 16}}, color = {0, 0, 255}));
  connect(moteur1.flange_a, mecanique1.flange_b) annotation(Line(points = {{19, 11}, {40, 11}, {40, 10}, {40, 10}}));
  connect(onduleur1.u, booleanPulse1.y) annotation(Line(points = {{-30, 19}, {-30, 39}}, color = {255, 0, 255}));
  connect(onduleur1.pin_n1, moteur1.pin_n) annotation(Line(points = {{-21, 3}, {2, 3}, {2, 2}, {2, 2}}, color = {0, 0, 255}));
  connect(onduleur1.pin_p1, moteur1.pin_p) annotation(Line(points = {{-21, 17}, {2, 17}, {2, 14}, {2, 14}}, color = {0, 0, 255}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end main;