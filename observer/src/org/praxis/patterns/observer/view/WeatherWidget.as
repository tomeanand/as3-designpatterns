package org.praxis.patterns.observer.view
{
	
	import org.praxis.patterns.observer.core.Observer;
	import org.praxis.patterns.observer.view.comp.Widget;
	import org.praxis.patterns.observer.vo.WeatherVo;
	
	public class WeatherWidget extends Widget implements Observer
	{
		public function WeatherWidget()
		{
			super();
		}
		
		
		public function update(wvo:WeatherVo):void
		{
			this.setValues(wvo);
		}
	}
}