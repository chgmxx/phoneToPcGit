   M S B A M L   `   `   `  ����E  AScreenCast, Version=2.0.2.8, Culture=neutral, PublicKeyToken=null9!clr-namespace:ScreenCast.ControlsScreenCast.Controls  5   	   '    !ScreenCast.Views.FloatingToolBars   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6controls!clr-namespace:ScreenCast.Controls     5   	     � AllowsTransparency  .  � Title$ FloatingToolBars��5   	    � WindowStyle$
 None=�6#   ���	#01000000 � SizeToContent$ WidthAndHeight=�5
   	    � ShowInTaskbar .   � ShowActivated .  $��Disabled=�6T    � 
ResizeMode$ NoResize=�6�   .��5      �� -   5        $��ftbname��5   k    �� Orientation$ 
Horizontal=�6   ���	#01000000 J� Opacity$	 1.0Q�6B   $	��150��6Q   $��30��6]   $��Right=�6z   .+�5   
   � $	��150��6   $��30��6   $	��Top=�6'   .+�5      %   ScreenCast.Controls.ImageButton  -   5        	  Name$	 	menuclick��5   #   %   ScreenCast.Controls.ImageButton
   Click$
 OnClickMenuPopup��6s      ButtonMinMenu#��[  66   $��	6,3,120,3q�6^   6s   � 5      -   5         �Name$ 	PopupMenu��5      $	��168��6'   $	��161��63    � 	StaysOpen .  ��.   � AllowsTransparency . $��Slide=�5      $��Bottom=�5       � PlacementTarget 5      ��  �� ElementName$ 	menuclick��.��5      � .+�5      �� $��/Images/AboutMenu.png��6   �� 5      .+�5      �� -   5        $��CheckBoxAutoRun��5   #   
�������$��2q�6N   $��10(�6c   
�������
 �� Top$ 10��6�    �� Left$ 8��6�   6�   �� 5      -   5        $��CheckBoxShowFirstPage��5   #   
�������$��2q�6T   $��10(�6h   
�������$ 45��6�   $ 8��6�   6�   �� 5      $��14(�6$   
�������  MenuStartWenOpen#��[ 6D   $��Center=�6m    J� RenderTransformOrigin$ 	0.5,0.444&�6�   $ 34��6�   $ 11��6�   $
��auto��6�   $	��450��6�   �� 5      $��14(�6$   
�������  MenuStartFirstPage#��[ 6D   $��Center=�6o   $ 	0.5,0.444&�6�   $ 34��6�   $ 47��6�   $
��auto��6�   $	��450��6�     5       $
 OnMenuClickHelp��6�      
MouseEnter$ OnMenuClickEnter��6�      
MouseLeave$ OnMenuClickLeave��6�   $��14(�6/     ButtonMenuHelp#��[ 6=     MenuHelp#���  6h   
�������$ 72��6�   $ 7��6�   6�     5!      $ OnMenuClickEnter��6�   $ OnMenuClickLeave��6  $��14(�6/     ButtonMenuAbout#��[ 6=     MenuAboutMe#���  6�   
�������$	 108��6�   $ 7��6�   ��6g   �� *AboutCommand+6  5$      5%      5&        5*        ButtonMinMax#��[ 6#   $��	36,3,90,3q�6J   ��6]   �� *FullScreenCommand+  5+        ButtonMinMin2#��[ 6#   $��	66,3,60,3q�6K   ��6_   �� *MinimizeCommand+  5,       	 ButtonMinClose2#��[	 6#   $��	96,3,30,3q�6M   ��6`   �� *CloseCommand+5/      50      5C      