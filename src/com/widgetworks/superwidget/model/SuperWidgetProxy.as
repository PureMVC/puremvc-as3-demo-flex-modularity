/*
  Modularity - A PureMVC AS3 MultiCore Flex Demo
  Copyright(c) 2008 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
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