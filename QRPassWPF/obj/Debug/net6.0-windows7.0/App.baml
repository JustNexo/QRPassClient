   M S B A M L   `   `   `  ????O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      D @QRPassWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:QRPassWPF.ViewModelQRPassWPF.ViewModel 5      ?$clr-namespace:QRPassWPF.UserControlsQRPassWPF.UserControls 5      1clr-namespace:QRPassWPF.ModelQRPassWPF.Model 5         QRPassWPF.App   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      6sys&clr-namespace:System;assembly=mscorlib     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      7	viewModel!clr-namespace:QRPassWPF.ViewModel     5      6views$clr-namespace:QRPassWPF.UserControls     5      /localclr-namespace:QRPassWPF.Model     5        ?? 	Resources  5	       	  SFPro ?? Property ?? Value ?? 
TargetType ?? Triggers :? RoutedEvent ?? TargetProperty g? 
SpeedRatio t? From	 u? Left

 u? Top u? Bottom u? Right	 t? To  showPass  DataGridRow.Height  DataGrid.BorderThickness   ColumnHeader.BorderThickness  DataGridRow.BorderThickness  DataGrid.BorderBrush ?? Color  ColumnHeader.Background  ColumnHeader.BorderBrush 	 DataGridRow.BorderBrush !
 DataGridRow.Normal.Background ! DataGridRow.Normal.Foreground $  DataGridRow.MouseOver.Background $  DataGridRow.MouseOver.Foreground # DataGridRow.Selected.Background # DataGridRow.Selected.Foreground&   System.Windows.Controls.DataGrid=  7System.Windows.Controls.Primitives.DataGridColumnHeader ?? 
TargetType ??Name J? SnapsToDevicePixels ? UseLayoutRounding)  #System.Windows.Controls.DataGridRow?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid ? ColumnDefinitions ? RowDefinitions?  9System.Windows.Controls.Primitives.DataGridCellsPresenter   
ItemsPanel:  4System.Windows.Controls.Primitives.DataGridRowHeader$   SelectiveScrollingOrientation7  1System.Windows.Controls.DataGridHeadersVisibility
   Row ?? ConverterParameter!   HeadersVisibilityConverter ?? 	Converter ?? RelativeSource ?? AncestorType ?? Triggers P? Property P? Value*  $System.Windows.Controls.DataGridCell  placeHolder  ?? BasedOn! ??Name" K? ZIndex# ?? Path$ ?? Mode% ?? UpdateSourceTrigger
& ? Tag' ?? Binding( ?? Source%	  System.Windows.Markup.Reference) ?? Value??%?  &	        '>? V     &	 ,    &	 M    &	 g    &	 ?    &	 ?    &	 -    &	 N    &	 s    &		 ?    &	
 ?    &	 ?    &	 ?    &	     &	 9    &	 Z    '  {    7  7  7  7  '  Z	    7  7  '  2    7 
 7  7  7 	 7  7  7  7  7  '  ?    '??     &	 ?    7???? 5
   
   .?5      ??  ? ??$ /Fonts/#SF Pro Display)?5      5      ?? 5   
   " >?6   .?5      ??  ? ??$ /Fonts/#SF Pro Display)?5       5      :? 5      $ FrameworkElement.Loaded??6   .[?5      ?? .??5      ?? $ Margin?6%   $ 1Q?6H   .??5      t?  5   "   u? 5   &   $	 0Q?5   )   $
 0Q?5   )   $ -1025Q?5   )   $ 0Q?5   )    5   "   u? 5    &   $	 0Q?5!   )   $
 0Q?5"   )   $ 0Q?5#   )   $ 0Q?5$   )   5&      5'      5(      5)      5+      B? 5-   
   $????M15 12c0 1.654-1.346 3-3 3s-3-1.346-3-3 1.346-3 3-3 3 1.346 3 3zm9-.449s-4.252 8.449-11.985 8.449c-7.18 0-12.015-8.449-12.015-8.449s4.446-7.551 12.015-7.551c7.694 0 11.985 7.551 11.985 7.551zm-7 .449c0-2.757-2.243-5-5-5s-5 2.243-5 5 2.243 5 5 5 5-2.243 5-5zC?5.      X?51   
   30Q?64   u? 54   
   $ 1Q?65   $	 1Q?6@   $ 1Q?6I   $
 1Q?6S   u? 56   
   $ 0Q?69   $	 0Q?6D   $ 1Q?6M   $
 0Q?6W   u? 58   
   $ 0Q?68   $	 0Q?6C   $ 0Q?6L   $
 1Q?6V   ?? 5:   
   $ #E9ECF1??67   ?? 5<   
   $ Transparent??6:   ?? 5>   
   $ #E9ECF1??6;   ?? 5@   
   $ #E9ECF1??6:   ?? 5B   
   $ #FFFFFF??6@   ?? 5D   
   $ #000000??6@   ?? 5F   
   $ #F6F7FB??6C   ?? 5H   
   $ #000000??6C   ?? 5J   
   $ #F6F7FB??6B   ?? 5L   
   $ #000000??6B   ?? 5N   
   "  6   .?5O      ??  ? ??8   60   ?? 5P       ?@ HeadersVisibility$ Column=?62   ?? 5Q       ? ??8  6+   ?? 5R       ? ??8  6,   ?? 5S        ?@ HorizontalGridLinesBrush ?	#00E9ECF169   ?? 5T       ?@ VerticalGridLinesBrush ?	#00E9ECF167   ?? 5U       ?@?UseLayoutRounding$
 True??62   ?? 5V       ?@J?SnapsToDevicePixels$
 True??64   ?? 5W       ?@ AutoGenerateColumns$ False??64   ?? 5X       ?@ CanUserAddRows$ False??6/   ?? 5Y       ?@ CanUserReorderColumns$ False??66   ?? 5Z       ?@ CanUserResizeColumns$ False??65   ?? 5[       ?@ CanUserResizeRows$ False??62   ?? 5\       ?@ CanUserSortColumns$
 True??63   ?? 5]       ?@ GridLinesVisibility$
 None=?64   ?? 5^       ?@ 
IsReadOnly$
 True??6+   ?? 5_       ?@ 	RowHeight8  6*   ?? 5`       ?@ SelectionMode$ Single=?6.   5a      ?? 5c   
   "  6   .?5e      ??  ? ?? ?#0000006+   ?? 5f       ? ??$ 20(?6)   ?? 5g       ?@?Cursor$
 Hand??6'   ?? 5h       ? ??$ 28??6'   ?? 5i       ? ?? 5j      ?? 5k      "  6&   .R?5l      ?? $ BackgroundBorder??6!   $
