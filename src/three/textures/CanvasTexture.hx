package three.textures;

import haxe.extern.EitherType;
import js.html.CanvasElement;
import js.html.ImageElement;
import js.html.VideoElement;
import three.Lib;
import three.textures.Texture;

@:native("THREE.CanvasTexture")
extern class CanvasTexture extends Texture {
    var isCanvasTexture : Bool;
    function new( canvas : EitherType<CanvasElement,EitherType<ImageElement,VideoElement>>, ?mapping : Mapping, ?wrapS : WrappingMode, ?wrapT : WrappingMode, ?magFilter : TextureFilter, ?minFilter : TextureFilter, ?format : Int, ?type : Int, ?anisotropy : Int ) : Void;

}
