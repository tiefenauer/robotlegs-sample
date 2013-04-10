/**
 * BootstrapValues.as
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
	import info.tiefenauer.rlsample.core.app.bootstrap.BootstrapValues;
	
	import org.robotlegs.core.IInjector;
	
	public class BootstrapValues extends info.tiefenauer.rlsample.core.app.bootstrap.BootstrapValues
	{
		public function BootstrapValues(injector:IInjector){
			super(injector);
		}
	}
}