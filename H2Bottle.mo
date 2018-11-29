model H2Bottle
  H2Port_b port_b annotation(
    Placement(visible = true, transformation(origin = {100, -1}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  port_b.H2pressure = 3e5;

annotation(
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})),
    Diagram(coordinateSystem(grid = {1, 1})));
end H2Bottle;