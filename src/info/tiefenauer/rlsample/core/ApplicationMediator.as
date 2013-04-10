/**
 * ApplicationMediator.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core
{
	import spark.components.ViewNavigator;
	
	import assets.global.getViewFormFactor;
	
	import info.tiefenauer.rlsample.core.app.architecture.model.vo.ApplicationConfiguration;
	import info.tiefenauer.rlsample.core.app.architecture.model.interfaces.IAddon;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ApplicationMediator extends Mediator
	{
		[Inject] public var appConfig:ApplicationConfiguration;
		
		override public function onRegister():void{
			super.onRegister();
			var app:RLSample = viewComponent as RLSample;
			
			for each(var addon:IAddon in appConfig.addons){
				var vn:ViewNavigator = new ViewNavigator();
				vn.percentWidth = 100;
				vn.label = addon.name;
				vn.firstView = getViewFormFactor(addon.firstViewClass);
				app.addElement(vn);
			}
		}
	}
}