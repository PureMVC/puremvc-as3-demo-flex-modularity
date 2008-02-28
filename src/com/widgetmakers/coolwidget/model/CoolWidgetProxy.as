package com.widgetmakers.coolwidget.model
{
	import org.puremvc.as3.multicore.interfaces.IProxy;
	import org.puremvc.as3.multicore.patterns.proxy.Proxy;

	public class CoolWidgetProxy extends Proxy implements IProxy
	{
		public static const NAME:String = 'CoolWidgetProxy';

		public function CoolWidgetProxy ()
		{
			super(NAME, ['Red', 'Blue', 'Green']);
		}
		
	}
}