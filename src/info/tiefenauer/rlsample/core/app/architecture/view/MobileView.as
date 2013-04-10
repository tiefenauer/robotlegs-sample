/**
 * MobileView.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.app.architecture.view
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.app.architecture.view
{
	import spark.components.View;
	
	import info.tiefenauer.rlsample.core.app.architecture.model.vo.Translation;
	
	/**
	 * Base class for all Views 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class MobileView extends View
	{
		[Inject]
		public var translation:Translation;
		
		/**
		 * Convenience translation function for MXML-instances of view 
		 * @param key
		 * @param targetLanguage
		 * @return 
		 */
		protected function translate(key:String, targetLanguage:String = null):String{
			return translation.translate(key, targetLanguage);
		}
	}
}