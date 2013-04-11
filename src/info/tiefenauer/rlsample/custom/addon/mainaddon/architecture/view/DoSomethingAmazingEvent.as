/**
 * DoSomethingAmazingEvent.as
 *
 * Project: robotlegs-sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.custom.addon.mainaddon.architecture.view
{
	import flash.events.Event;
	
	public class DoSomethingAmazingEvent extends Event
	{
		public static const NAME:String = 'DoSomethingAmazingEvent';
		public static const DO_SOMETHING_AMAZING:String = NAME + 'DoSomethingAmazing';
		
		/**
		 * Constructor 
		 * @param bubbles
		 * @param cancelable
		 */
		public function DoSomethingAmazingEvent(bubbles:Boolean=false, cancelable:Boolean=false){
			super(DO_SOMETHING_AMAZING, bubbles, cancelable);
		}
		
		/**
		 * clone()-method must be override to re-dispatch event 
		 * @return new DoSomethingAmazingEvent with same properties as this event 
		 */
		override public function clone():Event{
			return new DoSomethingAmazingEvent(bubbles, cancelable);
		}
	}
}