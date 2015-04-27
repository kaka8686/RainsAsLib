package utils 
{
	import flash.display.DisplayObject;
	import flash.geom.ColorTransform;
	
	/**
	 * @date 2015/4/15 18:00
	 * @author rainssong
	 * @blog http://blog.sina.com.cn/rainssong
	 * @homepage http://rainsgameworld.sinaapp.com
	 * @weibo http://www.weibo.com/rainssong
	 */
	public class ColorTransformCore 
	{
		
		public function ColorTransformCore() 
		{
			
		}
		
		public static  function setBrightness(obj:DisplayObject, value:Number):void 
		{
			var colorTransformer:ColorTransform = obj.transform.colorTransform
			var backup_filters:* = obj.filters
			if (value >= 0) {
				colorTransformer.blueMultiplier = 1-value
				colorTransformer.redMultiplier = 1-value
				colorTransformer.greenMultiplier = 1-value
				colorTransformer.redOffset = 255*value
				colorTransformer.greenOffset = 255*value
				colorTransformer.blueOffset = 255*value
			}else {
				value=Math.abs(value)
				colorTransformer.blueMultiplier = 1-value
				colorTransformer.redMultiplier = 1-value
				colorTransformer.greenMultiplier = 1-value
				colorTransformer.redOffset = 0
				colorTransformer.greenOffset = 0
				colorTransformer.blueOffset = 0
			}
		　　obj.transform.colorTransform = colorTransformer
		　　obj.filters = backup_filters;
		}
	}
}