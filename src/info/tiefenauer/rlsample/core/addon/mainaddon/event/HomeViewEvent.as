/**
 * HomeViewEvent.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.addon.mainaddon.event
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.addon.mainaddon.event
{
	import flash.events.Event;
	
	/**
	 * Event class for all view-events originating in HomeView  
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 */
	public class HomeViewEvent extends Event
	{
		public static const NAME:String = 'HomeViewEvent';
		//--------------------------------------
		// Event Types
		//--------------------------------------
		public static const NEXT:String = NAME + 'Next';
		
		/**
		 * Constructor 
		 * @param type
		 * @param bubbles
		 * @param cancelable
		 * 
		 */
		public function HomeViewEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
		
		/**
		 * clone()-method must be override to re-dispatch event 
		 * @return new HomeViewEvent with same properties as this event 
		 */
		override public function clone():Event{
			return new HomeViewEvent(type, bubbles, cancelable);
		}
	}
}