/**
 * SettingsViewMediator.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.addon.settingsaddon.architecture.view.mediator
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.addon.settingsaddon.architecture.view.mediator
{
	import info.tiefenauer.rlsample.core.addon.settingsaddon.event.SettingsViewEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class SettingsViewMediator extends Mediator
	{
		public function SettingsViewMediator()
		{
			super();
		}
		
		override public function onRegister():void{
			addViewListener(SettingsViewEvent.LAUNCH_SETTINGS_COMMAND, dispatch);
			super.onRegister();
		}
	}
}