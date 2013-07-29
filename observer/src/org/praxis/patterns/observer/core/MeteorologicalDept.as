package org.praxis.patterns.observer.core
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import org.praxis.patterns.observer.vo.WeatherVo;

	public class MeteorologicalDept implements Subject
	{
		private var observers:Array;
		private var wvo:WeatherVo;
		private var timer:Timer;
		
		public function MeteorologicalDept()
		{
			observers = new Array();
			this.fetchWeatherData();
		}
		
		public function registerObserver(o:Observer):void
		{
			observers.push(o);
		}
		
		public function removeObserver(o:Observer):void
		{
			for(var i:int; i<observers.length; i++)	{
				if(observers[i] == o)	{
					Observer(observers[i]).update(new WeatherVo(0,0,0));
					observers.splice(i,1);
					break;
				}
			}
		}
		
		public function notifyObservers():void
		{
			for(var ob:String in observers)	{
				Observer(observers[ob]).update(wvo);
			}
		}
		
		private function fetchWeatherData():void	{
			timer = new Timer(2000);
			timer.addEventListener(TimerEvent.TIMER,timerEventHandler);
			timer.start();
		}
		
		private function timerEventHandler(event:TimerEvent):void	{
			wvo = new WeatherVo(Math.random()*60,Math.random()*20,Math.random()*100);
			this.notifyObservers();
		}
	}
}