/**
 * BootstrapCommands.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 5, 2013
 * 
 * @package		info.tiefenauer.rlsample.custom.app.bootstrap
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.custom.app.bootstrap
{
	import assets.global.$;
	
	import info.tiefenauer.rlsample.core.app.bootstrap.BootstrapCommands;
	import info.tiefenauer.rlsample.custom.addon.exclusiveaddon.architecture.controller.ExclusiveCommand;
	import info.tiefenauer.rlsample.custom.addon.exclusiveaddon.event.ExclusiveEvent;
	import info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view.DoSomethingAmazingCommand;
	import info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view.DoSomethingAmazingEvent;
	
	import org.robotlegs.core.ICommandMap;
	
	public class BootstrapCommands extends info.tiefenauer.rlsample.core.app.bootstrap.BootstrapCommands
	{
		public function BootstrapCommands(commandMap:ICommandMap){
			super(commandMap);
			commandMap.mapEvent(ExclusiveEvent.DO_SOMETHING_CRAZY, $(ExclusiveCommand), ExclusiveEvent);
			commandMap.mapEvent(DoSomethingAmazingEvent.DO_SOMETHING_AMAZING, $(DoSomethingAmazingCommand), DoSomethingAmazingEvent);
		}
	}
}