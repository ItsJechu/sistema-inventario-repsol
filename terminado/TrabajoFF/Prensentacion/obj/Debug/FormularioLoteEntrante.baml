   M S B A M L   `   `   `  ����H  DPrensentacion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:PrensentacionPrensentacion  5   	   *    $Prensentacion.FormularioLoteEntrante   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Prensentacion     5   	     � Title$  FormularioLoteEntrante��5   	   $	��450��6(   $	��800��65   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��13* �6   �� 5      $	��40* �6   �� 5      $
��343* �6   .+�5   
   �� -   5         ��Name$ btnregistrar��5      $��	registrar��6'   $
��Left=�6;   $��
369,30,0,0q�6V   $	��Top=�6j   $��75��6�   $��2��6�   �� 5   
   -   5         ��Name$ txtcontenido��5      $
��Left=�6(   $��23��6C   $��7,36,0,0q�6O    �� TextWrapping$
 Wrap=�6a   $	��Top=�6u   $	��120��6�   $��2��6�   �� 5   
   -   5        $ txtfecha��5      $
��Left=�6$   $��23��6?   $��7,64,0,0q�6K   $
 Wrap=�6]   $	��Top=�6q   $	��120��6�   $��2��6�   �� 5   
   -   5        $ txttipo��5      $
��Left=�6#   $��23��6>   $��7,92,0,0q�6J   $
 Wrap=�6\   $	��Top=�6p   $	��120��6�   $��2��6�   �� 5   
   -   5        $ txtID_amacen��5      $
��Left=�6(   $��23��6C   $��	7,120,0,0q�6O   $
 Wrap=�6b   $	��Top=�6v   $	��120��6�   $��2��6�   �� 5   
   $��	contenido��6   $
��Left=�6$   $��	25,36,0,0q�6?   $	��Top=�6R   $��2��6j   �� 5   
   $��Fecha  entrada��6   $
��Left=�6)   $��	25,64,0,0q�6D   $	��Top=�6W   $��3��6o   �� 5   
   $
��Tipo��6   $
��Left=�6   $��	19,89,0,0q�6:   $	��Top=�6M   $��1��6e   �� 5   
   $��
ID almacen��6   $
��Left=�6%   $��
20,117,0,0q�6@   $	��Top=�6T   $��2��6l   �� 5   
   $��	ALmacenes��6   $
��Left=�6$   $��
10,280,0,0q�6?   $	��Top=�6S   $��2��6k   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	dtalmacen��5      $
��Left=�6&   $��98��6A   $��
10,311,0,0q�6M   $	��Top=�6a   $	��580��6y   $��3��6�   �� 5   
   $
��Left=�6   $��
146,93,0,0q�6.   $	��Top=�6B   $	��120��6Z   $��2��6f   .@�5      �� $��Petroleo��6   �� 5      $��Combustible��6   5        5   
   -   5        $ 
dgentrante��5      $
��Left=�6'   $	��114��6B   $��	0,166,0,0q�6O   $	��Top=�6b   $	��505��6z   $��3��6�   �� 5   
   $��	No cmabia��6   $
��Left=�6$   $��
297,59,0,0q�6?   $	��Top=�6S   $��84��6k   $	��120��6w   $��2��6�   5!      5"      