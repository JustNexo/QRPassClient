   M S B A M L   `   `   `  ????O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5       	QRPassWPF   QRPassWPF.App   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      6sys&clr-namespace:System;assembly=mscorlib     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        ?? 	Resources  5       	  SFPro ?? Property ?? Value ?? 
TargetType ?? Triggers :? RoutedEvent ?? TargetProperty g? 
SpeedRatio t? From	 u? Left

 u? Top u? Bottom u? Right	 t? To  showPass  DataGridRow.Height  DataGrid.BorderThickness   ColumnHeader.BorderThickness  DataGridRow.BorderThickness  DataGrid.BorderBrush ?? Color  ColumnHeader.Background  ColumnHeader.BorderBrush 	 DataGridRow.BorderBrush !
 DataGridRow.Normal.Background ! DataGridRow.Normal.Foreground $  DataGridRow.MouseOver.Background $  DataGridRow.MouseOver.Foreground # DataGridRow.Selected.Background # DataGridRow.Selected.Foreground&   System.Windows.Controls.DataGrid=  7System.Windows.Controls.Primitives.DataGridColumnHeader ?? 
TargetType ??Name J? SnapsToDevicePixels ? UseLayoutRounding)  #System.Windows.Controls.DataGridRow?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid ? ColumnDefinitions ? RowDefinitions?  9System.Windows.Controls.Primitives.DataGridCellsPresenter   
ItemsPanel:  4System.Windows.Controls.Primitives.DataGridRowHeader$   SelectiveScrollingOrientation7  1System.Windows.Controls.DataGridHeadersVisibility
   Row ?? ConverterParameter!   HeadersVisibilityConverter ?? 	Converter ?? RelativeSource ?? AncestorType ?? Triggers P? Property P? Value*  $System.Windows.Controls.DataGridCell??%j  &	        '>? [     &	 ?    &	     &	 -    &	 o    &	 ?    &	 ?    &	     &	 9    &		 Z    &	
 {    &	 ?    &	 ?    &	 ?    &	 ?    &	      '  A    7  7  7  7  '   	    7  7  '  ?
    7 
 7  7  7 	 7  7  7  7  7  '  [    '?? ?    ?? 5   
   .?5	      ??  ? ??$ /Fonts/#SF Pro Display)?5
      66   5      ?? 5   
   " >?6    5      :? 5      $ FrameworkElement.Loaded??6   .[?5      ?? .??5      ?? $ Margin?6%   $ 1Q?6H   .??5      t?  5   "   u? 5   &   $	 0Q?5   )   $
 0Q?5   )   $ -1025Q?5   )   $ 0Q?5   )    5   "   u? 5   &   $	 0Q?5   )   $
 0Q?5   )   $ 0Q?5   )   $ 0Q?5    )   5"      5#      5$      5%      5'      B? 5)   
   $????M15 12c0 1.654-1.346 3-3 3s-3-1.346-3-3 1.346-3 3-3 3 1.346 3 3zm9-.449s-4.252 8.449-11.985 8.449c-7.18 0-12.015-8.449-12.015-8.449s4.446-7.551 12.015-7.551c7.694 0 11.985 7.551 11.985 7.551zm-7 .449c0-2.757-2.243-5-5-5s-5 2.243-5 5 2.243 5 5 5 5-2.243 5-5zC?5*      X?5-   
   30Q?64   u? 50   
   $ 1Q?65   $	 1Q?6@   $ 1Q?6I   $
 1Q?6S   u? 52   
   $ 0Q?69   $	 0Q?6D   $ 1Q?6M   $
 0Q?6W   u? 54   
   $ 0Q?68   $	 0Q?6C   $ 0Q?6L   $
 1Q?6V   ?? 56   
   $ #E9ECF1??67   ?? 58   
   $ Transparent??6:   ?? 5:   
   $ #E9ECF1??6;   ?? 5<   
   $ #E9ECF1??6:   ?? 5>   
   $ #FFFFFF??6@   ?? 5@   
   $ #000000??6@   ?? 5B   
   $ #F6F7FB??6C   ?? 5D   
   $ #000000??6C   ?? 5F   
   $ #F6F7FB??6B   ?? 5H   
   $ #000000??6B   ?? 5J   
   "  6   .?5K      ??  ? ??8   60   ?? 5L       ?@ HeadersVisibility$ Column=?62   ?? 5M       ? ??8  6+   ?? 5N       ? ??8  6,   ?? 5O        ?@ HorizontalGridLinesBrush ?	#00E9ECF169   ?? 5P       ?@ VerticalGridLinesBrush ?	#00E9ECF167   ?? 5Q       ?@?UseLayoutRounding$
 True??62   ?? 5R       ?@J?SnapsToDevicePixels$
 True??64   ?? 5S       ?@ AutoGenerateColumns$ False??64   ?? 5T       ?@ CanUserAddRows$ False??6/   ?? 5U       ?@ CanUserReorderColumns$ False??66   ?? 5V       ?@ CanUserResizeColumns$ False??65   ?? 5W       ?@ CanUserResizeRows$ False??62   ?? 5X       ?@ CanUserSortColumns$
 True??63   ?? 5Y       ?@ GridLinesVisibility$
 None=?64   ?? 5Z       ?@ 
IsReadOnly$
 True??6+   ?? 5[       ?@ 	RowHeight8  6*   ?? 5\       ?@ SelectionMode$ Single=?6.   5]      ?? 5_   
   "  6   .?5a      ??  ? ?? ?#0000006+   ?? 5b       ? ??$ 20(?6)   ?? 5c       ?@?Cursor$
 Hand??6'   ?? 5d       ? ??$ 28??6'   ?? 5e       ? ?? 5f      ?? 5g      "  6&   .R?5h      ?? $ BackgroundBorder??6!   $
??Auto??6;   $
??-1,0q?6H   8??  8?? $
 True??5k      $
 True??68   ._?5l      ?? $	??5,0q?6/   $??Center=?6<   $??Center=?6Y   5m      5n      5p      5q      ?? 5s   
   "  6   .?5t      ??  ? ??8   6+   ?? 5u       ? ??8  6+   ?? 5v       ?@J?SnapsToDevicePixels$
 true??64   ?? 5w       ?@?UseLayoutRounding$
 True??62   ?? 5x       ?@=?ErrorTemplate 69   Z? ?? 5y       ? ??8  60   ?? 5z       ? ??8  6,   ?? 5{       ? ??$ 16(?6)   ?? 5|       ?@ ValidationErrorTemplate 5}      ?? 5~      .R?5      ?? $??0,0,0,0q?6$   $??Center=?65   
???  ??$??!??6a   5?      5?      ?? 5?       ? ?? 5?      ?? 5?      "  6&   .R?5?      ?? $ 
DGR_Border??6!   $??0,0,0,-1q?65   #??z??5?      #??z??5?      #??z??5?      $
 True??5?      $
 True??68   ._?5?         5?   "   ?? 5?   &   $
??Auto ?67   ?? 5?   &   $??* ?67    5?   "   ?? 5?   &   $??* ?64   8?? 6?   ?? 5?   &   $
??Auto ?64   .+?5?   "     $??1??69   #??z 5?   5   # z 5?   5     5?   "   $??2??64   $ Vertical=?6E   y?5?   0   ?? *HeadersVisibility+# Z # Z  ?? "  5?      5?       5?      P? 5?       ?@J?IsMouseOver$
 True??6=   . ?5?   "   ?? 8   ? ??6?   ?? 5?   "   8   ? ??6?   5?      P? 5?       ?@ 
IsSelected$
 True??6<   . ?5?   "   ?? 8   ? ??6?   ?? 5?   "   8   ? ??6?   5?      5?      5?      5?      ?? 5?   
   "  6   .?5?      ??  ? ?? 5?      ?? 5?      "  6&   .R?5?      ?? $ Bg??6!   
?????? $
 True??6F   ._?5?      ?? $??Center=?6/   $??Center=?6L   5?      5?      5?       5?      P? 5?       ?@ 
IsSelected$
 True??60   . ?5?      ??  ? ??
 ???? 63   ?? 5?       ? ?? ?#00000063   5?      5?      ?? 5?   
   " ??6   .?5?      ??  ? ??$ 0q?60   ?? 5?       ? ??$
 Left=?64   ?? 5?       ? ??$ 10,10,10,10q?6'   ?? 5?       ? ?? ?	#FF0A01016+   ?? 5?       ? ??$	 Top=?62   ?? 5?       ? ??$ 0,0,50,0q?6(   ?? 5?       ?@?FocusVisualStyle 61   Z? ?? 5?       ? ??$ Disabled=?6K   5?      5?      5?      