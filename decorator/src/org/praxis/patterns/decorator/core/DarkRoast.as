package org.praxis.patterns.decorator.core
{
	public class DarkRoast extends Beverage
	{
		public function DarkRoast()
		{
			description = "Dark Roast"
		}
		
		override public function cost():Number	{
			return 6;
		}
		
	}
}