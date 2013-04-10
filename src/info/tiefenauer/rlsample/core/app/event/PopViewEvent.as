/**
 * PopViewEvent.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 4, 2013
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
	 */
	public class PopViewEvent extends Event
	{
		public static const NAME:String = 'PopViewEvent';
		//--------------------------------------
		// Event Types
		//--------------------------------------
		public static const POP_VIEW:String = NAME + 'PopView';
		
		private var _data:Object;
		
		/**
		 * Constructor
		 * @param data
		 * @param bubbles
		 * @param cancelable
		 */
		public function PopViewEvent(data:Object = null, bubbles:Boolean=false, cancelable:Boolean=false){
			super(PopViewEvent.POP_VIEW, bubbles, cancelable);
			_data = data;
		}

		//------------------------------
		// Getter/Setter
		//------------------------------
		public function get data():Object{
			return _data;
		}
		
		/**
		 * clone()-method must be override to re-dispatch event 
		 * @return new HomeViewEvent with same properties as this event 
		 */
		override public function clone():Event{
			return new PopViewEvent(_data, bubbles, cancelable);
		}
	}
}