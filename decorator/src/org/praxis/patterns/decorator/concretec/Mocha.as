package org.praxis.patterns.decorator.concretec
{
	import org.praxis.patterns.decorator.core.Beverage;
	import org.praxis.patterns.decorator.core.CondimentDecorator;
	
	public class Mocha extends CondimentDecorator
	{
		private var beverage:Beverage;
		
		public function Mocha(beverage:Beverage)
		{
			this.beverage = beverage;
		}
		
		override public function getDescription():String	{
			return beverage.getDescription() + " : Mocha";
		}
		
		override public function cost():Number	{
			return beverage.cost() + 2.5;
		}
	}
}