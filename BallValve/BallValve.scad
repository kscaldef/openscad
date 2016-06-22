module ball() {
    union() {
        union() {
            difference() {
                color("red") sphere(10);
                translate([0,10,0]) rotate([90,0,0]) cylinder(20,5,5);
            }
            translate([0,0,10]) rotate([0,0,0]) cylinder(15,3,3);
        }
        translate([-2.5,0,25]) cube([5,20,1]);
    }
}

module innerPipe() {
    difference() {
        color("yellow") cylinder(30, 10, 10);
        translate([0,0,-5]) cylinder(40, 5, 5);
    }
}
module pipe() {
    rotate([90,0,0]) union() {
        difference() {
            color("yellow") translate([0,0,-20]) cylinder(40, 15, 15);
            translate([0,0,-25]) cylinder(50, 10, 10);
        }
        translate ([0,0, -37]) innerPipe();
        translate([0,0,7]) innerPipe();
    }
}

pipe();
rotate([0,0, -90 * $t]) ball();