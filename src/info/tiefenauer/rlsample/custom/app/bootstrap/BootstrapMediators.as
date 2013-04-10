/**
 * BootstrapMediators.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
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
	
	import info.tiefenauer.rlsample.core.addon.mainaddon.architecture.view.mediator.HomeViewMediator;
	import info.tiefenauer.rlsample.core.addon.mainaddon.architecture.view.mediator.NextViewMediator;
	import info.tiefenauer.rlsample.core.app.bootstrap.BootstrapMediators;
	import info.tiefenauer.rlsample.custom.addon.exclusiveaddon.architecture.view.mediator.ExclusiveViewMediator;
	import info.tiefenauer.rlsample.custom.addon.exclusiveaddon.architecture.view.phone.ExclusiveView;
	import info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view.phone.HomeView;
	import info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view.phone.NextView;
	import info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view.tablet.HomeView;
	import info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view.tablet.NextView;
	
	import org.robotlegs.core.IMediatorMap;
	
	public class BootstrapMediators extends info.tiefenauer.rlsample.core.app.bootstrap.BootstrapMediators
	{
		public function BootstrapMediators(mediatorMap:IMediatorMap){
			super(mediatorMap);
			mediatorMap.mapView(info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view.phone.HomeView, $(HomeViewMediator));
			mediatorMap.mapView(info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view.tablet.HomeView, $(HomeViewMediator));
			mediatorMap.mapView(info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view.phone.NextView, $(NextViewMediator));
			mediatorMap.mapView(info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view.tablet.NextView, $(NextViewMediator));
			mediatorMap.mapView(ExclusiveView, $(ExclusiveViewMediator));
		}
	}
}