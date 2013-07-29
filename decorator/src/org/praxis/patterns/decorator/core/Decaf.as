package org.praxis.patterns.decorator.core
{
	public class Decaf extends Beverage
	{
		public function Decaf()
		{
			description = "Decaf";
		}
		
		override public function cost():Number	{
			return 3;
		}
	}
}