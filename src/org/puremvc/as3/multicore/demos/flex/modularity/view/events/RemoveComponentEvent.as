package org.puremvc.as3.multicore.demos.flex.modularity.view.events
{
	import flash.events.Event;
	import flash.display.DisplayObject;

	public class RemoveComponentEvent extends Event
	{
		// The View Component to be removed
		public var component:DisplayObject;
		
		// The type of event
		public static const NAME:String = 'removeComponent';
			
		// Constructor
		public function RemoveComponentEvent( component:DisplayObject )
		{
			super( NAME, true );
			this.component = component;	
		}
		
	}
}