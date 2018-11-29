model main
  Onduleur onduleur1 annotation(Placement(visible = true, transformation(origin = {-50, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Moteur moteur1 annotation(Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse1(period = 0.0001) annotation(Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Mecanique mecanique1 annotation(Placement(visible = true, transformation(origin = {50, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.PowerSensor powerSensor1 annotation(Placement(visible = true, transformation(origin = {20, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  H2Bottle h2Bottle1 annotation(Placement(visible = true, transformation(origin = {-170, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  FC fC1 annotation(Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-80, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Division division1 annotation(Placement(visible = true, transformation(origin = {30, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(Placement(visible = true, transformation(origin = { -10, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 1e-9) annotation(Placement(visible = true, transformation(origin = {-50,-70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  P_mesure p_mesure1 annotation(
    Placement(visible = true, transformation(origin = {-140, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 1e-3)  annotation(
    Placement(visible = true, transformation(origin = {-80, 10}, extent = {{-7, -7}, {7, 7}}, rotation = -90)));
equation
  connect(add1.y, division1.u2) annotation(
    Line(points = {{1, -50}, {6.5, -50}, {6.5, -56}, {18, -56}}, color = {0, 0, 127}));
  connect(const.y, add1.u2) annotation(
    Line(points = {{-39, -70}, {-30.5, -70}, {-30.5, -56}, {-22, -56}}, color = {0, 0, 127}));
  connect(p_mesure1.phi, add1.u1) annotation(
    Line(points = {{-140, -1}, {-140, -44}, {-22, -44}}, color = {0, 0, 127}));
  connect(division1.u1, powerSensor1.power) annotation(
    Line(points = {{18, -44}, {12, -44}, {12, -1}}, color = {0, 0, 127}));
  connect(booleanPulse1.y, onduleur1.u) annotation(
    Line(points = {{-59, 50}, {-50, 50}, {-50, 18}}, color = {255, 0, 255}));
  connect(h2Bottle1.port_b, p_mesure1.port_a) annotation(
    Line(points = {{-161, 10}, {-149, 10}}, color = {0, 127, 255}));
  connect(p_mesure1.port_b, fC1.port_a) annotation(
    Line(points = {{-131, 10}, {-119, 10}}, color = {0, 127, 255}));
  connect(moteur1.flange_b, powerSensor1.flange_a) annotation(
    Line(points = {{-1, 10}, {10, 10}}));
  connect(powerSensor1.flange_b, mecanique1.flange_a) annotation(
    Line(points = {{30, 10}, {41, 10}}));
  connect(onduleur1.pin_n1, moteur1.pin_n) annotation(
    Line(points = {{-41, 3}, {-19, 3}}, color = {0, 0, 255}));
  connect(onduleur1.pin_p1, moteur1.pin_p) annotation(
    Line(points = {{-41, 17}, {-19, 17}}, color = {0, 0, 255}));
  connect(capacitor1.p, fC1.pin_p) annotation(
    Line(points = {{-80, 17}, {-101, 17}}, color = {0, 0, 255}));
  connect(capacitor1.p, onduleur1.pin_p) annotation(
    Line(points = {{-80, 17}, {-59, 17}}, color = {0, 0, 255}));
  connect(capacitor1.n, fC1.pin_n) annotation(
    Line(points = {{-80, 3}, {-101, 3}}, color = {0, 0, 255}));
  connect(capacitor1.n, onduleur1.pin_n) annotation(
    Line(points = {{-80, 3}, {-59, 3}}, color = {0, 0, 255}));
  connect(ground1.p, fC1.pin_n) annotation(
    Line(points = {{-80, -4}, {-80, 3}, {-101, 3}}, color = {0, 0, 255}));
  connect(onduleur1.pin_n, ground1.p) annotation(
    Line(points = {{-59, 3}, {-80, 3}, {-80, -4}}, color = {0, 0, 255}));
  connect(fC1.pin_p, onduleur1.pin_p) annotation(
    Line(points = {{-101, 17}, {-40, 17}, {-40, 16.5}, {-59, 16.5}, {-59, 17}}, color = {0, 0, 255}));
  annotation(uses(Modelica(version = "3.2.2")), version = "", __OpenModelica_commandLineOptions = "", Diagram(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {0.05, 0.05})), Icon(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {0.05, 0.05})));
end main;