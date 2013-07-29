package org.praxis.patterns.observer.core
{
	public interface Subject
	{
		function registerObserver(o:Observer):void;
		function removeObserver(o:Observer):void;
		function notifyObservers():void;
		
	}
}