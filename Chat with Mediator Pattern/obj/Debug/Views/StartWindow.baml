   M S B A M L   `   `   `  ����U  QChat with Mediator Pattern, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:Chat_with_Mediator_Pattern.Views Chat_with_Mediator_Pattern.Views  5   	   2    ,Chat_with_Mediator_Pattern.Views.StartWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @local.clr-namespace:Chat_with_Mediator_Pattern.Views     5   	     � Title$  
Chat Group��5   	   $	��450��6   $	��800��6)    � WindowStartupLocation$ CenterScreen=�65    � 
ResizeMode$ NoResize=�6Z   .��5	      � ���#065a60 � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��2��6   $��1��6!   $��2��61   $��
Nickname :��6E   $��20(�6W   $��Center=�6e   $��Center=�5      
�������6/   �� 5   
   $��3��6   $��1��6   $��2��6.    �� CornerRadius$ 10��6B   $��4q�6T   
���  ��._�5      �� -   5         ��Name$ TxtBxNickname��5    ~   $��0q�5      $��5q�6*   $��Disabled=�65   $
��Auto=�6k   $��18(�5       $��Center=�6$   $��Center=�6H    �� TextWrapping$
 Wrap=�6j   ���#065a60
���������5!      �� *
Nickname+ �� Mode$ TwoWay=�	 �� UpdateSourceTrigger$	 PropertyChanged=�5"   +   5#      �� 5%   
   $��5��6   $��3��6   $
��Join��6.      SubmitButton#��[  6=   ��6c   �� *JoinCommand+5'      5(      