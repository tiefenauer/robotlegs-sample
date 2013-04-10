/**
 * SimpleCommand.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.app.architecture.controller
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.app.architecture.controller
{
	import flash.utils.getQualifiedClassName;
	
	import org.robotlegs.mvcs.Command;
	
	/**
	 * Base class for all commands containing functionality shared across all Commands 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class SimpleCommand extends Command
	{
		override public function execute():void{
			trace('executing ' + getQualifiedClassName(this) + ' ...');
		}
	}
}