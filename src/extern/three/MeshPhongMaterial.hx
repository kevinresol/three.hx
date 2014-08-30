package three;

@:native("THREE.MeshPhongMaterial")
extern class MeshPhongMaterial extends Material {
    
    var color : Color; // new Color(0xffffff)
    var ambient : Color; // new Color(0xffffff)
    var emissive : Color; // new Color(0x000000)
    var specular : Color;  // new Color(0x111111)
    var shininess : Float; // 30
    
    var metal : Bool; // false
   
    var perPixel : Bool; // true
    
    var wrapAround : Bool; // false
    var wrapRGB : Vector3; // (1,1,1)
    
    var map : Texture;
    
    var lightMap : Texture;
    
    var bumpMap : Texture;
    var bumpScale : Float;
    
    var normalMap : Texture;
    var normalScale : Vector2;
    
    var specularMap : Texture;

    var alphaMap : Texture;
    
    var envMap : Texture; // TextureCube?
    var combine : Int; // MultiplyOperation
    var reflectivity : Float; // 1
    var refractionRatio : Float; // 0.98
   
    var fog : Bool; // true
   
    var shading : Int; // SmoothShading
   
    var wireframe : Bool; // false
    var wireframeLinewidth : Float; // 1
    var wireframeLinecap : String; // 'round'
    var wireframeLinejoin : String; // 'round'
 
    var vertexColors : Bool; // NoColors

    var skinning : Bool; // false
    var morphTargets : Bool; // false
    var morphNormals : Bool; // false

    function new(?parameters:Dynamic) : Void;
}