   M S B A M L   `   `   `  ����E  AScreenCast, Version=2.0.2.8, Culture=neutral, PublicKeyToken=null9!clr-namespace:ScreenCast.ControlsScreenCast.Controls  5   	   !    ScreenCast.Views.Connecting   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Hi:http://schemas.microsoft.com/expression/2010/interactivity     5   	   6controls!clr-namespace:ScreenCast.Controls     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     J� SnapsToDevicePixels  .    AppName � Title# �   5      $	��400��5   	   $	��720��5   	    � AllowsTransparency .  � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ��5   	   Z�  � Icon 5   	   �� *	AppIcon+ � 	Resources 5       g� RepeatBehavior  
Storyboard �� 
TargetName	 �� TargetProperty
 g� Duration	 W� To g� 	BeginTime��%�   &	       �� 5   
   $ Forever��6   .��5      W� $
 Img2��6   $	 Opacity�6;   $
 0:0:1D�6_   $ -1X�6p   $ 0:0:0X�6x   W� 5      $
 Img2��6   $	 Opacity�6;   $
 0:0:1D�6_   $ 1X�6p   $ 	0:0:0.500X�6w   5      5      .��5!      � -   5        .+�5#   
   �� -   5        $��
connecting��5#      $y�Visible=�6#   .+�5$      �� $ ��/Images/PageConnecting.png��6   $��Uniform=�69    �� Left$ 0��6K   
 �� Top$ 0��6[   $	��720��6j   $	��400��6v   �� 5%      $��16(�6   
�������  AppFullName#��[ 68   $��Center=�6\    J� RenderTransformOrigin$ 	0.5,0.444&�6y   $ 49��6�   $ 19��6�   $��30��6�   $	��358��6�   �� 5&      $��/Images/appicon.png��6   $��30��61   $��30��6<   $ 15��6H   $ 14��6Y   %   ScreenCast.Controls.ImageButton  5(        BlackImageButton#��[ 6#     PageConnectDisconnect#���  6s   
�������$��16(�6�   $	 555��6�   $	 337��6�   ��6M   �� *DisconnectCommand+6�   �� 5)      $��17(�6   
���   �  DisConnectText#���  69   $��Center=�6a   $ 	0.5,0.444&�6   $	 327��6�   $	 289��6�   $��40��6�   $	��302��6�   5*      �� 5,   
   -   5        $��
connecterr��5,      $y�Visible=�6#   .+�5-      �� $ ��/Images/PageConnecterr.png��6   $��Uniform=�69   $ 0��6K   $ 0��6[   $	��720��6j   $	��400��6v   �� 5.      $��16(�6   
�������#��[ 68   $��Center=�6\   $��2��6y   $ 	0.5,0.444&�6�   $ 49��6�   $ 19��6�   $��30��6�   $	��358��6�   �� 5/      $��/Images/appicon.png��6   $��30��61   $��30��6<   $ 15��6H   $ 14��6Y     52      #��[ 6#     PageConnectBackToSplash#���  6n   
�������$��16(�6�   $	 555��6�   $	 337��6�   ��6M   �� *BackToSplash+6�   55        57   
     ButtonMainMenu#��[ 6   $��Right=�6m   $	��Top=�6�   $��	0,14,78,0q�6�   ��6H   �� *AboutMenuCommand+6�     58   
   %   ScreenCast.Controls.ImageButton   Click$ OnMinClickMin��6�     ButtonMinMin#��[ 6   $��Right=�6g   $	��Top=�6�   $��	0,14,45,0q�6�   ��6E   �� *OnMinClickMin+6�     59   
    	 ButtonMinClose#��[	 6   $��Right=�6h   $	��Top=�6�   $��	0,14,12,0q�6�   $ 2.579,0.316&�6�   ��6G   �� *ClickMinExit+6�   5=      5>      