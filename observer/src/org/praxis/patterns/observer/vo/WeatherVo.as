package org.praxis.patterns.observer.vo
{
	public class WeatherVo
	{
		public var temperatrue:Number;
		public var humidity:Number;
		public var pressure:Number;
		
		public function WeatherVo(temperatrue:Number = 0,
		humidity:Number = 0,
		pressure:Number = 0)
		{
			this.temperatrue = temperatrue;
			this.humidity = humidity;
			this.pressure = pressure;
		}
	}
}