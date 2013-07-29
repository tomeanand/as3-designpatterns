package org.praxis.patterns.decorator.core
{
	public class Espresso extends Beverage
	{
		public function Espresso()
		{
			description = "Espresso";
		}
		
		override public function cost():Number	{
			return 4.5;
		}
	}
}