package com.widgetworks.superwidget.view
{
	import com.widgetworks.superwidget.model.SuperWidgetProxy;
	import com.widgetworks.superwidget.view.components.SuperWidget;
	
	import flash.events.Event;
	import mx.controls.Alert;
	
	import org.puremvc.as3.multicore.interfaces.IMediator;
	import org.puremvc.as3.multicore.patterns.mediator.Mediator;

	public class SuperWidgetMediator extends Mediator implements IMediator
	{
		public static const NAME:String = 'SuperWidgetMediator';
		
		public function SuperWidgetMediator(viewComponent:SuperWidget)
		{
			super( NAME, viewComponent );
			superWidget.addEventListener( SuperWidget.POKE, onPoke );
		}
		
		override public function initializeNotifier(key:String):void
		{
			super.initializeNotifier(key);
			superWidgetProxy = facade.retrieveProxy( SuperWidgetProxy.NAME ) as SuperWidgetProxy;
		} 

		protected function onPoke( event:Event ):void
		{
			mx.controls.Alert.show(superWidgetProxy.getData().toString(),"You poked the Super Widget!"); 	
		}
		
		protected function get superWidget():SuperWidget
		{
			return viewComponent as SuperWidget;
		}		
		
		protected var superWidgetProxy:SuperWidgetProxy;
		
	}
}