   M S B A M L   `   `   `  ???? D  @QRPassWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:QRPassWPF.UserControlsQRPassWPF.UserControls  *    $QRPassWPF.UserControls.CustomTextBox   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:QRPassWPF.UserControls     -     >?Name$  _this?? ? 	Resources  ?? 
TargetType ?? Property ?? Value ?? ElementName ?? FallbackValue   credentialsTxTtitleStyle ?? Triggers ?? Binding	 ?? Value
 N? EnterActions g? 
SpeedRatio ?? TargetProperty	 W? To	 t? To N? ExitActions  credentialsTxTStyle ?? Mode ?? 
TargetType ?? Stretch  showPass ?? Triggers??%?  '>?       &	  F     &	 ?    'G? B    '?? Q    7  ?? " >?.???  ? ?? ?? *
minWidth+$ _this??$	 300???? " ??.???  ? ??$
 Left=???  ? ??$ Center=???  ? ?? ?#a3a3a4??  ? ??$ 20(???  ? ?? ?? *PlaceHolder+$ _this????  ?@??Padding$	 2,0q? ??  ?? *Text+$ login??	  
 ?? .???? $ 10Q?.??W? $ FontSize? 20t? $ Margin? 0 ?? .???? $ 10Q?.??W? $ FontSize? 15t? $ Margin? 0 0 0 30?? " ??.???  ? ?? ?? *Text+$ TwoWay=?$ _this????  ?@??TextAlignment$
 Left=???  ? ??$ Center=???  ? ??$ SemiBold"???  ? ??
 ???? ??  ? ??$ 0q? ??  ?? *
FontSize+$ title??	 15
 ?? .???? $ 10Q?.??W? $ FontSize? 20t? $ Margin? 0 20 0 0 ?? .???? $ 10Q?.??W? $ FontSize? 15t? $ Margin? 0??  ?? *Text+$ TwoWay=?$ _this??	  .a???  ? ?? ?? *
Password+$ passBox????  ?? *
Visibility+$ passBox??	 Visible.a???  ? y?$ 	Collapsed=??? " G?.???  ? ??$ 2,0,30,0q???  ? ??$ Center=???  ? ??$ SemiBold"???  ? ??
 ???? ??  ? ??$ 0q? ??  ?? *
FontSize+$ title??	 15
 ?? .???? $ 10Q?.??W? $ FontSize? 20t? $ Margin? 0 20 0 0 ?? .???? $ 10Q?.??W? $ FontSize? 15t? $ Margin? 0??  ?? *
IsPassword+$ _this??		 False.a???  ? y?$ 	Collapsed=???  ?? *	IsPressed+$ btnShowPass??	 True.a???  ? y?$ 	Collapsed=??? " ??.???  ? ??
 ???? ??  ? ??$ Right=???  ? ??$ 0q???  ? ??$ Center=???  ? ?? ?#A3A3A4??  ? ?? ?? " ??.R??? #??z??._?F? $??20??$ Uniform=?#??z??8??   ?? $	 False?? ?? *
IsPassword+$ _this??.a???  ? y?$ 	Collapsed=?.????  ?? CornerRadius$ 10??
???????$??70?? J? Effect 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 23Q?   ShadowDepth$ 5Q?   	Direction$	 270Q?   Color$ 
WhiteSmoke??   RenderingBias$ Performance=?._?? $
??20,6q?.+??? -    ??Name$ title??#??[  ?? -    ??Name$ login??#??[ G? -    G?Name$ passBox???? -    ??Name$ btnShowPass??
?????? $??0q?$??Right=?$??Center=?