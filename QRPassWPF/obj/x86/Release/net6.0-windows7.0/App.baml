   M S B A M L   `   `   `  ???? O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem   	QRPassWPF   QRPassWPF.App   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     6sys&clr-namespace:System;assembly=mscorlib     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       ?? 	Resources   	  SFPro ?? Property ?? Value ?? 
TargetType ?? Triggers :? RoutedEvent ?? TargetProperty g? 
SpeedRatio t? From	 u? Left

 u? Top u? Bottom u? Right	 t? To  showPass  DataGridRow.Height  DataGrid.BorderThickness   ColumnHeader.BorderThickness  DataGridRow.BorderThickness  DataGrid.BorderBrush ?? Color  ColumnHeader.Background  ColumnHeader.BorderBrush 	 DataGridRow.BorderBrush !
 DataGridRow.Normal.Background ! DataGridRow.Normal.Foreground $  DataGridRow.MouseOver.Background $  DataGridRow.MouseOver.Foreground # DataGridRow.Selected.Background # DataGridRow.Selected.Foreground&   System.Windows.Controls.DataGrid=  7System.Windows.Controls.Primitives.DataGridColumnHeader ?? 
TargetType ??Name J? SnapsToDevicePixels ? UseLayoutRounding)  #System.Windows.Controls.DataGridRow?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid ? ColumnDefinitions ? RowDefinitions?  9System.Windows.Controls.Primitives.DataGridCellsPresenter   
ItemsPanel:  4System.Windows.Controls.Primitives.DataGridRowHeader$   SelectiveScrollingOrientation7  1System.Windows.Controls.DataGridHeadersVisibility
   Row ?? ConverterParameter!   HeadersVisibilityConverter ?? 	Converter ?? RelativeSource ?? AncestorType ?? Triggers P? Property P? Value*  $System.Windows.Controls.DataGridCell??%?  &	        '>? 2     &	 ?     &	 ?    &	     &	 &    &	 K    &	 p    &	 ?    &	 ?    &		 ?    &	
 ?    &	 ?    &	 ?    &	 ?    &	     &	     '  2    7  7  7  7  '  ?    7  7  '      7 
 7  7  7 	 7  7  7  7  7  '  "
    '?? ?
    ?? .???  ? ??$ /Fonts/#SF Pro Display)??? " >? :? $ FrameworkElement.Loaded??.[??? .???? $ Margin?$ 1Q?.??t?  u? $	 0Q?$
 0Q?$ -1025Q?$ 0Q? u? $	 0Q?$
 0Q?$ 0Q?$ 0Q?B? $????M15 12c0 1.654-1.346 3-3 3s-3-1.346-3-3 1.346-3 3-3 3 1.346 3 3zm9-.449s-4.252 8.449-11.985 8.449c-7.18 0-12.015-8.449-12.015-8.449s4.446-7.551 12.015-7.551c7.694 0 11.985 7.551 11.985 7.551zm-7 .449c0-2.757-2.243-5-5-5s-5 2.243-5 5 2.243 5 5 5 5-2.243 5-5zC?X?30Q?u? $ 1Q?$	 1Q?$ 1Q?$
 1Q?u? $ 0Q?$	 0Q?$ 1Q?$
 0Q?u? $ 0Q?$	 0Q?$ 0Q?$
 1Q??? $ #E9ECF1???? $ Transparent???? $ #E9ECF1???? $ #E9ECF1???? $ #FFFFFF???? $ #000000???? $ #F6F7FB???? $ #000000???? $ #F6F7FB???? $ #000000???? "  .???  ? ??8   ??  ?@ HeadersVisibility$ Column=???  ? ??8  ??  ? ??8  ??   ?@ HorizontalGridLinesBrush ?	#00E9ECF1??  ?@ VerticalGridLinesBrush ?	#00E9ECF1??  ?@?UseLayoutRounding$
 True????  ?@J?SnapsToDevicePixels$
 True????  ?@ AutoGenerateColumns$ False????  ?@ CanUserAddRows$ False????  ?@ CanUserReorderColumns$ False????  ?@ CanUserResizeColumns$ False????  ?@ CanUserResizeRows$ False????  ?@ CanUserSortColumns$
 True????  ?@ GridLinesVisibility$
 None=???  ?@ 
IsReadOnly$
 True????  ?@ 	RowHeight8  ??  ?@ SelectionMode$ Single=??? "  .???  ? ?? ?#000000??  ? ??$ 20(???  ?@?Cursor$
 Hand????  ? ??$ 28????  ? ?? ?? "  .R??? $ BackgroundBorder??$
??Auto??$
??-1,0q?8??  8?? $
 True??$
 True??._??? $	??5,0q?$??Center=?$??Center=??? "  .???  ? ??8   ??  ? ??8  ??  ?@J?SnapsToDevicePixels$
 true????  ?@?UseLayoutRounding$
 True????  ?@=?ErrorTemplate Z? ??  ? ??8  ??  ? ??8  ??  ? ??$ 16(???  ?@ ValidationErrorTemplate ?? .R??? $??0,0,0,0q?$??Center=?
???  ??$??!????  ? ?? ?? "  .R??? $ 
DGR_Border??$??0,0,0,-1q?#??z??#??z??#??z??$
 True??$
 True??._?   ?? $
??Auto ??? $??* ? ?? $??* ?8?? ?? $
??Auto ?.+?  $??1??#??z # z   $??2??$ Vertical=?y??? *HeadersVisibility+# Z # Z  ?? "   P?  ?@J?IsMouseOver$
 True??. ??? 8   ? ???? 8   ? ??P?  ?@ 
IsSelected$
 True??. ??? 8   ? ???? 8   ? ???? "  .???  ? ?? ?? "  .R??? $ Bg??
?????? $
 True??._??? $??Center=?$??Center=? P?  ?@ 
IsSelected$
 True??. ???  ? ??
 ???? ??  ? ?? ?#000000?? " ??.???  ? ??$ 0q???  ? ??$
 Left=???  ? ??$ 10,10,10,10q???  ? ?? ?	#FF0A0101??  ? ??$	 Top=???  ? ??$ 0,0,50,0q???  ?@?FocusVisualStyle Z? ??  ? ??$ Disabled=?