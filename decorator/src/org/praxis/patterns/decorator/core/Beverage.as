package org.praxis.patterns.decorator.core
{
	public class Beverage
	{
		public var description:String = "Unknown drink";
		public var itemNumber:Number;
		
		public function Beverage()
		{
		}
		
		public function getDescription():String	{
			return description;
		}
		
		public function cost():Number	{
			return 0;
		}
	}
}