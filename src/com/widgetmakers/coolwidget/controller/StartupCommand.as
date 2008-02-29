/*
  Modularity - A PureMVC AS3 MultiCore Flex Demo
  Copyright(c) 2008 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.widgetmakers.coolwidget.controller
{
	import com.widgetmakers.coolwidget.model.CoolWidgetProxy;
	import com.widgetmakers.coolwidget.view.CoolWidgetMediator;
	import com.widgetmakers.coolwidget.view.components.CoolWidget;
	
	import org.puremvc.as3.multicore.interfaces.ICommand;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;

	public class StartupCommand extends SimpleCommand implements ICommand
	{
		override public function execute(note:INotification):void
		{
			facade.registerProxy( new CoolWidgetProxy() );

			var coolWidget:CoolWidget = note.getBody() as CoolWidget;
			facade.registerMediator( new CoolWidgetMediator( coolWidget ) );
		}
		
	}
}