package com.widgetworks.superwidget
{
	import com.widgetworks.superwidget.controller.StartupCommand;
	import com.widgetworks.superwidget.view.components.SuperWidget;
	
	import org.puremvc.as3.multicore.interfaces.IFacade;
	import org.puremvc.as3.multicore.patterns.facade.Facade;

	public class ApplicationFacade extends Facade implements IFacade
	{
		
		public static const STARTUP:String = 'startup';

		public function ApplicationFacade( key:String )
		{
			super(key);	
		}
		
        /**
         * Singleton ApplicationFacade Factory Method
         */
        public static function getInstance( key:String ) : ApplicationFacade 
        {
            if ( instanceMap[ key ] == null ) instanceMap[ key ] = new ApplicationFacade( key );
            return instanceMap[ key ] as ApplicationFacade;
        }
        
	    /**
         * Register Commands with the Controller 
         */
        override protected function initializeController( ) : void 
        {
            super.initializeController();            
            registerCommand( STARTUP, StartupCommand );
        }
        
        /**
         * Application startup
         * 
         * @param app a reference to the application component 
         */  
        public function startup( app:SuperWidget ):void
        {
        	sendNotification( STARTUP, app );
        }

			
	}
}