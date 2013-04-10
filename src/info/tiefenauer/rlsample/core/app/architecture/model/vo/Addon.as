/**
 * Addon.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.app.architecture.model.entity
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.app.architecture.model.vo
{
	import info.tiefenauer.rlsample.core.app.architecture.model.interfaces.IAddon;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * Base Class for all addons 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class Addon extends Actor implements IAddon
	{
		/**
		 * Tab label 
		 * @return 
		 * 
		 */
		public function get name():String {
			return 'Addon';
		}
		
		/**
		 * First View 
		 * @return 
		 */
		public function get firstViewClass():Class{
			return null;
		}
	}
}