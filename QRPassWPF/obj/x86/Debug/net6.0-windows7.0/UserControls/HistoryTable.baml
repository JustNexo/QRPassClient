   M S B A M L   `   `   `  ????D  @QRPassWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:QRPassWPF.UserControlsQRPassWPF.UserControls  5      9!clr-namespace:QRPassWPF.ViewModelQRPassWPF.ViewModel  5      )    #QRPassWPF.UserControls.HistoryTable   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:QRPassWPF.UserControls     5      1src!clr-namespace:QRPassWPF.ViewModel     5      -   5        #??[B>?5        ? 	Resources  5      (   "QRPassWPF.ViewModel.WidthConverter   	Converter  primaryButton ?? 
TargetType ?? Property ?? Value ?? 
TargetType ??Name ?? CornerRadius ?? Triggers P? Property	 P? Value
 ?? 
TargetName*   $QRPassWPF.UserControls.CustomTextBox  ComboBoxToggleButton ? ColumnDefinitions F?Name  ComboBoxTextBox ?? 	ClickMode d? 	IsChecked ?? Path ?? Mode ?? RelativeSource J? IsHitTestVisible ?? SelectionBoxItem ?? SelectionBoxItemTemplate ??Name ?? 
IsReadOnly ?? 
IsReadOnly ?? IsDropDownOpen ? AllowsTransparency J? SnapsToDevicePixels ? ActualWidth ?? MaxDropDownHeight K? IsItemsHost-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation P? 
SourceName  ?? Triggers! ?? Padding  lvStyle" ?? Width# ?? CellTemplate$ ?? Binding% ?? Value??%?  &	        &	      '  ?    &	 ?    &	 ?    '?? M    7  7  '?? C    &	 t      5   
   6   ?? 5   
   " ??6&   .?5      ??  ? ??$	 120??6)   ?? 5       ? ??$ Center=?62   ?? 5       ? ??$ 40??6'   ?? 5       ? ??$ SemiBold"?6+   ?? 5       ? ?? ?	#FF01A3FF6+   ?? 5       ? ??
 ?????6+   ?? 5       ? ?? 5      ?? 5      " ??6&   .R?5      ?? $ bd??5      #??z??5      #??z??5      $ 10??5      ._?5      ?? #??z??5    !   #??z??5!   !   #??z??5"   !   5#       5$      P? 5%       ?@J?IsMouseOver$
	 True??6=   . ?5&   "   ?? $
 bd??6)    ? ?? ?#80d0FF5'   )   5(      5*      5,      5-      ?? 5/   
   "  6   .?50      ??  ? ??$ 60??6'   51      ?? 53   
   " d?67   .R?54      ?  55      ?? 56      ?? 57      $??20 ?6'   .+?59      ?? $ Border??5:      $??2??5;      $ 0??5<      ???	#FF97A0A5$??1q?5>      ?? 5?      $??0??5@      $ 0??5A      $??1q?5B      
??????????	#FF97A0A5$??0,0,1,0q?5E      F? 5F      $ Arrow??5G      $??1??5H      
???   ?$??Center=?5J      $??Center=?5K      =????        ?    ?? ? 	= ??[ ? z ?? ? z     ? 	=  	= 	5L      5N      5]      ?? 5_   
   " ??62   .R?5`      ?? $ PART_ContentHost??6   $|?False??6/   #??z??6A   5a      ?? 5c   
   " ??6*   .?5d      ??  ?@J?SnapsToDevicePixels$
 true??64   ?? 5e       ?@?OverridesDefaultStyle$
 true??66   ?? 5f       ? ??$
 Auto=?6K   ?? 5g       ? ??$
 Auto=?6I   ?? 5h       ? ??$
 true??6>   ?? 5i       ? ??$	 120??6)   ?? 5j       ? ??$ 20??6*   ?? 5k       ? ?? 5l      ?? 5m      " ??6&   .R?5n      ? .+?5o      d? $??ToggleButton??5p      8??  $??2??5r      $|?false??5s      $ Press=?5u       5t      ?? $ IsDropDownOpen?$ TwoWay=? ?? *TemplatedParent+5v      ?? 5w      $??ContentSite??6/   $ False??6B   #??z 6\   #??z 5x      #??z??5y      $??3,3,23,3q?5z      $??Center=?5{      $
??Left=?5|      ?? 5}      $ PART_EditableTextBox??6&   8?? $
??Left=?5?      $??Center=?5?      $??3,3,23,3q?5?      $
|?True??5?      ???	#FF3F3F3F
??? ? ?$y?Hidden=?5?      # z 5?      ??5~      Z? 5?      ? 5?      $??Popup??5?      $??Bottom=?5?      #??z 5?      $
 True??5?      $|?False??5?      $??Slide=?5?      .??5?   "   ? $??DropDown??6'   $
 True??5?      #??z 5?      #??z 5?      .+?5?   &   ?? $ DropDownBorder??5?   !   
