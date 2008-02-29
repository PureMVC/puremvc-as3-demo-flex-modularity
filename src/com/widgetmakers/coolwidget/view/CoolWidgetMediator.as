package com.widgetmakers.coolwidget.view
{
	
	import com.widgetmakers.coolwidget.model.CoolWidgetProxy;
	import com.widgetmakers.coolwidget.view.components.CoolWidget;
	
	import flash.events.Event;
	
	import mx.controls.Label;
	
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
			//mx.controls.Alert.show(coolWidgetProxy.getData().toString(),"You prodded the Cool Widget!");
			var label:Label = new Label();
			label.text = 'You prodded the Cool Widget!';
			coolWidget.widgetShell.addComponent( label ); 
		}
		
		protected function get coolWidget():CoolWidget
		{
			return viewComponent as CoolWidget;
		}		
		
		protected var coolWidgetProxy:CoolWidgetProxy;
		
	}
}