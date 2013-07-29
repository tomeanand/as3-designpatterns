package org.praxis.patterns.decorator.core
{
	public class HosueBlend extends Beverage
	{
		public function HosueBlend()
		{
			description = "House Blend";
		}
		
		override public function cost():Number	{
			return 5;
		}
	}
}