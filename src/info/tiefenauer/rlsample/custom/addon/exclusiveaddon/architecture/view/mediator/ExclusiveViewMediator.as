/**
 * ExclusiveViewMediator.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 5, 2013
 * 
 * @package		info.tiefenauer.rlsample.custom.addon.exclusiveaddon.architecture.view.component
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.custom.addon.exclusiveaddon.architecture.view.mediator
{
	import info.tiefenauer.rlsample.custom.addon.exclusiveaddon.event.ExclusiveEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ExclusiveViewMediator extends Mediator
	{
		override public function onRegister():void{
			addViewListener(ExclusiveEvent.DO_SOMETHING_CRAZY, dispatch);
		}
	}
}