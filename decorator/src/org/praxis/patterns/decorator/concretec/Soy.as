package org.praxis.patterns.decorator.concretec
{
	import org.praxis.patterns.decorator.core.Beverage;
	import org.praxis.patterns.decorator.core.CondimentDecorator;
	
	public class Soy extends CondimentDecorator
	{
		private var beverage:Beverage;
		
		public function Soy(beverage:Beverage)
		{
			this.beverage = beverage;
		}
		
		override public function getDescription():String	{
			return beverage.getDescription() + " : Soy" 
		}
		
		override public function cost():Number	{
			return beverage.cost() + 1.5;
		}
		
	}
}