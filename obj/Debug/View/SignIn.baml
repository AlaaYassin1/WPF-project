   M S B A M L   `   `   `  ????E  AWPFLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WPFLibrary.ViewWPFLibrary.View  5   	       WPFLibrary.View.SignIn   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WPFLibrary.View     5   	     ? Title$  SignIn??5   	   $	??450??6   $	??800??6%   .??5	      ??  ?? CornerRadius$ 12??6   ._?5   
   ?? $ 10??6   $??1q?5       J? Opacity$
 0.90Q?5      $??0,-4,0,0q?6   ??5      ?? 5       ?? 
StartPoint$	 0,0&?6&    ?? EndPoint$	 1,1&?67   .??5      ?  ? Color$ #99d98c??6#    ? Offset$ 0Q?63   5      ??5      ?? 5      $	 0,1&?6&   $	 1,0&?67   .??5      ? $ #99d98c??6$   $ 0Q?64   ? 5      $ #181448??6#   $
 0.75Q?63   5      ._?5      ?  ? RowDefinitions 5      ?? 5      $??30 ?6$   ?? 5      .+?5!      ?  ? ColumnDefinitions 5"      ?? 5#      ?? 5$      $??25 ?6+   ?? 5%      $??25 ?6,   ?? 5&      $??5 ?6-   .+?5*      ?? $??LOG IN??6    
???????$??10(?5,       $??
Montserrat)?5-       $??0??5.       $??Center=?5/       $??10,0,0,0q?50      ?? 52      -   5        	 ??Name$	 btnMin??52      $??0q?53      $??-??54      
???????$??16(?56      $??
Montserrat)?57      
 ? Cursor$

 Hand??58      $??1??59      ??5;      ?? 5<       ?? 
TargetType" ??6$   .?5=   "   ??  ?? Property ? ?? ?? Value ?#28AEED6?    ?? Triggers 5>   "   P? 5?   &    P? Property ?@J?IsMouseOver P? Value . . ?5@   *   ??  ? ?? ?#2788EF6G   5B   '   5E      ??5G      ?? 5H       ?? 
TargetType" ??6.   .R?5I   "   ?? $??18??6)   $??18??64   $ 9??5J   )   #??z??5K   )   ._?5L   &   ?? $??Center=?67   $??Center=?5M   7   5N   #   5O      5R      ?? 5S      -   5        $	 btnClose??5S      $??0q?5T      $??X??5U      
???????$??12(?5W      $??
Montserrat)?5X      $

 Hand??5Y      $??2??5Z      ??5\      ?? 5]      " ??6$   .?5^   "   ??  ? ?? ?#DA34AE6?    5_   "   P? 5`   &    ?@J?IsMouseOver . . ?5a   *   ??  ? ?? ?#C620AE6G   5c   '   5f      ??5h      ?? 5i      " ??6.   .R?5j   "   ?? $??18??6)   $??18??64   $ 9??5k   )   #??z??5l   )   ._?5m   &   ?? $??Center=?67   $??Center=?5n   7   5o   #   5p      5r      5t      ?? 5u       ?? Orientation$ Vertical=?5v      $??-46,-40,332,-5q?5w      $??2??65   .+?5x      ?? $??/images.jpg??6   $	??516??61   $	??362??6>    J? RenderTransformOrigin$ 0.5,0.5&?6J   z?5y      V? 5z      .~?5{   "   ?? ?? 5|   "   ?? 5}   "    ?? Angle$ 0.399Q?62   T? 5~   "   5      5?      5?      ?? 5?      $	??250??6   $??1??5?      $ Vertical=?5?      $??471,25,77,10q?5?      .+?5?      ?? $??UserName??6    
???????$??12(?5?       $??Medium"?5?       $??
Montserrat)?5?       $??0,50,0,0q?5?       ?? 5?      -   5         ??Name$ txtUser??5?      $??13(?5?      $??Medium"?5?      $??
Montserrat)?5?   &   
??????? ?? 
CaretBrush
 ?????
???????$??0,0,0,1q?5?      $??30??5?      $??Center=?5?      $??0,5,0,0q?5?      $??50,0,0,0q?5?      .??61   ??5?      ?? 5?       ?? ImageSource$# /images/user-solid-24 (1).png??6)    j? Stretch$
 None=?5?   )    j? 
AlignmentX$
 Left=?5?   )   .??5?   .   5?      ?? 5?      $??Password??6    
???????$??12(?5?       $??Medium"?5?       $??
Montserrat)?5?       $??0,50,0,0q?5?       ?? 5?      -   5        $ txtPass??5?      $??13(?5?      $??Medium"?5?      $??
Montserrat)?5?   &   
???????
 ?????
???????$??0,0,0,1q?5?      $??30??5?      $??Center=?5?      $??0,5,0,0q?5?      $??50,0,0,0q?5?      .??61   ??5?      ?? 5?      $$ /images/key-regular-24 (1).png??6)   $
 None=?5?   )   $
 Left=?5?   )   .??5?   .   5?      ?? 5?      -   5        $	 btnSign??5?      $??0q?5?      $??Sign IN??5?      
???????$??12(?5?      $??
Montserrat)?5?      $

 Hand??5?      $??2??5?      $??0,50,0,0q?5?      ??5?      ?? 5?      " ??6$   .?5?   "   ??  ? ?? ?#FF00906?    5?   "   P? 5?   &    ?@J?IsMouseOver . . ?5?   *   ??  ? ?? ?#28AEED6G   5?   '   5?      ??5?      ?? 5?      " ??6.   .R?5?   "   ?? $	??150??6)   $??40??65   $ 20??5?   )   #??z??5?   )   ._?5?   &   ?? $??Center=?67   $??Center=?5?   7   5?   #   5?      5?      ?? 5?      $ 
Horizontal=?6!   $??Center=?5?   !   $??0,15,0,0q?5?   !   .+?5?      ?? $??Forget Password???6$   
???????$??12(?5?       $??Medium"?5?       $??
Montserrat)?5?       ?? 5?      $??Reset??6$   
???????$??12(?5?       $??Medium"?5?       $??
Montserrat)?5?       $??8,0,0,0q?5?       $

 Hand??61   5?      5?      ?? 5?      5?      5?      5?      5?      