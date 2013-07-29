package org.praxis.patterns.observer.view.comp
{
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.praxis.patterns.observer.vo.WeatherVo;
	
	import spark.components.Button;
	import spark.components.Panel;
	import spark.components.TextInput;
	import spark.components.supportClasses.TextBase;
	import spark.layouts.VerticalLayout;
	
	public class Widget extends Panel
	{
		private var tempTxt:TextInput;
		private var humdTxt:TextInput;
		private var presTxt:TextInput;
		public var doRegister:String;
		
		private var registerBtn:spark.components.Button;
		
		public function Widget()
		{
			super();
			
		}
		
		protected function addLabels():void	{
			tempTxt = new TextInput();
			humdTxt = new TextInput();
			presTxt = new TextInput();
			registerBtn = new Button();
			
			registerBtn.label = "Unregister";
			tempTxt.text = humdTxt.text = presTxt.text = "No values received";
			tempTxt.editable = humdTxt.editable = presTxt.editable = false;
			tempTxt.selectable = humdTxt.selectable = presTxt.selectable = false;
			tempTxt.setStyle("borderColor",0xFFFFFF);
			humdTxt.setStyle("borderColor",0xFFFFFF);
			presTxt.setStyle("borderColor",0xFFFFFF);
			
			this.setStyle("backgroundColor",(Math.floor(Math.random() * 255)+""+Math.floor(Math.random() * 255)+""+Math.floor(Math.random() * 255)));
			
			registerBtn.addEventListener(MouseEvent.CLICK,registerEventHandler);
			
			this.addElement(registerBtn);
			this.addElement(tempTxt);
			this.addElement(humdTxt);
			this.addElement(presTxt);
		} 
		protected function registerEventHandler(event:MouseEvent = null):void	{
			if(event.currentTarget.label == "Unregister")	{
				event.currentTarget.label = "Register";
			}
			else	{
				event.currentTarget.label = "Unregister";
			}
			this.doRegister = event.currentTarget.label;
			this.dispatchEvent(new Event("Register"));
			
		}
		override protected function createChildren():void	{
			super.createChildren();
			addLabels();
			this.layout = new VerticalLayout();;
		}

		
		public function setValues(wvo:WeatherVo):void	{
			if(wvo.temperatrue == 0)	{
				tempTxt.text = humdTxt.text = presTxt.text = "";
				return;
			}
			this.tempTxt.text = "Temperature : " +wvo.temperatrue.toString();
			this.humdTxt.text = "Humidity : "+wvo.humidity.toString();
			this.presTxt.text = "Pressure : "+wvo.pressure.toString();
			
		}
		 
	}
}