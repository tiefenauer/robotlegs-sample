package info.tiefenauer.rlsample.core.addon.mainaddon.architecture.view.mediator
{
	import info.tiefenauer.rlsample.core.addon.mainaddon.event.HomeViewEvent;
	import info.tiefenauer.rlsample.core.app.event.PopViewEvent;
	import info.tiefenauer.rlsample.core.app.event.PushViewEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	/**
	 * Mediator for HomeView 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class HomeViewMediator extends Mediator
	{
		/**
		 * add event listeners 
		 */
		override public function onRegister():void{
			// events are re-dispatched to application
			addViewListener(HomeViewEvent.NEXT, dispatch);
			addViewListener(PopViewEvent.POP_VIEW, dispatch);
			addViewListener(PushViewEvent.PUSH_VIEW, dispatch);
			super.onRegister();
		}
	}
}