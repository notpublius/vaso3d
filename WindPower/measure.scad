h_spire = 4*25.4;
h_bar = .25*25.4;

linear_extrude( height = 0.5*25.4 )
scale( [25.4,25.4] )
    import ( file = "widgetbase.dxf" , layer = "0" , $fn=36);

translate([1.501*25.4,0,0])
    cylinder(d=.25*25.4, h=h_spire, $fn=36);
    
// A "bar" for linear calibration
xd = (1.501 + .25/2);
translate([xd-.25/2,0,0.25/2]*25.4)
    cube([.25,1.5,.25]*25.4, center=true);
    
// A "sail" for spire reinforcement
translate([35,0,h_bar])
linear_extrude(height=h_spire-h_bar, scale=[.33,1])
scale([.75,.1,0]*25.4)
translate([-0.5,0,0])
rotate([0,0,45])
    circle(1, $fn=4);