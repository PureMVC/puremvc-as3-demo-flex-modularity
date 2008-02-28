package com.widgetworks.superwidget.model
{
	import org.puremvc.as3.multicore.interfaces.IProxy;
	import org.puremvc.as3.multicore.patterns.proxy.Proxy;

	public class SuperWidgetProxy extends Proxy implements IProxy
	{
		public static const NAME:String = 'SuperWidgetProxy';
		
		public function SuperWidgetProxy()
		{
			super(NAME, [1, 2, 3]);
		}
		
	}
}