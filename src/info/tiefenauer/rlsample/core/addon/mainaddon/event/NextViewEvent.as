/**
 * NextViewEvent.as
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
	 * Event class for all view-events originating in NextView 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 * 
	 */
	public class NextViewEvent extends Event
	{
		public static const NAME:String = 'NextViewEvent';
		//--------------------------------------
		// Event Types
		//--------------------------------------
		
		/**
		 * Constructor 
		 * @param type
		 * @param bubbles
		 * @param cancelable
		 * 
		 */
		public function NextViewEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
		
		/**
		 * clone()-method must be override to re-dispatch event 
		 * @return new NextViewEvent with same properties as this event 
		 */
		override public function clone():Event{
			return new NextViewEvent(type, bubbles, cancelable);
		}
	}
}