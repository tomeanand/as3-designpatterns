package org.praxis.patterns.decorator.concretec
{
	import org.praxis.patterns.decorator.core.Beverage;
	import org.praxis.patterns.decorator.core.CondimentDecorator;
	
	public class Whip extends CondimentDecorator
	{
		private var beverage:Beverage;
		
		public function Whip(b:Beverage)
		{
			this.beverage = b;
		}
		
		override public function cost():Number	{
			return this.beverage.cost() + 1;	
		}
		
		override public function getDescription():String	{
			return this.beverage.getDescription() + " : Whip";
		}
	}
}