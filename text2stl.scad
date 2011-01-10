difference() {
	translate([-40,-40,0]) cube([80,80,5], center=false);
	linear_extrude(
		file="tmp.dxf",
		layer="0",
		height=5,
		scale=15,
		origin=[2.75,2.75]
	);
}