package three;

@:native("THREE.ImageLoader")
extern class LoadingManager {
	function new( onLoad : Void->Void, onProgress : String->Int->Int->Void, onError : Dynamic->Void ) : Void;
    function itemStart( url : String ) : Void;
    function itemEnd( url : String ) : Void;
}