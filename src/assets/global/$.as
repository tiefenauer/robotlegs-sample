/**
 * $.as
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
	import flash.utils.describeType;

	/**
	 * Helper function to get the correct class definition from String or from Class-Object
	 * - If the class definition is entered as a String, the String is translated into a Class object.
	 * - If the class definition is entered as a Class object, the correct class definition from either
	 *   core package or custom package is returned (custom is master).
	 * - If the class definition is entered as a Class and the class extends spark.components.View, the
	 *   View class in the correct form factor is returned (phone or tablet version) 
	 * @param classDefinitionOrName Class definition as a String or as a Class Object.
	 * @see getClass
	 */
	public function $(classDefinitionOrName:*, bidirectional:Boolean = false):*{
		// translate Class object 
		if (classDefinitionOrName is Class)
			// convert to class in custom/core package
			var targetClass:Class = getClass(classDefinitionOrName, bidirectional);
		
			// check if Class extends spark.components.View
			var typeXML:XML = describeType(targetClass);
			if (typeXML.factory.extendsClass.(@type=='spark.components::View').length() > 0)
				return getViewFormFactor(targetClass);
			
			// class does not extend spark.components.View
			return targetClass;
			
		// convert String to Class
		if (classDefinitionOrName is String)
			return getClassFromString(classDefinitionOrName as String, bidirectional);
		
		// no other types supported!
		return null;
	}
}