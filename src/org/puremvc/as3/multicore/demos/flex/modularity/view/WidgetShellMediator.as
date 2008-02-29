package org.puremvc.as3.multicore.demos.flex.modularity.view
{

	import org.puremvc.as3.multicore.demos.flex.modularity.ApplicationFacade;
	import org.puremvc.as3.multicore.demos.flex.modularity.view.components.WidgetShell;
	import org.puremvc.as3.multicore.demos.flex.modularity.view.events.AddComponentEvent;
	import org.puremvc.as3.multicore.demos.flex.modularity.view.events.RemoveComponentEvent;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;

	public class WidgetShellMediator extends Mediator
	{
		public static const NAME:String = 'WidgetShellMediator';
		
		public function WidgetShellMediator( viewComponent:WidgetShell )
		{
			super( NAME, viewComponent );
			shell.addEventListener( AddComponentEvent.NAME, onAddComponent );
			shell.addEventListener( RemoveComponentEvent.NAME, onRemoveComponent );
		}

		/**
		 * A widget has requested a component be added to the Widget Canvas
		 */
		protected function onAddComponent( event:AddComponentEvent ):void
		{
			sendNotification( ApplicationFacade.ADD_COMP, event.component );
		}	
		
		/**
		 * A widget has requested a component be removed from the Widget Canvas
		 */
		protected function onRemoveComponent( event:RemoveComponentEvent ):void
		{
			sendNotification( ApplicationFacade.REMOVE_COMP, event.component );
		}	
				
		protected function get shell():WidgetShell
		{
			return viewComponent as WidgetShell;
		}
		
	}
}