/**
 * ExclusiveCommand.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 5, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.addon.mainaddon.architecture.controller
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */
package info.tiefenauer.rlsample.custom.addon.exclusiveaddon.architecture.controller
{
	import info.tiefenauer.rlsample.core.app.architecture.controller.SimpleCommand;
	
	/**
	 * Sample command  
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class ExclusiveCommand extends SimpleCommand
	{
		override public function execute():void{
			super.execute();
			trace('ExclusiveCommand is executing...');
			// do something crazy here
		}
	}
}