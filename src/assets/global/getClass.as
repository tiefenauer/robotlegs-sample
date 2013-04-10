/**
 * custom.as
 *
 * Project: Robotlegs-Sample
 * Date: Apr 4, 2013
 * 
 * @package		info.tiefenauer.rlsample.core.app.util
 * @copyright	Copyright (c) 2013 Crealogix E-Business AG
 * @link		http://www.crealogix.com
 * @author		Daniel Tiefenauer (daniel.tiefenauer@crealogix.com)
 * @version		1.0.0
 *
 */

package assets.global 
{
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	
	import assets.global.pattern.corePackagePattern;
	import assets.global.pattern.customPackagePattern;

	/**
	 * Get the correct class from either custom package (if available) or core package.
	 * If there is a class with exactly the same name and exactly the same package structure in
	 * the custom package as the one entered as the input argument, the one from the custom package is
	 * used (custom is master). Otherwise, the class from the input is used
	 * @param sourceClass class definition to be converted
	 * @param bidirectional whether the conversion should also be made from custom to core package if a
	 * 		  class definition from custom package is supplied
	 */
	public function getClass(sourceClass:Class, bidirectional:Boolean = false):*{
		var targetClass:Class;
		var sourceclassName:String = getQualifiedClassName(sourceClass);
		var targetclassName:String = '';
		
		switch(true){
			// core class => custom class
			case corePackagePattern.test(sourceclassName):
				targetclassName = sourceclassName.split(corePackagePattern).join('.custom.');
				break;
			// custom class => core class
			case customPackagePattern.test(sourceclassName) && bidirectional:
				targetclassName = sourceclassName.split(customPackagePattern).join('.core.');
				break;
			// use source class as target class
			default:
				targetclassName = sourceclassName;
				break;
		}
		
		// try conversion
		try{
			targetClass = getDefinitionByName(targetclassName) as Class;
		}
		// conversion failed => use source class
		catch(error:ReferenceError){
			targetClass = sourceClass;
		}
		return targetClass;
	}
}