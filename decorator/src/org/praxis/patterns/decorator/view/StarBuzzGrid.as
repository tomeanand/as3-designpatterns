package org.praxis.patterns.decorator.view
{
	import mx.controls.AdvancedDataGrid;
	import mx.events.AdvancedDataGridEvent;
	
	public class StarBuzzGrid extends AdvancedDataGrid
	{
		public function StarBuzzGrid()
		{
			super();
			this.addEventListener(AdvancedDataGridEvent.ITEM_EDIT_END,itemEditendHandler);
		}
		
		protected function itemEditendHandler(event:AdvancedDataGridEvent):void	{
			trace("Items")
		}
	}
}