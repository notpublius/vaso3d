use <../util/scadutils.scad>

fname = "post_collar.dxf";

scale(25.4)
    solid_from_projections(fname, "top", "long_side", "short_side");

