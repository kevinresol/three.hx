package three.textures;

import three.Lib;
import three.textures.Texture;

@:native("THREE.DataTexture")
extern class DataTexture extends Texture {
	function new( data : Dynamic,
				  width : Int, height : Int,
				  ?format : PixelFormat,
				  ?type : TextureDataType,
				  ?mapping : Mapping,
				  ?wrapS : WrappingMode,
				  ?wrapT : WrappingMode,
				  ?magFilter :Int,
				  ?minFilter : Int,
				  ?anisotropy : Int ) : Void;
	// override function clone() : DataTexture;
}
