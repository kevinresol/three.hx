package three.materials;

import haxe.extern.EitherType;
import three.Lib;
import three.core.EventDispatcher;
import three.math.Color;
import three.math.Plane;

typedef MaterialParameters = {
	?alphaTest : Float,
	?blendDst : BlendingDestinationFactor,
	?blendDstAlpha : Float,
	?blendEquation : BlendingEquation,
	?blendEquationAlpha : Float,
	?blending : BlendMode,
	?blendSrc : BlendingDestinationFactor,
	?blendSrcAlpha : Float,
	?clipIntersection : Bool,
	?clippingPlanes : Array<Plane>,
	?clipShadows : Bool,
	?colorWrite : Bool,
	?depthFunc : DepthModes,
	?depthTest : Bool,
	?depthWrite : Bool,
	?fog : Bool,
	//?lights : Bool,
	?name : String,
	?opacity : Float,
	?overdraw : Float,
	?polygonOffset : Bool,
	?polygonOffsetFactor : Float,
	?polygonOffsetUnits : Float,
	?precision : String, // 'highp' | 'mediump' | 'lowp' | null,
	?premultipliedAlpha : Bool,
	?dithering : Bool,
	?flatShading : Bool,
	?side : Side,
	?transparent : Bool,
	?vertexColors : Colors,
	?vertexTangents : Bool,
	?visible : Bool,
	?stencilWrite : Bool,
	?stencilFunc : StencilFunc,
	?stencilRef : Float,
	?stencilMask : Float,
	?stencilFail : StencilOp,
	?stencilZFail : StencilOp,
	?stencilZPass : StencilOp,
};

@:native("THREE.Material")
extern class Material extends EventDispatcher {

	//TODO:

	var alphaTest : Float;
	
	var uuid(default,never) : Int;
    //var id : Int;

    var name : String;
    var type : String;

	var color : Color;

    var side : Side;
    var flatShading : Bool;
	
	var vertexTangents : Bool;
	var vertexColors : Colors;

    var opacity : Float;
    var transparent : Bool;

    var blending : BlendMode;

    var blendSrc : BlendingDestinationFactor; // SrcAlphaFactor
    var blendDst : BlendingDestinationFactor; // OneMinusSrcAlphaFactor
    var blendSrcAlpha : BlendingDestinationFactor;
    var blendDstAlpha : BlendingDestinationFactor;
    var blendEquation : BlendingEquation;
    var blendEquationAlpha : BlendingEquation;

    var depthFunc : DepthModes;
	var depthTest : Bool;
	var depthWrite : Bool;

	var clippingPlanes : Bool;
	var clipIntersection : Bool;
	var clipShadows : Bool;

	var shadowSide : Bool;

    var colorWrite : Bool;

    var precision : Float;

    var polygonOffset : Bool;
    var polygonOffsetFactor : Float;
    var polygonOffsetUnits : Float;

    var visible : Float;

    var userData : Dynamic;

    var needsUpdate : Bool;

    function onBeforeCompile() : Void;
    function setValues( values : Dynamic ) : Void;
    function toJSON( ?meta : Dynamic ) : Dynamic;
    function clone() : Material;
    function copy( source : Dynamic ) : Void;
    //function update() : Void;
    function dispose() : Void;
}
