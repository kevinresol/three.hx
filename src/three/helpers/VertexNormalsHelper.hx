package three.helpers;

import three.objects.Mesh;
import three.objects.Line;

@:deprecated
@:native("THREE.VertexNormalsHelper")
extern class VertexNormalsHelper extends Line {
	function new( object : Mesh, ?size : Float, ?hex : Int, ?linewidth : Float ) : Void;
	function update() : Void;
}
