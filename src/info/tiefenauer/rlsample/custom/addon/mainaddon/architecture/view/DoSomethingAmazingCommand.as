/**
 * DoSomethingAmazingCommand.as
 *
 * Project: robotlegs-sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view
{
	import info.tiefenauer.rlsample.core.app.architecture.controller.SimpleCommand;
	
	/**
	 * Sample Command only available in custom package 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 * 
	 */
	public class DoSomethingAmazingCommand extends SimpleCommand
	{
		override public function execute():void{
			super.execute();
			trace('Doing something amazing...');
		}
	}
}