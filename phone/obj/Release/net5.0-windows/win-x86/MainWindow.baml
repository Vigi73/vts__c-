   M S B A M L   `   `   `  ���� @  <phone, Version=2.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:phonephone      phone.MainWindow   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     %localclr-namespace:phone     -     �Name$  main_window�� � Title$ 
MainWindow��$	��800��$
��1000�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=�$��Disabled=� � 
ResizeMode$ NoResize=� � AllowsTransparency$
 True�� J� Opacity$
 0.95Q���Z�  � 	Resources    HeaderBrush �� 
StartPoint	 �� EndPoint
 � Color � Offset  HeaderBorderBrush&   System.Windows.Controls.DataGrid �� 
TargetType �� Property �� Value  TextBase  TextStyleMedium �� BasedOn��%p  &	        &	 �     '  [    &	 �    &	 +    7  �� $ 0.5,0&�$	 0.5,1&�.��� $
 	#FF171409��$ 0Q�� $
 	#FF6A5E12��$ 1Q�� $
 	#FF211E0E��$ 0.509Q�� $
 	#FF211E12��$ 0.542Q�� $
 	#FF272410��$ 0.542Q�� $
 	#FF33341B��$ 0.526Q��� $ 0.5,0&�$	 0.5,1&�.��� $
 	#FF979797��$	 0.5Q�� $
 	#FF33341B��$ 0.853Q�� $
 	#FF6C6035��$ 1Q��� "  .���  � �� �#FFF��  �@��AlternationCount$ 2���� " �.���  � ��$ NoWrap=���  � ��$
 None=���  � ��$ 16(���  � ��$! Franklin Gothic Medium Cond)��� " ��8   .��� $	��800��$��Center=� � Cursor$
 Hand�� +� FocusedElement ��  �� ElementName$ 	edtSearch������ $	 0.5,1&�$ 0.5,0&�.��� $
 Black��� $
 	#FFC6D38F��$ 1Q�� $
 	#FF96A06C��$ 0.613Q�.+��� -    ��Name$
 exit��$��X��$
��Left=�$��	956,7,0,0q�$	��Top=�$��30��$��35�� � ToolTip$' !Закрыть программу��$
��Bold"�
����������� $	 0.5,1&�$ 0.5,0&�.��� $
 Black��$ 1Q�� $
 	#FFE2C359��$ 0Q��� -   $
 turn��$��_��$
��Left=�$��	918,7,0,0q�$	��Top=�$��30��$��35��$" Свернуть в трей�����	#FFFFFBFB$��Black"����� $	 0.5,1&�$ 0.5,0&�.��� $
 Black��$ 1Q�� $
 	#FFE2C359��$ 0Q��� -    ��Name$
 logo��$
��Left=�$��55��$��7,7,0,0q�$	��Top=�$��67��$��/bookcontacts_7069.png���� $O��IСправочник ВТС УФК по Алтайскому краю 2.0��$
��Left=�$��68,8,0,0q�$	��Top=�$	��649��$��Bahnschrift Condensed)�$��Normal$�$��Medium"�$��22(�$��34������ $	 0.5,1&�$ 0.5,0&�.��� $
 Black��$ 1Q�� $
 	#FFCBA31D��$ 0.463Q��� -   $ 	turn_Copy��$��_��$
��Left=�$��	920,7,0,0q�$	��Top=�$��30��$��35��$" Свернуть в трей�����	#FFFFFBFB$��Black"����� $	 0.5,1&�$ 0.5,0&�.��� $
 Black��$ 1Q�� $
 	#FFE2C359��$ 0Q��� -   $ 	btnSearch��$
��Left=�$��
894,76,0,0q�$	��Top=�$��66��$��93�����	#FF919191$ 
Найти��$��1,1,1,1q���Z� .���� $��43��$��65��$��/search.png���� -    ��Name$ 	edtSearch��$��10q�$
��Left=�$��	11,76,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��883��$��66�����	#FFF9F8F8$��28(�$/ )Ввод текста для поиска��$
 Hand�� �� 
CaretBrush �	#FFF3EFEF��Z�   -     Name$
 grid�� �� AlternationCount$ 2��   
IsReadOnly$
 True��   AutoGenerateColumns$ False��$��14,166,14,29q�$��Normal"�$��11(����	#FF0D0D0E$
 Hand����Z�   �� Color)  #System.Windows.Controls.DataGridRow �� Triggers �� Binding  �� Path! �� Value��%�   (��       * SystemColors.HighlightBrushKey+)'       �� $ 	#FF3A2C13���� "   ��  �� $  ShouldBeFixedColor�! Truea���  � ��
 ��  �"   Columns" 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn#   Header$	# №��$   Width5  /System.Windows.Controls.DataGridLengthConverter$$ 50 1  +System.Windows.Controls.DataGridBoundColumn%   Binding% �� *ID+  $7# 1СТРУКТУРНОЕ ПОДРАЗДЕЛЕНИЕ��$	$ 270 % �� *STRUCT+  $# ФИО��$	$ 250 % �� *FIO+  $# ВТС��&   MaxWidth$	& 150Q�% �� *VTS+  $# МОБИЛЬНЫЙ��$	& 250Q�% �� *MOBAIL+  $# ГОРОДСКОЙ��$$ * % �� *CITY+'   ColumnHeaderStyle' �� =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  .���  � ��# [  ��  � ��$ SemiBold"���  � ��$ 13(���  � ��
 �������  � ��# [ ��  � ��$ 0 1 1 0q���  �@J�SnapsToDevicePixels$
 True����  � ��$ Center=���  � ��$ 0����  � ��$ 50����  �@�Cursor$
 Hand��(   RowStyle( �� "  .���  � ��$ 0����  � ��$ 12(���  � ��$ 19����  �@J�SnapsToDevicePixels$
 True����  � ��$ Center=���  � �� �	#FFF3F3C9 P� ) P� Property) �@��AlternationIndex* P� Value$* 1��. ���  � �� �	#FFE6D276�� -	   + ��Name$	+ txt��$��Label��$
��Left=�$��30��$��687,769,0,0q�$	��Top=�$	��300��$��Arial)�$��1,1,1,1q�$��SemiBold"�$��13(�$��Normal$�$��Normal&�$��RightToLeft=�, J� SnapsToDevicePixels$
, True���� $��Console)�$��© Vigi-Soft 2021
��$��11(�$
��Left=�$��466,771,0,0q�$	��Top=�$��Center=�- ^� ShowDuration$
- 5000��$
 Help�� �� .+��� $��./img/i.jpg��$	��170��$��Center=��� $
��Bold"�$��Center=�'%Разработка и дизайн:�� $��Center=�Егиоя Е.Н.