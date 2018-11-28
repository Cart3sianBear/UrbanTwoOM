connector H2Port_a
  extends H2Port;
  annotation (defaultComponentName="port_a",
              Diagram(coordinateSystem(preserveAspectRatio=false, initialScale = 0.1), graphics={Ellipse(fillColor = {114, 159, 207}, fillPattern = FillPattern.Solid, extent = {{-40, 40}, {40, -40}}, endAngle = 360), Text(extent={{-150,110},{150,50}},
            textString="%name")}),
       Icon(coordinateSystem(preserveAspectRatio=false, initialScale = 0.1), graphics={Ellipse(lineColor = {0, 127, 255}, fillColor = {0, 127, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}, endAngle = 360), Ellipse(fillColor = {114, 159, 207}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}, endAngle = 360)}));
end H2Port_a;