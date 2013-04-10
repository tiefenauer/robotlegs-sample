/**
 * Translation.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.app.architecture.model.vo
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.app.architecture.model.vo
{
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * Translation class  
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class Translation extends Actor
	{
		/**
		 * Dummy function to translate a key. 
		 * @param key
		 * @param targetLanguage
		 * @return 
		 */
		public function translate(key:String, targetLanguage:String= null):String{
			return key;
		}
	}
}