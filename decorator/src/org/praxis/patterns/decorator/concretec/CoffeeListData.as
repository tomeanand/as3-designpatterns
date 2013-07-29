package org.praxis.patterns.decorator.concretec
{
	import org.praxis.patterns.decorator.core.Beverage;
	import org.praxis.patterns.decorator.core.DarkRoast;
	import org.praxis.patterns.decorator.core.Decaf;
	import org.praxis.patterns.decorator.core.Espresso;
	import org.praxis.patterns.decorator.core.HosueBlend;

	public class CoffeeListData
	{
		[Bindable]
		private var _beverage:Beverage;
		public var itemNumber:Number;
		private var _description:String = "";
		private var _cost:Number;
		
		public function CoffeeListData(coffeeItem:String)
		{
			switch(coffeeItem)	{
				case "Espresso": _beverage = new Espresso(); break;
				case "Decaf": _beverage = new Decaf(); break;
				case "Dark Roast": _beverage = new DarkRoast(); break;
				case "House Blend": _beverage = new HosueBlend(); break;
			}
			itemNumber = Math.round(Math.random()*1000);
			this.beverage = _beverage;
		}
		
		public function get beverage():Beverage	{
			return this._beverage;
		}
		public function set beverage(b:Beverage):void	{
			this._beverage = b;
			this.cost = _beverage.cost();
			this.description = _beverage.getDescription();
		}
		
		public function get cost():Number	{return this._cost}
		public function set cost(c:Number):void	{this._cost = c;}
		
		public function get description():String	{return this._description;}
		public function set description(d:String):void	{this._description = d;}
	}
}