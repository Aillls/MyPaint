   M S B A M L   `   `   `  ����@  <Paint, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PaintPaint  5   	       Paint.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Paint     5   	     � Title$  Paint��5   	   $	��450��6   $	��800��6$   ���	#FF969696.��5	      ]� .+�5
   
   o� -   5         o�Name$ menu1��5
      $	��Top=�6   
�������.@�5      m� $��Файл��6   .@�5      m� -   5         m�Name$ 
menuSaveAs��5      $��Сохранить как��6/   6F   m� 5      -   5        $ menuExit��5      $��
Выход��6-   6<   5      m� 5      $"��Редактирование��6   .@�5      m� -   5        $ menuUndo��5      $��
Назад��6-   6<   m� 5      -   5        $ 	menuClear��5      $��Очистить��6.   6@   m� 5      -   5        $ 
menuSelect��5      $��Выделить��6/   6A   5      m� 5      $��Помощь��6   .@�5      m� -   5        $ 
menuManual��5      $��Справка��60   6A   5      5      � 5   
   .+�5      �� 
�������$��36��6%   $	��410��60    �� RadiusX$ 5��6=    �� RadiusY$ 5��6I   $��2,2,0,0q�6U   $
��Left=�6f   $	��Top=�6�   �� 5      -   5         ��Name$ button_pen2��5      $
��Left=�6*   $��5,5,0,0q�6E   $	��Top=�6V   $��30��6n   $��30��6y    � UseLayoutRounding$ False��6�   ��6�   Z� ��6�   Z� .��5      �� $I��CC:\Users\Aillls\source\repos\Paint\Paint\Images\icons\pen-icon2.png��6   $
��Left=�6e   5      �� 5      -	   5        $ 
button_pen��5      $
��Left=�6)   $��5,40,0,0q�6D   $	��Top=�6V   $��30��6n   $��30��6y   $ False��6�   ��6�   Z� ��6�   Z� .��5      �� $H��BC:\Users\Aillls\source\repos\Paint\Paint\Images\icons\pen-icon.png��6   $
��Left=�6d   5      �� 5       -
   5        $ button_eraser��5       $
��Left=�6,   $��5,75,0,0q�6G   $	��Top=�6Y   $��30��6q   $��30��6|   $ False��6�   ��6�   Z� ��6�   Z� .��5!      �� $F��@C:\Users\Aillls\source\repos\Paint\Paint\Images\icons\eraser.png��6   $
��Left=�6b   5"      �� 5#      -   5        $ 
button_dot��5#      $
��Left=�6)   $��	5,110,0,0q�6D   $	��Top=�6W   $��30��6o   $��30��6z   $ False��6�   ��6�   Z� ��6�   Z� ��6�   Z� .��5$      �� $E��?C:\Users\Aillls\source\repos\Paint\Paint\Images\icons\small.png��6   $
��Left=�6a   5%      �� 5'      -   5         ��Name$ 
inkCanvas1��5'      $
��Left=�6-   $	��300��6H   $	��500��6U   $��	70,45,0,0q�6a   $	��Top=�6t   �� 5)      
�������$	��185��6%   $��85��61   $ 5��6=   $ 5��6I   $��595.5,15,0,0q�6U   $
��Left=�6k   $	��Top=�6�   �� 5*      -   5        $ button1��5*      $
��Left=�6&   $��
605,20,0,0q�6A   $	��Top=�6U   $��30��6m   $��30��6x   $ False��6�   ��6�   Z� ��6�   Z� .��5+      �� $F��@C:\Users\Aillls\source\repos\Paint\Paint\Images\colors\black.png��6   $��Right=�6b   5,      �� 5-      -   5        $ button2��5-      $
��Left=�6&   $��
650,20,0,0q�6A   $	��Top=�6U   $��30��6m   $��30��6x   $ False��6�   ��6�   Z� ��6�   Z� .��5.      �� $F��@C:\Users\Aillls\source\repos\Paint\Paint\Images\colors\brown.png��6   $��Right=�6b   5/      �� 50      -   5        $ button3��50      $
��Left=�6&   $��
695,20,0,0q�6A   $	��Top=�6U   $��30��6m   $��30��6x   $ False��6�   ��6�   Z� ��6�   Z� .��51      �� $G��AC:\Users\Aillls\source\repos\Paint\Paint\Images\colors\purple.png��6   $��Right=�6c   52      �� 53      -   5        $ button4��53      $
��Left=�6&   $��
740,20,0,0q�6A   $	��Top=�6U   $��30��6m   $��30��6x   $ False��6�   ��6�   Z� ��6�   Z� .��54      �� $D��>C:\Users\Aillls\source\repos\Paint\Paint\Images\colors\red.png��6   $��Right=�6`   55      �� 56      -   5        $ button5��56      $
��Left=�6&   $��
605,65,0,0q�6A   $	��Top=�6U   $��30��6m   $��30��6x   $ False��6�   ��6�   Z� ��6�   Z� .��57      �� $F��@C:\Users\Aillls\source\repos\Paint\Paint\Images\colors\green.png��6   $��Right=�6b   58      �� 59      -   5        $ button6��59      $
��Left=�6&   $��
650,65,0,0q�6A   $	��Top=�6U   $��30��6m   $��30��6x   $ False��6�   ��6�   Z� ��6�   Z� .��5:      �� $E��?C:\Users\Aillls\source\repos\Paint\Paint\Images\colors\pink.png��6   $��Right=�6a   5;      �� 5<      -   5        $ button7��5<      $
��Left=�6&   $��
695,65,0,0q�6A   $	��Top=�6U   $��30��6m   $��30��6x   $ False��6�   ��6�   Z� ��6�   Z� .��5=      �� $E��?C:\Users\Aillls\source\repos\Paint\Paint\Images\colors\blue.png��6   $��Right=�6a   5>      �� 5?      -   5        $ button8��5?      $
��Left=�6&   $��
740,65,0,0q�6A   $	��Top=�6U   $��30��6m   $��30��6x   $ False��6�   ��6�   Z� ��6�   Z� .��5@      �� $G��AC:\Users\Aillls\source\repos\Paint\Paint\Images\colors\yellow.png��6   $��Right=�6c   5A      �� 5C      -   5         ��Name$ sld_RedColor��5C      	 � Minimum$	 0Q�6+   
 � Maximum$	
 255Q�67   $
��Left=�6E   $��650,110,0,0q�6`   $	��Top=�6u   $��25��6�    �� Orientation$ Vertical=�6�   $	��200��6�   �� 5D      -   5        $ sld_GreenColor��5D      $	 0Q�6-   $	
 255Q�69   $
��Left=�6G   $��680,110,0,0q�6b   $	��Top=�6w   $��25��6�   $ Vertical=�6�   $	��200��6�   �� 5E      -   5        $ sld_BlueColor��5E      $	 0Q�6-   $	
 255Q�69   $
��Left=�6G   $��710,110,0,0q�6b   $	��Top=�6w   $��25��6�   $ Vertical=�6�   $	��200��6�   �� 5G      -   5         ��Name$
 lbl1��5G      $
��Left=�6"   $��665,325,0,0q�6=   $	��Top=�6R   $��50��6j   $��50��6u   $��1��6�   5H      5I      5J      