/**
 * ExclusiveAddon.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 10, 2013
 * 
 * @package		info.tiefenauer.rlsample.custom.addon.exclusiveaddon
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package info.tiefenauer.rlsample.custom.addon.exclusiveaddon
{
	import assets.global.$;
	
	import info.tiefenauer.rlsample.core.app.architecture.model.vo.Addon;
	import info.tiefenauer.rlsample.custom.addon.exclusiveaddon.architecture.view.phone.ExclusiveView;
	
	public class ExclusiveAddon extends Addon
	{
		public function ExclusiveAddon(){
			super();
		}
		
		override public function get name():String{
			return 'Exclusive';
		}
		override public function get firstViewClass():Class{
			return $(ExclusiveView);
		}
	}
}