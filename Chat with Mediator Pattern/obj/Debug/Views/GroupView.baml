   M S B A M L   `   `   `  ����U  QChat with Mediator Pattern, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:Chat_with_Mediator_Pattern.Views Chat_with_Mediator_Pattern.Views  5   	   0    *Chat_with_Mediator_Pattern.Views.GroupView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @local.clr-namespace:Chat_with_Mediator_Pattern.Views     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  6F   $	��450��5   $   $	��800��61     � 
ResizeMode$  NoResize=�6=    � Title 6	   �� *
Nickname+.  (System.Windows.Interactivity.Interaction   Triggers 5
      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Closing��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *CloseCommand+5      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       �� 5!      .+�5$   
   � $��0��6   $��0��6   $��7��6,   $��4��6A   $��10q�6R   
���  ��.+�5&      �� -   5         ��Name$ 	LstBxChat��5'   F   $��Disabled=�5&   F   $
��Auto=�5'      ��5&      �� *StartViewModel.Messages+��5)      �� 5*      .R�5+      � 	 � Orientation$	 Vertical=�6$   5,      ��5/      �� 50      .R�51      � 
�������$��50��6k   ��61   �� 
 �� ElementName$
 	LstBxChat�� �� Path$ ActualWidth�.+�52      �� $��Disabled=�6+   $
��Auto=�6T   .��53   "   �� $��Center=�6=   $��0, 20, 0, 0q�6Z   $��18(�54   ,   
�������$
��Wrap=�6M   ��53   ,   �� 54   M   55      56      57      5:      5<      � 5>   
   $��5��6   $��0��6   $��7��6,   $��10, 0, 10, 10q�6@    5?      �� 5@      $	��60* �6#   �� 5A      $	��20* �6#   �� 5B      $	��20* �6#   .+�5E      � $��0��6    5F      �� 5G      �� 5H      �� 5I      �� 5J      �� 5K      �� 5L      �� 5M      .+�5P      �� $��1��6   $��5��6&   $��2q�67   ���#cb997e �� CornerRadius$ 15��6a    �� Padding$ 5q�6s   ._�5Q      �� -   5         ��Name$ TxtBxMessage��5R   -   $��18(�5Q       �� TextWrapping$
 Wrap=�6,   $��Disabled=�6@   $
��Auto=�6v   $��10, 7, 0, 0q�5R      $��0q�6C   5S      5U      �� 5W      $��1��6   $
��Send��6%   $��18(�64   $��8q�5X   K      
SendButton#��[  5Y      ��5W   B   �� *SendCommand+��5X      �� $
 TxtBxMessage��5Y      �� 5\      $��2��6   $
��Left��6%   $��18(�64   $��8q�5]   o     LeaveButton#��[ 5^      ��5\   B   �� *LeaveCommand+��5]      ��  �� RelativeSource ��  �� AncestorType" �5^      5a      5c      5d      