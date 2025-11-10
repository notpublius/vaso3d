/*
 return a solid formed by extruding and interesting planar drawings 
 of the xy, yz, and xz projections from a CAD file.
*/
module solid_from_projections(fname, xy_layer, xz_layer, yz_layer, l=100, fn=30) {
    module extrude_layer(lname) {
        linear_extrude(height = l, convexity=10, center=true)
            import( file=fname, layer=lname, $fn=fn);
    }
    intersection() {
        extrude_layer(xy_layer);
        if( xz_layer != undef ) {
            rotate([90,0,0]) extrude_layer(xz_layer);
        }
        if( yz_layer != undef ) {
            rotate([90,0,90]) extrude_layer(yz_layer);
        }
    }
}