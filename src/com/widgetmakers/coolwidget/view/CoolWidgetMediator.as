package com.widgetmakers.coolwidget.view
{
	
	import com.widgetmakers.coolwidget.model.CoolWidgetProxy;
	import com.widgetmakers.coolwidget.view.components.CoolWidget;
	
	import flash.events.Event;
	
	import mx.controls.Button;
	
	import org.puremvc.as3.multicore.interfaces.IMediator;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;

	public class CoolWidgetMediator extends Mediator implements IMediator
	{
		public static const NAME:String = 'CoolWidgetMediator';
		
		public function CoolWidgetMediator(viewComponent:CoolWidget)
		{
			super( NAME, viewComponent );
			coolWidget.addEventListener( CoolWidget.PROD, onProd );
		}
		
		override public function initializeNotifier(key:String):void
		{
			super.initializeNotifier(key);
			coolWidgetProxy = facade.retrieveProxy( CoolWidgetProxy.NAME ) as CoolWidgetProxy;
		} 

		protected function onProd( event:Event ):void
		{
			// add a button to the canvas
			var button:Button = new Button();
			button.label = 'You prodded the Cool Widget! [ Click to Remove ]';
			coolWidget.widgetShell.addComponent( button );
			
			// and add some status message text 
			var message:String = "Some data from the CoolWidget Model: "+coolWidgetProxy.getData().toString();
			coolWidget.widgetShell.setStatusMessage( message );
			 
		}
		
		protected function get coolWidget():CoolWidget
		{
			return viewComponent as CoolWidget;
		}		
		
		protected var coolWidgetProxy:CoolWidgetProxy;
		
	}
}