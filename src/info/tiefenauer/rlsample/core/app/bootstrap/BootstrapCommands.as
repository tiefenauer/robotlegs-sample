/**
 * BootstrapCommands.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.app.bootstrap
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.app.bootstrap
{
	import assets.global.$;
	
	import info.tiefenauer.rlsample.core.addon.settingsaddon.architecture.controller.SettingsCommand;
	import info.tiefenauer.rlsample.core.addon.settingsaddon.event.SettingsViewEvent;
	import info.tiefenauer.rlsample.core.app.architecture.controller.PopViewCommand;
	import info.tiefenauer.rlsample.core.app.architecture.controller.PushViewCommand;
	import info.tiefenauer.rlsample.core.app.event.PopViewEvent;
	import info.tiefenauer.rlsample.core.app.event.PushViewEvent;
	
	import org.robotlegs.core.ICommandMap;
	
	/**
	 * Helper class for initialization: Bootstrap all Commands with their Events 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class BootstrapCommands
	{
		public function BootstrapCommands(commandMap:ICommandMap)
		{
			commandMap.mapEvent(PopViewEvent.POP_VIEW, $(PopViewCommand), PopViewEvent);
			commandMap.mapEvent(PushViewEvent.PUSH_VIEW, $(PushViewCommand), PushViewEvent);
			commandMap.mapEvent(SettingsViewEvent.LAUNCH_SETTINGS_COMMAND, $(SettingsCommand));
		}
	}
}