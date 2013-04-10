/**
 * NextViewMediator.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.addon.mainaddon.architecture.view.mediator
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */
package info.tiefenauer.rlsample.core.addon.mainaddon.architecture.view.mediator
{
	import info.tiefenauer.rlsample.core.app.event.PopViewEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	/**
	 * Mediator for NextView
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class NextViewMediator extends Mediator
	{
		override public function onRegister():void{
			// view events are re-dispatched to application
			addViewListener(PopViewEvent.POP_VIEW, dispatch);
			super.onRegister();
		}
	}
}