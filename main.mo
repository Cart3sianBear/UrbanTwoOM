model main
  Onduleur onduleur1 annotation(Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Moteur moteur1 annotation(Placement(visible = true, transformation(origin = {30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse1(period = 0.0001) annotation(Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Mecanique mecanique1 annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.PowerSensor powerSensor1 annotation(Placement(visible = true, transformation(origin = {60, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  H2Bottle h2Bottle1 annotation(Placement(visible = true, transformation(origin = {-190, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  FC fC1 annotation(Placement(visible = true, transformation(origin = {-90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  P_mesure p_mesure1 annotation(Placement(visible = true, transformation(origin = {-140, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-48, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Division division1 annotation(Placement(visible = true, transformation(origin = {-26, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(Placement(visible = true, transformation(origin = {-114, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 1e-6) annotation(Placement(visible = true, transformation(origin = {-162, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(division1.u1, powerSensor1.power) annotation(Line(points = {{-38, -46}, {-60, -46}, {-60, -30}, {52, -30}, {52, 0}, {52, 0}}, color = {0, 0, 127}));
  connect(add1.y, division1.u2) annotation(Line(points = {{-103, -44}, {-66, -44}, {-66, -58}, {-38, -58}, {-38, -58}}, color = {0, 0, 127}));
  connect(const.y, add1.u2) annotation(Line(points = {{-151, -56}, {-142, -56}, {-142, -50}, {-126, -50}, {-126, -50}}, color = {0, 0, 127}));
  connect(p_mesure1.phi, add1.u1) annotation(Line(points = {{-140, -1}, {-140, -1}, {-140, -38}, {-126, -38}, {-126, -38}}, color = {0, 0, 127}));
  connect(onduleur1.pin_n, ground1.p) annotation(Line(points = {{-19, 3}, {-48, 3}, {-48, -4}}, color = {0, 0, 255}));
  connect(ground1.p, fC1.pin_n) annotation(Line(points = {{-48, -4}, {-48, 3}, {-81, 3}}, color = {0, 0, 255}));
  connect(fC1.pin_p, onduleur1.pin_p) annotation(Line(points = {{-81, 17}, {-18, 17}, {-18, 16}, {-18, 16}}, color = {0, 0, 255}));
  connect(p_mesure1.port_b, fC1.port_a) annotation(Line(points = {{-131, 10}, {-98, 10}, {-98, 10}, {-98, 10}}, color = {0, 127, 255}));
  connect(h2Bottle1.port_b, p_mesure1.port_b) annotation(Line(points = {{-181, 10}, {-148, 10}, {-148, 10}, {-130, 10}, {-130, 10}}, color = {0, 127, 255}));
  connect(powerSensor1.flange_b, mecanique1.flange_a) annotation(Line(points = {{70, 10}, {80, 10}, {80, 10}, {82, 10}}));
  connect(moteur1.flange_b, powerSensor1.flange_a) annotation(Line(points = {{40, 10}, {50, 10}, {50, 10}, {50, 10}}));
  connect(booleanPulse1.y, onduleur1.u) annotation(Line(points = {{-18, 50}, {-10, 50}, {-10, 18}, {-10, 18}}, color = {255, 0, 255}));
  connect(onduleur1.pin_p1, moteur1.pin_p) annotation(Line(points = {{-1, 17}, {10.5, 17}, {10.5, 17}, {22, 17}, {22, 14}, {22, 14}}, color = {0, 0, 255}));
  connect(onduleur1.pin_n1, moteur1.pin_n) annotation(Line(points = {{-1, 3}, {22, 3}, {22, 2}, {22, 2}, {22, 2}, {22, 2}}, color = {0, 0, 255}));
  annotation(uses(Modelica(version = "3.2.2")), version = "", __OpenModelica_commandLineOptions = "", Diagram(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {0.05, 0.05})), Icon(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {0.05, 0.05})));
end main;