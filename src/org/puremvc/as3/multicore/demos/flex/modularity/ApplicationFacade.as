package org.puremvc.as3.multicore.demos.flex.modularity
{

	import org.puremvc.as3.multicore.interfaces.IFacade;
	import org.puremvc.as3.multicore.patterns.facade.Facade;
	import org.puremvc.as3.multicore.demos.flex.modularity.controller.StartupCommand;
	
	public class ApplicationFacade extends Facade implements IFacade
	{
		
		// Notification constants 
		public static const STARTUP:String = 'startup';
		public static const ADD_COMP:String = 'addComp';
		public static const REMOVE_COMP:String = 'removeComp';

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
        public function startup( app:Modularity ):void
        {
        	sendNotification( STARTUP, app );
        }

			
	}
}