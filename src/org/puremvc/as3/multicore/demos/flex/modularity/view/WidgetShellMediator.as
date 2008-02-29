package org.puremvc.as3.multicore.demos.flex.modularity.view
{

	import org.puremvc.as3.multicore.patterns.mediator.Mediator;

	import org.puremvc.as3.multicore.demos.flex.modularity.ApplicationFacade;
	import org.puremvc.as3.multicore.demos.flex.modularity.view.components.WidgetShell;
	import org.puremvc.as3.multicore.demos.flex.modularity.view.events.AddComponentEvent;

	public class WidgetShellMediator extends Mediator
	{
		public static const NAME:String = 'WidgetShellMediator';
		
		public function WidgetShellMediator( viewComponent:WidgetShell )
		{
			super( NAME, viewComponent );
			shell.addEventListener( AddComponentEvent.NAME, onAddComponent );
		}

		protected function onAddComponent( event:AddComponentEvent ):void
		{
			sendNotification( ApplicationFacade.ADD_COMP, event.component );
		}	
				
		protected function get shell():WidgetShell
		{
			return viewComponent as WidgetShell;
		}
		
	}
}