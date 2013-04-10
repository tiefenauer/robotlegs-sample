/**
 * ApplicationConfiguration.as
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
	import info.tiefenauer.rlsample.core.addon.mainaddon.MainAddon;
	import info.tiefenauer.rlsample.core.addon.settingsaddon.SettingsAddon;
	
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * VO for application wide configuration data 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class ApplicationConfiguration extends Actor
	{
		// dummy array to hold sample-addons
		protected var _addons:ArrayCollection = new ArrayCollection();

		//------------------------------
		// Getter/Setter
		//------------------------------
		public function get addons():ArrayCollection{
			_addons.addItem(new MainAddon());
			_addons.addItem(new SettingsAddon());
			return _addons;
		}
	}
}