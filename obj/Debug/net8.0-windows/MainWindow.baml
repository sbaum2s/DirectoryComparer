   M S B A M L   `   `   `  ����L  HDirectoryComparer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:DirectoryComparerDirectoryComparer  5   	   "    DirectoryComparer.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:DirectoryComparer     5   	     � Title$  Directory Comparer��5   	   $	��400��6$   $	��600��64    � WindowState$ 	Maximized=�6C   .��5	      �  � ShowGridLines$ False��6   $��Stretch=�6!   $��Stretch=�6>    � ColumnDefinitions 5
   
   �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   $��50��6'    � 	Resources 5   
    �� 
TargetType �� Property �� Value��%�   '��       '�� M     �� 5      " ��6   .�5      ��  � ��$ 4,0,0,0q�6+   5      �� 5      " ��6   .�5      ��  � ��$ 4,4,0,0q�6+   5      5      .+�53   
   �� -   5        	 ��Name$	 OpenFolderLeftSide��53   D   $��0��6   $��0��6!   $��Open Folder��6.   $��Center=�6`   $	��Top=�6}   6�   �� 55   
   -   5        
 ��Name$
 numberItemsLeftSide��55   I   $��0��6   $��1��6    $��Number of items: ��6-   6I   �� 56   
   -   5        $
 pathItemsLeftSide��56   G   $��0��6   $��2��6    $��Path of items: ��6-   6G   �� 57   
   -   5         ��Name$ myListViewLeftSide��57   /   $��0��6   $��3��6"   ��58      �� 59      .R�5:      �� $
��Wrap=�66   ��6    �� *Name+��5;      �� 5<      " ��6$   .�5=   "   ��  � �� 6?   �� *ForegroundColor+ �� Triggers 5>   "   �� 5?   &    �� Binding 62   �� *
IsSelected+ �� RelativeSource �� *FindAncestor+ �� AncestorType ListBoxItem �� Value True5@   *   .a�5A   *   ��  � ��
 ��  �6G   �� 5B   *    � ��# ["��6G   5C   '   5E      5G      5H      5J      �� 5L   
   -   5        $	 OpenFolderMiddle��5L   D   $��1��6   $��0��6!   $��Open Folder��6.   $��Center=�6^   $	��Top=�6{   6�   �� 5M   
   -   5        $
 numberItemsMiddle��5M   I   $��1��6   $��1��6    $��Number of items: ��6-   6I   �� 5N   
   -   5        $
 pathItemsMiddle��5N   G   $��1��6   $��2��6    $��Path of items: ��6-   6G   �� 5O   
   -   5        $ myListViewMiddle��5O   H   $��1��6   $��3��6"    �� DisplayMemberPath$
 Name��6/   6H   �� 5Q   
   -	   5        $��2��5Q      $��0��6!   $��Show difference��6.   $��Center=�6H   $	��Top=�6e   6}   �� 5S   
   -
   5        $
 numberItemsCompareResult��5S   I   $��2��6   $��1��6    $��Number of items: ��6-   6I   �� 5T   
   $��2��6   $��2��6    $�� ��6-   �� 5U   
   -   5        $ myListViewCompareResult��5U   H   $��2��6   $��3��6"   $
 Name��6/   6H   5V      5W      