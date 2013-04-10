/**
 * getClassFromString.as
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
	import flash.utils.getDefinitionByName;
	
	import assets.global.pattern.corePackagePattern;
	import assets.global.pattern.customPackagePattern;

	/**
	 * Get Class definition from String. This helper function extends the getDefinitionByName()-Function
	 * as it does not require the class to exist. If a String for a class definition in the custom package is
	 * supplied and there is no class definition for the entered String, the String is altered to match 
	 * the same class in the core package and then tried again.
	 * @param sourceClassName String representing the class definition in either core or custom package
	 * @param bidirectional whether the conversion should also be made from custom to core package if a String
	 *        for a class definition in the custom package is entered
	 */
	public function getClassFromString(sourceClassName:String, bidirectional:Boolean = false):Class{
		var targetClass:Class;
		
		try {
			targetClass = getDefinitionByName(sourceClassName) as Class;
		}
		catch (error:ReferenceError){
			switch (true){
				case corePackagePattern.test(sourceClassName):
					sourceClassName = sourceClassName.replace(corePackagePattern, '.custom.');
					targetClass = getClassFromString(sourceClassName);
					break;
				case customPackagePattern.test(sourceClassName) && bidirectional:
					sourceClassName = sourceClassName.replace(customPackagePattern, '.core.');
					targetClass = getClassFromString(sourceClassName);
					break;
				default:
					targetClass = null;
					break;
			}
		}
		return targetClass;
	}
}