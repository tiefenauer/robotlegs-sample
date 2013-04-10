/**
 * ExclusiveEvent.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 5, 2013
 * 
 * @package		info.tiefenauer.rlsample.custom.addon.exclusiveaddon.event
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.custom.addon.exclusiveaddon.event
{
	import flash.events.Event;
	
	public class ExclusiveEvent extends Event
	{
		public static const NAME:String = 'ExclusiveEvent';
		public static const DO_SOMETHING_CRAZY:String = NAME + 'DoSomethingCrazy';
		
		public function ExclusiveEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event{
			return new ExclusiveEvent(type, bubbles, cancelable);
		}
	}
}