package org.puremvc.as3.multicore.demos.flex.modularity.interfaces
{
	import flash.display.DisplayObject;
	
	/**
	 * Interface for the WidgetShell
	 * <P>
	 * This is the API that the WidgetShell
	 * exposes to Widgets for communication.
	 * Through this interface alone the IWidget
	 * is able to communicate its wishes to the
	 * application into which it is loaded.</P>
	 * <P>
	 * Since third-parties may develop widgets
	 * to run inside the app, we want to limit
	 * their access to the application and its
	 * resources.</P>
	 * 
	 */
	public interface IWidgetShell
	{
		
		/**
		 * A widget may add a view component to the canvas.
		 * <P>
		 * Though the display object reference is added to
		 * the view hierarchy of the app, it is still managed
		 * by a mediator running inside the widget itself.</P>
		 * 
		 * @param displayObject to add to the canvas
		 */
		function addComponent( component:DisplayObject ):void;
		
		/**
		 * A widget may remove a view component it added to the canvas.
		 * <P>
		 * 
		 * @param displayObject to add to the canvas
		 */
		function removeComponent( component:DisplayObject ):void;
		
		/**
		 * Allow the Widget to write to the status line
		 */
		function setStatusMessage( message:String ):void;
		
		
	}
}