??Auto??6;   $
??-1,0q?6H   8??  8?? $
 True??5o      $
 True??68   ._?5p      ?? $	??5,0q?6/   $??Center=?6<   $??Center=?6Y   5q      5r      5t      5u      ?? 5w   
   "  6   .?5x      ??  ? ??8   6+   ?? 5y       ? ??8  6+   ?? 5z       ?@J?SnapsToDevicePixels$
 true??64   ?? 5{       ?@?UseLayoutRounding$
 True??62   ?? 5|       ?@=?ErrorTemplate 69   Z? ?? 5}       ? ??8  60   ?? 5~       ? ??8  6,   ?? 5       ? ??$ 16(?6)   ?? 5?       ?@ ValidationErrorTemplate 5?      ?? 5?      .R?5?      ?? $??0,0,0,0q?6$   $??Center=?65   
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
 Left=?64   ?? 5?       ? ??$ 10,10,10,10q?6'   ?? 5?       ? ?? ?	#FF0A01016+   ?? 5?       ? ??$	 Top=?62   ?? 5?       ? ??$ 0,0,50,0q?6(   ?? 5?       ?@?FocusVisualStyle 61   Z? ?? 5?       ? ??$ Disabled=?6K   5?      ?? 5?   
   " ??6$   8    .?5?      ??  ? ?? 5?      ?? 5?      " ??6&   .R?5?      ? .+?5?      ?? $! 
textSource??5?   &   
?????? $??0q?5?   &   $" 2??5?   &   ??5?   &   ?? $
# Text? ?? *TemplatedParent+$$ TwoWay=?$% PropertyChanged=?5?   &   ?? 5?      #??z& 6&   #??z??6C   $" 1??6m   .??6~   ??5?   "   ?? 5?   &   " ??6,   .?5?   *   ??  ? ??
 ???? 6G   ?? 5?   *    ? ??$ 0q?6L   6X   ?? 5?   *    ? ??$ SFPro)?6G   6W    5?   *   ?? 5?   .   ' 6:   ?? $
# Text?( 	  *
textSource+)  6y   .a?5?   2   ??  ? ??
 ?????6O   ?? 5?   2    ? ??$ SFPro)?6O   6_   5?   /   5?   '   .??5?   1   5?      5?      5?      5?      5?      5?      5?      