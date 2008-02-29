package com.widgetmakers.coolwidget.view
{
	
	import com.widgetmakers.coolwidget.model.CoolWidgetProxy;
	import com.widgetmakers.coolwidget.view.components.CoolWidget;
	
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
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
			button.addEventListener( MouseEvent.CLICK, onClick );
			coolWidget.widgetShell.addComponent( button );
			
			// and add some status message text 
			var message:String = "Some data from the CoolWidget Model: [ "+coolWidgetProxy.getData().toString()+ " ]";
			coolWidget.widgetShell.setStatusMessage( message );
			 
		}
		
		// Handle clicks to the buttons added to the widget canvas
		protected function onClick( event:MouseEvent ):void
		{
			var component:DisplayObject = event.target as DisplayObject;
			coolWidget.widgetShell.removeComponent( component );
			component.removeEventListener( MouseEvent.CLICK, onClick );
			coolWidget.widgetShell.setStatusMessage( 'Removed CoolWidget-generated display object from Widget Canvas') 
		}
		
		protected function get coolWidget():CoolWidget
		{
			return viewComponent as CoolWidget;
		}		
		
		protected var coolWidgetProxy:CoolWidgetProxy;
		
	}
}