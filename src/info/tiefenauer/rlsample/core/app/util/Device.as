/**
 * Device.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 4, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.app.architecture.model.entity
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.app.util
{
	import flash.display.Stage;
	import flash.system.Capabilities;
	
	import mx.core.FlexGlobals;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * Util class for device specific information 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class Device extends Actor
	{
		//--------------------------------
		// Public constants
		//--------------------------------
		public static var IS_PHONE:Boolean = formFactor == FORM_FACTOR_PHONE;
		public static var IS_TABLET:Boolean = formFactor == FORM_FACTOR_TABLET;
		
		//--------------------------------
		// Private constants
		//--------------------------------
		private static const FORM_FACTOR_TABLET:String = 'tablet';
		private static const FORM_FACTOR_PHONE:String = 'phone';
		
		/**
		 * Get device operating system 
		 * @return 
		 */
		public static function get os():String{
			// to be replaced by constants for iOS/Android/...
			return Capabilities.os;
		}
		
		/**
		 * Get device form factor (tablet or phone) 
		 * @return 
		 */
		public static function get formFactor():String {
			var stage:Stage = FlexGlobals.topLevelApplication.stage;
			
			var _width : Number = Math.max( stage.stageWidth, stage.stageHeight );
			var _height : Number = Math.min( stage.stageWidth, stage.stageHeight );
			
			_width = _width / FlexGlobals.topLevelApplication.runtimeDPI;
			_height = _height / FlexGlobals.topLevelApplication.runtimeDPI;
			
			//this will resolve to the physical size in inches... 
			//if greater than 5 inches, assume its a tablet
			if ( _width >= 5 )
				return FORM_FACTOR_TABLET;
			return FORM_FACTOR_PHONE;
		}
	}
	
}

