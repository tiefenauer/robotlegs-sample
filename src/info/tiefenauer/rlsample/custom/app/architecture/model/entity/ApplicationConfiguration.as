/**
 * ApplicationConfiguration.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.custom.app.architecture.model.entity
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.custom.app.architecture.model.entity
{
	import info.tiefenauer.rlsample.core.app.architecture.model.vo.ApplicationConfiguration;
	import info.tiefenauer.rlsample.custom.addon.exclusiveaddon.ExclusiveAddon;
	
	import mx.collections.ArrayCollection;
	
	/**
	 * Customized ApplicationConfiguration 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 * 
	 */
	public class ApplicationConfiguration extends info.tiefenauer.rlsample.core.app.architecture.model.vo.ApplicationConfiguration
	{
		/**
		 * another addon is added: ExclusiveAddon 
		 * @return 
		 */
		override public function get addons():ArrayCollection{
			var addonsCollection:ArrayCollection = super.addons;
			addonsCollection.addItem(new ExclusiveAddon());
			return addonsCollection;
		}
	}
}