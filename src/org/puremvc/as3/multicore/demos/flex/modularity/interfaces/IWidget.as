package org.puremvc.as3.multicore.demos.flex.modularity.interfaces
{
	/**
	 * Define an interface for communicating with Widgets.
	 * <P>
	 * This app must define an interface by which we will
	 * communicate with the widget. What we call 'widgets' 
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
	}
}