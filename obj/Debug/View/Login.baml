   M S B A M L   `   `   `  ????E  AWPFLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WPFLibrary.ViewWPFLibrary.View  5   	       WPFLibrary.View.Login   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WPFLibrary.View     5   	     ? Title$  Login??5   	   $	??450??6   $	??800??6$    ? WindowStyle$
 None=?5	   	    ? 
ResizeMode$ NoResize=?5
   	    ? WindowStartupLocation$ CenterScreen=?5   	   
?????? .??5      ??  ?? CornerRadius$ 12??6   ._?5   
   ?? $ 10??6   $??1q?5       J? Opacity$
 0.90Q?5      $??0,-4,0,4q?6   ??5      ?? 5       ?? 
StartPoint$	 0,0&?6&    ?? EndPoint$	 1,1&?67   .??5      ?  ? Color$ #99d98c??6#   	 ? Offset$	 0Q?63   5      ??5      ?? 5      $	 0,1&?6&   $	 1,0&?67   .??5      ? $ #181448??6#   $	 0Q?63   ? 5      $ #99d98c??6#   $
	 0.75Q?63   5      ._?5       ? 
 ? RowDefinitions
 5!      ?? 5"      $??30 ?6$   ?? 5#      .+?5&      ?  ? ColumnDefinitions 5'      ?? 5(      ?? 5)      $??25 ?6+   ?? 5*      $??25 ?6,   ?? 5+      $??5 ?6-   .+?5/      ?? $??LOG IN??6    
???????$??10(?51       $??
Montserrat)?52       $??0??53       $??Center=?54       $??10,0,0,0q?55      ?? 57      -   5         ??Name$ btnMin??57      $??0q?58      $??-??59      
???????$??16(?5;      $??
Montserrat)?5<       ? Cursor$
 Hand??5=      $??1??5>      ??5@      ?? 5A       ?? 
TargetType" ??6$   .?5B   "   ??  ?? Property ? ?? ?? Value ?#28AEED6?    ?? Triggers 5C   "   P? 5D   &    P? Property ?@J?IsMouseOver P? Value . . ?5E   *   ??  ? ?? ?#2788EF6G   5G   '   5J      ??5L      ?? 5M       ?? 
TargetType" ??6.   .R?5N   "   ?? $??18??6)   $??18??64   $ 9??5O   )   #??z??5P   )   ._?5Q   &   ?? $??Center=?67   $??Center=?5R   7   5S   #   5T      5W      ?? 5X      -   5        $ btnClose??5X      $??0q?5Y      $??X??5Z      
???????$??12(?5\      $??
Montserrat)?5]      $
 Hand??5^      $??2??5_      ??5a      ?? 5b      " ??6$   .?5c   "   ??  ? ?? ?#DA34AE6?    5d   "   P? 5e   &    ?@J?IsMouseOver . . ?5f   *   ??  ? ?? ?#C620AE6G   5h   '   5k      ??5m      ?? 5n      " ??6.   .R?5o   "   ?? $??18??6)   $??18??64   $ 9??5p   )   #??z??5q   )   ._?5r   &   ?? $??Center=?67   $??Center=?5s   7   5t   #   5u      5w      5y      ?? 5z      $	??250??6   $??1??5{       ?? Orientation$ Vertical=?5|      $??49,25,499,10q?5}      .+?5?      ?? $??UserName??6    
???????$??12(?5?       $??Medium"?5?       $??
Montserrat)?5?       $??0,50,0,0q?5?       ?? 5?      -   5         ??Name$ txtUser??5?      $??13(?5?      $??Medium"?5?      $??
Montserrat)?5?   &   
??????? ?? 
CaretBrush
 ?????
???????$??0,0,0,1q?5?      $??30??5?      $??Center=?5?      $??0,5,0,0q?5?      $??50,0,0,0q?5?      .??61   ??5?      ?? 5?       ?? ImageSource$# /images/user-solid-24 (1).png??6)    j? Stretch$
 None=?5?   )    j? 
AlignmentX$
 Left=?5?   )   .??5?   .   5?      ?? 5?      $??Password??6    
???????$??12(?5?       $??Medium"?5?       $??
Montserrat)?5?       $??0,50,0,0q?5?       ?? 5?      -   5        $ txtPass??5?      $??13(?5?      $??Medium"?5?      $??
Montserrat)?5?   &   
???????
 ?????
???????$??0,0,0,1q?5?      $??30??5?      $??Center=?5?      $??0,5,0,0q?5?      $??50,0,0,0q?5?      .??61   ??5?      ?? 5?      $$ /images/key-regular-24 (1).png??6)   $
 None=?5?   )   $
 Left=?5?   )   .??5?   .   5?      ?? 5?      -   5        $ btnLog??5?      $??0q?5?      $??LOG IN??5?      
???????$??12(?5?      $??
Montserrat)?5?      $
 Hand??5?      $??2??5?      $??0,50,0,0q?5?      ??5?      ?? 5?      " ??6$   .?5?   "   ??  ? ?? ?#FF00906?    5?   "   P? 5?   &    ?@J?IsMouseOver . . ?5?   *   ??  ? ?? ?#28AEED6G   5?   '   5?      ??5?      ?? 5?      " ??6.   .R?5?   "   ?? $	??150??6)   $??40??65   $ 20??5?   )   #??z??5?   )   ._?5?   &   ?? $??Center=?67   $??Center=?5?   7   5?   #   5?      5?      ?? 5?      $ 
Horizontal=?6!   $??Center=?5?   !   $??0,15,0,0q?5?   !   .+?5?      ?? $??Forget Password???6$   
???????$??12(?5?       $??Medium"?5?       $??
Montserrat)?5?       ?? 5?      $??Reset??6$   
???????$??12(?5?       $??Medium"?5?       $??
Montserrat)?5?       $??8,0,0,0q?5?       $
 Hand??61   5?      5?      ?? 5?      ?? 5?      $ Vertical=?5?      $??399,5,-53,0q?5?      $??1??62   .+?5?      ?? $??/images (2).jpg??6   $	??412??65   $	??481??6B    J? RenderTransformOrigin$ 0.5,0.5&?6N   z?5?      V? 5?      .~?5?   "   ?? ?? 5?   "   ?? 5?   "    ?? Angle$ 0.399Q?62   T? 5?   "   5?      5?      5?      ?? 5?      -   5        $ btnSign??5?      $??0q?5?      $??Sign IN??5      
???????$??12(?5     $??
Montserrat)?5     $
 Hand??5     $??67,349,517,25q?5     $??1??6+   ??5     ?? 5     " ??6    .?5	     ??  ? ?? ?#210F556;    5
     P? 5  "    ?@J?IsMouseOver . . ?5  &   ??  ? ?? ?#28AEED6C   5  #   5     ??5     ?? 5     " ??6*   .R?5     ?? $	??150??6%   $??40??61   $ 20??5  !   #??z??5  !   ._?5  "   ?? $??Center=?63   $??Center=?5  %   5     5     5     5     5!     5"     5#     