/**
 * SettingsCommand.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.custom.addon.settingsaddon.architecture.controller
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.custom.addon.settingsaddon.architecture.controller
{
	import info.tiefenauer.rlsample.core.app.architecture.controller.SimpleCommand;
	
	public class SettingsCommand extends SimpleCommand
	{
		override public function execute():void{
			super.execute();
			trace('Customized SettingsCommand is executing...');
			// do something here
		}
	}
}