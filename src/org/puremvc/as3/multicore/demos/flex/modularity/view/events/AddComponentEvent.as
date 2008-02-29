/*
  Modularity - A PureMVC AS3 MultiCore Flex Demo
  Copyright(c) 2008 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
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