???????$??1q?5?   !   ???#8888885?   !   ?? 5?   &   $??4,6,4,6q?63   $
 True??6D   .??5?   *   ?? $
 True??65   $ 	Contained=?6H   5?   '   5?   #   5?      5?       5?      P? 5?       ?@??HasItems$	 false??6:   . ?5?   "   ?? $
 DropDownBorder??6)    ? ??$ 95??6Z   5?      P? 5?       ? {?$	 false??6;   . ?5?   "   ??  ? ?? ?#8888886?   5?      P? 5?       ?@??
IsGrouping$
	 true??6<   . ?5?   "   ??  ? ??$ false??6R   5?      P? 5?      $ Popup??6&    ?@?AllowsTransparency$
	 true??6]   . ?5?   "   ?? $
 DropDownBorder??6)    ?@??CornerRadius$ 0??6]   ?? 5?   "   $
 DropDownBorder??6)    ? ??$ 0,2,0,0q?6W   5?      P? 5?       ?@??
IsEditable$
	 true??6=   . ?5?   "   ??  ? ??$ false??6>   ?? 5?   "   $
 PART_EditableTextBox??6)    ? y?$ Visible=?6a   ?? 5?   "   $
 ContentSite??6)    ? y?$ Hidden=?6X   5?      5?      5?        5?      5?      ?? 5?   
   " ??6.   .?5?      ??  ?@J?SnapsToDevicePixels$
 true??64   ?? 5?       ?@?OverridesDefaultStyle$
 true??66   ?? 5?       ? ?? 5?      ?? 5?      " ??6&   .R?5?      ?? $??Border??6!   $! 2q?5?      $
 true??5?      ._?5?      ?? 5?       5?      P? 5?       ?@??IsHighlighted$
	 true??6?   . ?5?   "   ?? $
 Border??6)    ? ?? ?	#FF01A3FF6S   5?      P? 5?       ? {?$	 false??6;   . ?5?   "   ??  ? ?? ?#8888886?   5?      5?      5?      5?      ?? 5?   
   " ??6    .?5?      ??  ? ?? ?	#FF0A01016+   ?? 5?       ?@%?IsVirtualizing$
 True??6F   ?? 5?       ?@%?VirtualizationMode$ 	Recycling=?6J   ?? 5?      " ?@??IsDeferredScrollingEnabled$
 True??6H   ?? 5?       ? ??$ Stretch=?6;   ?? 5?       ? ?? 65   ?? ?? 5?       ?@??View 5?      ?? 5?      .P?5?      ?? $	??№??6)   $
" Auto??64   # 5?      ?? 5?   "   .R?5?   &   ?? ??60   ?? *Id+5?   #   5?      ?? 5?      $??ID??6)   $
" Auto??65   # 5?      ?? 5?   "   .R?5?   &   ?? ??60   ?? *UserId+5?   #   5?      ?? 5?      $??ФИО??6)   $
" Auto??66   # 5?      ?? 5?   "   .R?5?   &   ?? ??60   ?? *
FullName+5?   #   5?      ?? 5?      $??Действие??6)   $
" Auto??6;   # 5?      ?? 5?   "   .R?5?   &   ?? ??60   ?? *Action+5?   #   5?      ?? 5?      $??Пред. объект??6)   $
" Auto??6?   # 5?      ?? 5?   "   .R?5?   &   ?? ??60   ?? *	PrevObj+5?   #   5?      ?? 5      $-??'Пред. время посещения??6)   $
" Auto??6H   # 5     ?? 5  "   .R?5  &   ?? ??60   ?? *
PrevDate+5  #   5     ?? 5     $!??Текущий объект??6)   $
" Auto??6A   # 5     ?? 5	  "   .R?5
  &   ?? ??60   ?? *
CurrentObj+5  #   5     ?? 5     $#??Время посещения??6)   $
" Auto??6B   # 5     ?? 5  "   .R?5  &   ?? ??60   ?? *Date+5  #   5     5     5       5     ?? 5     $ 6   ?? *	IsLoading+% True6<   .a?5     ??  ?@?Cursor$
 Wait??68   ?? 5      ? ??
 ?????6<   5     5     5     .??5!     ? & ? RowDefinitions& 5#  
   ?? 5$     $??* ?6   ?? 5%     $
??Auto ?6   .+?5(  
   ?? $??0??6   $??5,5,5,5q?6    #???  61   ?? 5+  
   $??1??6   ' ?? Orientation$' 
Horizontal=?6"   $??0,0,0,25q?6;   $??2??6M   .+?5,       (   PlaceHolder$( ID??6"     5-     $	( №??6"     5.     $( ФИО??6"   ?? 5/     $??Center=?6   $??0,15,0,0q?62   $??40??6D   .@?50     ?? -   5        $
??null??50     6-   ?? 51     -   5        $??exitfromobj??51     .??62   Выход с объекта6C   ?? 52     -   5        $??
entertoobj??52     .??61   Вход на объект6A   ?? 53     -   5        $??
quarantine??53     .??61   42Нарушение сроков карантина6M   ?? 54     -   5        $??exitnotregistred??54     .??67   0.Выход не зарегестрирован6Q   55       56     $( Пред.Действие??6"     57     $( ФИО??6"     58     $( ФИО??6"     59     $( ФИО??6"   5;     5=     5>     