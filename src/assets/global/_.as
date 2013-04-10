/**
 * translate.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 4, 2013
 * 
 * @package		assets.functions
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package assets.global
{
	import info.tiefenauer.rlsample.core.app.architecture.model.vo.Translation;

	[Inject] translation:Translation;
	
	/**
	 * Translation function 
	 */
	public function _(key:String):String{
		return key;
	}
}