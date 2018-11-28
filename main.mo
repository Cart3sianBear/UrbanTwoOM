model main
  Onduleur onduleur1 annotation(Placement(visible = true, transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Moteur moteur1 annotation(Placement(visible = true, transformation(origin = {30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse1(period = 0.0001)  annotation(Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Mecanique mecanique1 annotation(Placement(visible = true, transformation(origin = {90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  FC fC1 annotation(Placement(visible = true, transformation(origin = {-50, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {-30, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  H2Bottle h2Bottle1 annotation(
    Placement(visible = true, transformation(origin = {-90, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.PowerSensor powerSensor1 annotation(
    Placement(visible = true, transformation(origin = {60, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(powerSensor1.flange_b, mecanique1.flange_a) annotation(
    Line(points = {{70, 10}, {80, 10}, {80, 10}, {82, 10}}));
  connect(moteur1.flange_b, powerSensor1.flange_a) annotation(
    Line(points = {{40, 10}, {50, 10}, {50, 10}, {50, 10}}));
  connect(booleanPulse1.y, onduleur1.u) annotation(
    Line(points = {{-18, 50}, {-10, 50}, {-10, 18}, {-10, 18}}, color = {255, 0, 255}));
  connect(h2Bottle1.port_b, fC1.port_a) annotation(
    Line(points = {{-80, 10}, {-60, 10}, {-60, 10}, {-58, 10}}, color = {0, 127, 255}));
  connect(ground1.p, fC1.pin_n) annotation(
    Line(points = {{-30, -6}, {-30, -1.5}, {-30, -1.5}, {-30, 3}, {-40, 3}, {-40, 3.5}, {-40, 3.5}, {-40, 4}}, color = {0, 0, 255}));
  connect(fC1.pin_p, onduleur1.pin_p) annotation(
    Line(points = {{-41, 17}, {-29.5, 17}, {-29.5, 17}, {-18, 17}, {-18, 16}, {-18, 16}, {-18, 16}, {-18, 16}}, color = {0, 0, 255}));
  connect(fC1.pin_n, onduleur1.pin_n) annotation(
    Line(points = {{-41, 3}, {-20, 3}, {-20, 2}, {-20, 2}, {-20, 2}, {-20, 2}}, color = {0, 0, 255}));
  connect(onduleur1.pin_p1, moteur1.pin_p) annotation(
    Line(points = {{-1, 17}, {10.5, 17}, {10.5, 17}, {22, 17}, {22, 14}, {22, 14}}, color = {0, 0, 255}));
  connect(onduleur1.pin_n1, moteur1.pin_n) annotation(
    Line(points = {{-1, 3}, {22, 3}, {22, 2}, {22, 2}, {22, 2}, {22, 2}}, color = {0, 0, 255}));
  annotation(
    Icon(coordinateSystem(grid = {0.05, 0.05})),
    Diagram(coordinateSystem(grid = {0.05, 0.05})),
    uses(Modelica(version = "3.2.2")),
  version = "",
  __OpenModelica_commandLineOptions = "");
end main;