/*
  Modularity - A PureMVC AS3 MultiCore Flex Demo
  Copyright(c) 2008 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.widgetworks.superwidget
{
	import org.puremvc.as3.multicore.interfaces.IFacade;
	import org.puremvc.as3.multicore.patterns.facade.Facade;

	import com.widgetworks.superwidget.controller.StartupCommand;
	import com.widgetworks.superwidget.view.components.SuperWidget;
	
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