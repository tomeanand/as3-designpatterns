package org.praxis.patterns.decorator.concretec
{
	import org.praxis.patterns.decorator.core.Beverage;
	import org.praxis.patterns.decorator.core.CondimentDecorator;
	
	public class Milk extends CondimentDecorator
	{
		private var beverage:Beverage;
		
		public function Milk(b:Beverage)
		{
			beverage = b; 
		}
		
		override public function cost():Number	{
			return beverage.cost() + 2;	
		}
		
		override public function getDescription():String	{
			return beverage.getDescription() + " : Milk";
		}
	}
}