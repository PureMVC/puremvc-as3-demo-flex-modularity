/*
  Modularity - A PureMVC AS3 MultiCore Flex Demo
  Copyright(c) 2008 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.multicore.demos.flex.modularity.view
{
	import flash.display.DisplayObject;
	
	import org.puremvc.as3.multicore.demos.flex.modularity.ApplicationFacade;
	import org.puremvc.as3.multicore.demos.flex.modularity.view.components.WidgetCanvas;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;

	public class WidgetCanvasMediator extends Mediator
	{
		public static const NAME:String = 'WidgetCanvasMediator';
		
		public function WidgetCanvasMediator( viewComponent:WidgetCanvas )
		{
			super( NAME, viewComponent );	
		}
		
		override public function listNotificationInterests():Array
		{
			return [ ApplicationFacade.ADD_COMP, 
					 ApplicationFacade.REMOVE_COMP
			       ];
		}
		
		override public function handleNotification(note:INotification):void
		{
			switch ( note.getName() )
			{
				case ApplicationFacade.ADD_COMP:
					widgetCanvas.addChild( note.getBody() as DisplayObject );
					break;
					
				case ApplicationFacade.REMOVE_COMP:
					widgetCanvas.removeChild( note.getBody() as DisplayObject );
					break;
			}
		}
		
		protected function get widgetCanvas():WidgetCanvas
		{
			return viewComponent as WidgetCanvas;
		}
	}
}