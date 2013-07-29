package org.praxis.patterns.observer.core
{
	import org.praxis.patterns.observer.vo.WeatherVo;

	public interface Observer
	{
		function update(wvo:WeatherVo):void;
	}
}