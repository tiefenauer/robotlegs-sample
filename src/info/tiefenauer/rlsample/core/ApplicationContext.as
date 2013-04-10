/**
 * ApplicationContext.as
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
	import flash.display.DisplayObjectContainer;
	
	import assets.global.$;
	
	import avmplus.getQualifiedClassName;
	
	import info.tiefenauer.rlsample.core.app.bootstrap.BootstrapCommands;
	import info.tiefenauer.rlsample.core.app.bootstrap.BootstrapMediators;
	import info.tiefenauer.rlsample.core.app.bootstrap.BootstrapModels;
	import info.tiefenauer.rlsample.core.app.bootstrap.BootstrapValues;
	
	import org.robotlegs.mvcs.Context;
	
	/**
	 * Context for whole application
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class ApplicationContext extends Context
	{
		public function ApplicationContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true){
			super(contextView, autoStartup);
		}
		
		override public function startup():void{
			// bootstrap models
			var bootstrapModel:Class = $(BootstrapModels);
			new bootstrapModel(injector);
			
			// bootstrap mediators
			var bootstrapMediator:Class = $(BootstrapMediators);
			new bootstrapMediator(mediatorMap);
			
			// bootstrap commands
			var bootstrapCommand:Class = $(BootstrapCommands);
			new bootstrapCommand(commandMap);
			
			// bootstrap values
			var bootstrapValue:Class = $(BootstrapValues);
			new bootstrapValue(injector);
			
			mediatorMap.mapView(getQualifiedClassName(contextView), $(ApplicationMediator));
			
			super.startup();
		}
		
	}
}