   M S B A M L   `   `   `  ????D  @QRPassWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:QRPassWPF.UserControlsQRPassWPF.UserControls  5   	       QRPassWPF.LoginWindow   5UserControls$clr-namespace:QRPassWPF.UserControls  W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -   5          ? WindowStartupLocation$  CenterScreen=?5   	    ? Title$ LoginWindow??5   	   $	??768??6   $
??1024??6*    ? WindowStyle$
 None=?67   '  !System.Windows.Shell.WindowChrome   WindowChrome 5        5   
      GlassFrameThickness$ 0,0,0,1q?6      CornerRadius$ 0??65    ? 	Resources 5         linkText ?? 
TargetType ?? Property	 ?? Value  primaryButton
 ?? 
TargetType ??Name ?? CornerRadius ?? Triggers P? Property P? Value ?? 
TargetName??%?  &	        &	 &    ?? 5   
   " ??6!   .?5      ??  ? ??$	 SemiBold"?6+   ?? 5       ? ??$	 CharacterEllipsis=?6-   ?? 5       ? ??$	 Center=?62   ?? 5       ?@??TextAlignment$
	 Left=?6.   ?? 5       ? ??$		 135??6)   ?? 5       ? ??$	 15(?6)   5      ?? 5   
   " ??6&   .?5      ??  ? ??$		 120??6)   ?? 5       ? ??$	 Center=?62   ?? 5       ? ??$	 40??6'   ?? 5       ? ??$	 SemiBold"?6+   ?? 5       ? ??	 ?	#FF01A3FF6+   ?? 5       ? ??
	 ?????6+   ?? 5       ? ??	 5       ?? 5!      "
 ??6&   .R?5"      ?? $ bd??5#      #??z??5$      #??z??5%      $ 10??5&      ._?5'      ?? #??z??5(   !   #??z??5)   !   #??z??5*   !   5+       5,      P? 5-       ?@J?IsMouseOver$
 True??6=   . ?5.   "   ?? $ bd??6)    ? ??	 ?#80d0FF5/   )   50      52      54      56      57      .??59      ?  ? RowDefinitions 5;   
   ?? 5<      $??70 ?6   ?? 5=      .+?5@   
   ?? $??35,0,0,0q?6   $??30(?6'   $??Center=?5A      $
??Left=?5B       J? Opacity$ 0Q?5C      ?? 5D      $?QR??6   ?? 6   $
?Pass??5E      $
??Bold"?5F      ??5G      ?? 5H       ?? Triggers 5I      :? 5J       :? RoutedEvent$ FrameworkElement.Loaded??6'   .[?5K      ?? .??5L   "   ??  g? 
SpeedRatio$	 0.7Q?6-   .??5M   &   W?  ?? TargetProperty$ Opacity?5N   )   	 W? To 16M   5O   #   5P      5Q      5S      5U      ? 5X   
   $??1??6   $	??400??5Y      $??Center=?5Z      $??Center=?5[       5\      ?? 5]      $	??100 ?6    ?? 5_      $	??100 ?6    ?? 5a      $	??100 ?6    ?? 5c      ?? 5e      $	??100 ?6    .+?5h      ?? $??Добрый день!??6   $??30(?5i      $??Center=?5j      $??SemiBold"?5k      *   $QRPassWPF.UserControls.CustomTextBox  5m      -   5          Name$ loginTextBox??5m   J   $??1??6)      PlaceHolder$ Login??66   6J     5o      -   5        $ passwordTextBox??5o   M   $??2??6)   $ Password??66      
IsPassword$
 True??6f   ? 5q      $??3??5r      $
??10,0q?5s      $??60??5t       ? ColumnDefinitions 5u      ?? 5v      ?? 5w      .+?5z      ?? $ ??Забыли пароль???6   #??[  63   ?? 5|      -   5        $??Login??5}      $??1??5~      #??[ 5?      6>   5?      ?? 5?      $??4??6   $??Bottom=?5?      $
??Wrap=?5?       ?? TextAlignment$ Center=?5?      ???#A3A3A4$??SemiBold"?5?      ?? 5?      $M?GНикому не говорите свой логин и пароль!??6   ?? 5?      ?? 5?      $*?$© QRPass, Inc. All rights reserved.??6   5?      5?      5?      5?      