package three.geometries;

@:native("THREE.PlaneGeometry")
extern class PlaneGeometry extends three.core.Geometry {
	function new( width : Float, height : Float, ?widthSegments : Float, ?heightSegments : Float) : Void;
}