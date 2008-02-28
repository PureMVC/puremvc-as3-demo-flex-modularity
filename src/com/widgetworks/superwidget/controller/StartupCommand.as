package com.widgetworks.superwidget.controller
{
	import com.widgetworks.superwidget.model.SuperWidgetProxy;
	import com.widgetworks.superwidget.view.SuperWidgetMediator;
	import com.widgetworks.superwidget.view.components.SuperWidget;
	
	import org.puremvc.as3.multicore.interfaces.ICommand;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;

	public class StartupCommand extends SimpleCommand implements ICommand
	{
		override public function execute( note:INotification ):void
		{

			facade.registerProxy( new SuperWidgetProxy() );

			var app:SuperWidget = note.getBody() as SuperWidget;
			facade.registerMediator(new SuperWidgetMediator( app ));
			
		}
		
	}
}