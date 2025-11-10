use <../util/scadutils.scad>

difference() {
    solid_from_projections( "keyring_gauge.dxf" , "body ... xy", "body ... xz");
    solid_from_projections( "keyring_gauge.dxf" , "void ... xy", "void ... xz");
}    