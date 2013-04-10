/**
 * PushViewEvent.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.app.event
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.app.event
{
	import flash.events.Event;
	
	/**
	 * Event dispatched if current view should be popped
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 * 
	 */
	public class PushViewEvent extends Event
	{
		public static const NAME:String = 'MobileViewEvent';
		//--------------------------------------
		// Event Types
		//--------------------------------------
		public static const PUSH_VIEW:String = NAME + 'NavigateToView';
		
		// data object holding the view class
		private var _viewClass:Class;
		
		/**
		 * Constructor 
		 * @param data
		 * @param bubbles
		 * @param cancelable
		 */
		public function PushViewEvent(cla:Class, bubbles:Boolean=false, cancelable:Boolean=false){
			super(PushViewEvent.PUSH_VIEW, bubbles, cancelable);
			_viewClass = cla;
		}

		//------------------------------
		// Getter/Setter
		//------------------------------
		public function get viewClass():Class{
			return _viewClass;
		}
		/**
		 * clone()-method must be override to re-dispatch event 
		 * @return new HomeViewEvent with same properties as this event 
		 */
		override public function clone():Event{
			return new PushViewEvent(_viewClass, bubbles, cancelable) as Event;
		}
	}
}