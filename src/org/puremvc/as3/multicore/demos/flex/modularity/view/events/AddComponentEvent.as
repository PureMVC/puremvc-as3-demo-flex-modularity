package org.puremvc.as3.multicore.demos.flex.modularity.view.events
{
	import flash.events.Event;
	import flash.display.DisplayObject;

	public class AddComponentEvent extends Event
	{
		// The View Component to be added
		public var component:DisplayObject;
		
		// The type of event
		public static const NAME:String = 'addComponent';
			
		// Constructor
		public function AddComponentEvent( component:DisplayObject )
		{
			super( NAME, true );
			this.component = component;	
		}
		
	}
}