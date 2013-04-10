/**
 * BootstrapMediators.as
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
	
	import info.tiefenauer.rlsample.core.addon.mainaddon.architecture.view.phone.HomeView;
	import info.tiefenauer.rlsample.core.addon.mainaddon.architecture.view.phone.NextView;
	import info.tiefenauer.rlsample.core.addon.mainaddon.architecture.view.mediator.HomeViewMediator;
	import info.tiefenauer.rlsample.core.addon.mainaddon.architecture.view.mediator.NextViewMediator;
	import info.tiefenauer.rlsample.core.addon.settingsaddon.architecture.view.phone.SettingsView;
	import info.tiefenauer.rlsample.core.addon.settingsaddon.architecture.view.mediator.SettingsViewMediator;
	
	import org.robotlegs.core.IMediatorMap;
	
	/**
	 * Helper class for initialization: Bootstrap all Mediators with their Views 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 * 
	 */
	public class BootstrapMediators
	{
		public function BootstrapMediators(mediatorMap:IMediatorMap)
		{
			mediatorMap.mapView(HomeView, $(HomeViewMediator));
			mediatorMap.mapView(NextView, $(NextViewMediator));
			mediatorMap.mapView(SettingsView, $(SettingsViewMediator));
		}
	}
}