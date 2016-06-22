module ball() {
    union() {
        union() {
            difference() {
                color("red") sphere(10);
                translate([0,0,-10]) cylinder(20,5,5);
            }
            translate([0,-10,0]) rotate([90,0,0]) cylinder(15,3,3);
        }
        translate([-2.5,-25,0]) cube([5,1,20]);
    }
}

module innerPipe() {
    difference() {
        color("yellow") cylinder(30, 10, 10);
        translate([0,0,-5]) cylinder(40, 5, 5);
    }
}
module pipe() {
    union() {
        difference() {
            color("yellow") cylinder(40, 15, 15);
            translate([0,0,-5]) cylinder(50, 10, 10);
        }
        translate ([0,0, -18]) innerPipe();
        translate([0,0,28]) innerPipe();
    }
}

translate([0,0,-20]) pipe();
rotate([0,90 * $t,0]) ball();