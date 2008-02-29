/*
  Modularity - A PureMVC AS3 MultiCore Flex Demo
  Copyright(c) 2008 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.multicore.demos.flex.modularity.interfaces
{
	/**
	 * Interface for a Widget.
	 * <P>
	 * This is the API that must be implemented by a
	 * Widget. What we are calling 'widgets' 
	 * in this demo application are Flex Modules, but they 
	 * could also be Flash based apps using the PureMVC 
	 * AS3 MultiCore framework.</P>
	 */
	public interface IWidget
	{
		/**
		 * Get the Widget's key. 
		 * <P> 
		 * This will be a unique string. Generally created
		 * by adding a unique URI for the widget to the 
		 * id property of the IWidget instance.</P>
		 */
		function getWidgetKey( ):String;
		
		/**
		 * Set the Widget's reference to the WidgetShell.
		 * <P>
		 * The Widget communicates with the rest of the
		 * application via the API exposed by the 
		 * WidgetShell.  
		 */
		function setWidgetShell( shell:IWidgetShell ):void;
	}
}