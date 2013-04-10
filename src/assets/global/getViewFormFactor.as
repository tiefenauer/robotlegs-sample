/**
 * formFactor.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 4, 2013
 * 
 * @package		assets.global
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package assets.global
{
	import flash.utils.getQualifiedClassName;
	
	import assets.global.pattern.phoneViewPattern;
	import assets.global.pattern.tabletViewPattern;
	
	import info.tiefenauer.rlsample.core.app.util.Device;
	
	/**
	 * Get the correct form factor for a View Class (phone or tablet version)
	 * @param sourceClass Class object inheriting from spark.components.View
	 */
	public function getViewFormFactor(sourceClass:Class):Class{
		var targetClass:Class;
		var sourceClassName:String = getQualifiedClassName(sourceClass);
		var targetClassName:String = '';
		
		// replace name to match form factor
		switch (true){
			// trying to push phone view on tablet
			case phoneViewPattern.test(sourceClassName) && Device.IS_TABLET:
				targetClassName = sourceClassName.replace(phoneViewPattern, tabletViewPattern.source);
				break;
			// trying to push tablet view on phone
			case tabletViewPattern.test(sourceClassName) && Device.IS_PHONE:
				targetClassName = sourceClassName.replace(tabletViewPattern, phoneViewPattern.source);
				break;
			// trying to push phone view on phone or tablet view on tablet (this is OK)
			default:
				targetClassName = sourceClassName;
				break;
		}
		
		// get class for form factor
		targetClass = getClassFromString(targetClassName);
		if (targetClass)
			return targetClass;
		return sourceClass;
	}
}