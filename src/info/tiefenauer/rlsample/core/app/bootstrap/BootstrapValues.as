/**
 * BootstrapValues.as
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
	import info.tiefenauer.rlsample.core.app.util.Device;
	
	import org.robotlegs.core.IInjector;
	
	/**
	 * Helper class for initialization: Bootstrap all Singletons 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class BootstrapValues
	{
		public function BootstrapValues(injector:IInjector)
		{
			injector.mapSingleton(Device);
		}
	}
}