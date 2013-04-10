/**
 * IAddon.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.app.architecture.model.interfaces
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.app.architecture.model.interfaces
{
	/**
	 * Interface for all addons 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public interface IAddon
	{
		function get name():String;
		function get firstViewClass():Class;
	}
}