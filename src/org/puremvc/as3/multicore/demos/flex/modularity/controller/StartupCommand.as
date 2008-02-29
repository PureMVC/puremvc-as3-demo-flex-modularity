/*
  Modularity - A PureMVC AS3 MultiCore Flex Demo
  Copyright(c) 2008 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.multicore.demos.flex.modularity.controller
{
	import org.puremvc.as3.multicore.interfaces.ICommand;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;

	import org.puremvc.as3.multicore.demos.flex.modularity.view.WidgetCanvasMediator;
	import org.puremvc.as3.multicore.demos.flex.modularity.view.WidgetShellMediator;

	public class StartupCommand extends SimpleCommand implements ICommand
	{
		override public function execute(note:INotification):void
		{
		
		
			var app:Modularity = note.getBody() as Modularity;
			facade.registerMediator( new WidgetShellMediator( app.widgetShell ) );
			facade.registerMediator( new WidgetCanvasMediator( app.widgetCanvas ) );
			
		}
		
	}
}