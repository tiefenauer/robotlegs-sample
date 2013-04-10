/**
 * BootstrapModels.as
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
	
	import info.tiefenauer.rlsample.core.app.architecture.model.vo.ApplicationConfiguration;
	import info.tiefenauer.rlsample.core.app.architecture.model.vo.Translation;
	
	import org.robotlegs.core.IInjector;
	
	/**
	 * Helper class for initialization: Bootstrap all Model Classes 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class BootstrapModels
	{
		public function BootstrapModels(injector:IInjector)
		{
			injector.mapSingletonOf(ApplicationConfiguration, $(ApplicationConfiguration));
			injector.mapSingletonOf(Translation, $(Translation));
		}
	}
}