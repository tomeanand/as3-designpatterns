package org.praxis.patterns.decorator.core
{
	public class CondimentDecorator extends Beverage
	{
		public function CondimentDecorator()
		{
		}
		
		override public function getDescription():String	{
			return description;
		}
	}
}