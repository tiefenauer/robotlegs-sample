/**
 * SettingsViewEvent.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.addon.settingsaddon.event
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.core.addon.settingsaddon.event
{
	import flash.events.Event;
	
	/**
	 * Event class for all view-events originating in SettingsView 
	 * @author Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
	 * 
	 */
	public class SettingsViewEvent extends Event
	{
		public static const NAME:String = 'SettingsViewEvent';
		//--------------------------------------
		// Event Types
		//--------------------------------------
		public static const LAUNCH_SETTINGS_COMMAND:String = NAME + 'LaunchSettingsCommand';
		
		/**
		 * Constructor 
		 * @param type
		 * @param bubbles
		 * @param cancelable
		 * 
		 */
		public function SettingsViewEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
		
		/**
		 * clone()-method must be override to re-dispatch event 
		 * @return new SettingsViewEvent with same properties as this event 
		 */
		override public function clone():Event{
			return new SettingsViewEvent(type, bubbles, cancelable);
		}
	}
}