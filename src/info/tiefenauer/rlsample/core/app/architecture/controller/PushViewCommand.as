/**
 * PushViewCommand.as
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
	import mx.core.FlexGlobals;
	
	import spark.components.ViewNavigator;
	
	import assets.global.$;
	
	import info.tiefenauer.rlsample.core.app.event.PushViewEvent;
	
	/**
	 * Push View Command pushing the correct view
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class PushViewCommand extends SimpleCommand
	{
		[Inject]
		public var event:PushViewEvent;
		
		/**
		 * Push next view:
		 * - determine active ViewNavigator
		 * - determine View to be pushed depending on form Factor
		 * - push view 
		 */
		override public function execute():void{
			super.execute();
			var vn:ViewNavigator = FlexGlobals.topLevelApplication.tabbedNavigator.selectedNavigator;
			vn.pushView($(event.viewClass));
		}
		
	}
}