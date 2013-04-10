/**
 * MainAddon.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 5, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.addon.mainaddon
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.addon.mainaddon
{
	import assets.global.$;
	
	import info.tiefenauer.rlsample.core.addon.mainaddon.architecture.view.phone.HomeView;
	import info.tiefenauer.rlsample.core.app.architecture.model.vo.Addon;

	/**
	 * Sample Addon 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class MainAddon extends Addon
	{
		/**
		 * Tab label
		 * @return 
		 */
		override public function get name():String {
			return 'Main';
		}
		
		/**
		 * First View
		 * @return 
		 */
		override public function get firstViewClass():Class {
			return $(HomeView);
		}
	}
}
