FasdUAS 1.101.10   ��   ��    l      ����  i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    k    �    	 
 	 r         c         o     ���� 0 argv    m    ��
�� 
ctxt  o      ���� 0 inp   
     l   ��  ��     set inp to ""     �    s e t   i n p   t o   " "      l   ��������  ��  ��        l    ��  ��    + % STEP 1: GET PATH TO CHOSEN DOCUMENT      �   J   S T E P   1 :   G E T   P A T H   T O   C H O S E N   D O C U M E N T        Q    B     Z   	 8   !�� "   =   	  # $ # o   	 
���� 0 inp   $ m   
  % % � & &   ! k    2 ' '  ( ) ( l   �� * +��   *  
 If Hotkey    + � , ,    I f   H o t k e y )  -�� - Q    2 . / 0 . O    ( 1 2 1 r    ' 3 4 3 n    % 5 6 5 1   # %��
�� 
ppth 6 4   #�� 7
�� 
docu 7 m   ! "����  4 o      ���� 0 pdf_path   2 4    �� 8
�� 
capp 8 l    9���� 9 I   �� : ;
�� .earsffdralis        afdr : m    ��
�� appfegfp ; �� <��
�� 
rtyp < m    ��
�� 
ctxt��  ��  ��   / R      �� =��
�� .ascrerr ****      � **** = o      ���� 0 msg  ��   0 L   0 2 > > o   0 1���� 0 msg  ��  ��   " k   5 8 ? ?  @ A @ l  5 5�� B C��   B   if File Action,     C � D D "   i f   F i l e   A c t i o n ,   A  E�� E r   5 8 F G F o   5 6���� 0 inp   G o      ���� 0 pdf_path  ��    R      �� H��
�� .ascrerr ****      � **** H o      ���� 0 msg  ��    L   @ B I I o   @ A���� 0 msg     J K J l  C C��������  ��  ��   K  L M L l   C C�� N O��   N ) # STEP 2: GET PATH TO CLOUD SERVICE     O � P P F   S T E P   2 :   G E T   P A T H   T O   C L O U D   S E R V I C E   M  Q R Q Q   C� S T U S k   F� V V  W X W r   F S Y Z Y c   F Q [ \ [ b   F O ] ^ ] l  F M _���� _ I  F M�� ` a
�� .earsffdralis        afdr ` m   F G b b � c c  c u s r a �� d��
�� 
rtyp d m   H I��
�� 
ctxt��  ��  ��   ^ m   M N e e � f f � L i b r a r y : A p p l i c a t i o n   S u p p o r t : A l f r e d   2 : W o r k f l o w   D a t a : c o m . h a c k a d e m i c . s e n d : s e t t i n g s . j s o n \ m   O P��
�� 
ctxt Z o      ���� 0 settings_path   X  g h g l  T T��������  ��  ��   h  i j i r   T ` k l k I  T \�� m��
�� .rdwropenshor       file m 4   T X�� n
�� 
file n o   V W���� 0 settings_path  ��   l l      o���� o o      ���� 0 setting_file_  ��  ��   j  p q p r   a l r s r l  a h t���� t I  a h�� u��
�� .rdwrread****        **** u o   a d���� 0 setting_file_  ��  ��  ��   s o      ���� 	0 json_   q  v w v I  m t�� x��
�� .rdwrclosnull���     **** x o   m p���� 0 setting_file_  ��   w  y z y l  u u��������  ��  ��   z  { | { l  u u�� } ~��   }   simplify JSON    ~ �      s i m p l i f y   J S O N |  � � � r   u � � � � J   u � � �  � � � n  u | � � � 1   x |��
�� 
txdl � 1   u x��
�� 
ascr �  ��� � J   | � � �  � � � b   | � � � � o   | ��
�� 
ret  � 1    ���
�� 
lnfd �  � � � o   � ���
�� 
ret  �  � � � 1   � ���
�� 
lnfd �  � � � 1   � ���
�� 
tab  �  � � � 5   � ��� ���
�� 
cha  � m   � ����� )
�� kfrmID   �  � � � 5   � ��� ���
�� 
cha  � m   � ����� (
�� kfrmID   �  � � � m   � � � � � � �  " �  � � � m   � � � � � � �  , �  � � � m   � � � � � � �  { �  ��� � m   � � � � � � �  }��  ��   � J       � �  � � � o      ���� 	0 astid   �  ��� � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr��   �  � � � r   � � � � � n   � � � � � 2  � ���
�� 
citm � o   � ����� 	0 json_   � o      ���� 
0 json_l   �  � � � r   � � � � � o   � ����� 	0 astid   � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   remove empty items    � � � � &   r e m o v e   e m p t y   i t e m s �  � � � r   � � � � � J   � � � �  � � � m   � � � � � � �   �  � � � m   � � � � � � �    �  ��� � m   � � � � � � �  :  ��   � o      ���� 0 itemstodelete itemsToDelete �  � � � r   � � � � � J   � �����   � o      ���� 0 	cleanlist 	cleanList �  � � � Y   �7 ��� � ��� � Z 2 � ����� � H   � � E  � � � o  ���� 0 itemstodelete itemsToDelete � J   � �  ��� � n  � � � 4  �� �
�� 
cobj � o  ���� 0 i   � o  ���� 
0 json_l  ��   � r  !. � � � n !) � � � 4  $)�� �
�� 
cobj � o  '(���� 0 i   � o  !$���� 
0 json_l   � n      � � �  ;  ,- � o  ),���� 0 	cleanlist 	cleanList��  ��  �� 0 i   � m  ����  � I 
�� ���
�� .corecnte****       **** � o  ���� 
0 json_l  ��  ��   �  � � � l 88����~��  �  �~   �  � � � l 88�} � ��}   �   JSON keys to AS vars    � � � � *   J S O N   k e y s   t o   A S   v a r s �  � � � Y  8� ��| � ��{ � Z  H� � � ��z � =  HT � � � n HP �  � 4  KP�y
�y 
cobj o  NO�x�x 0 i    o  HK�w�w 0 	cleanlist 	cleanList � m  PS �  s e r v i c e � r  We n  Wa 4  Za�v
�v 
cobj l ]`	�u�t	 [  ]`

 o  ]^�s�s 0 i   m  ^_�r�r �u  �t   o  WZ�q�q 0 	cleanlist 	cleanList o      �p�p 0 service_   �  =  ht n hp 4  kp�o
�o 
cobj o  no�n�n 0 i   o  hk�m�m 0 	cleanlist 	cleanList m  ps �  p a t h �l r  w� n  w� 4  z��k
�k 
cobj l }��j�i [  }� o  }~�h�h 0 i   m  ~�g�g �j  �i   o  wz�f�f 0 	cleanlist 	cleanList o      �e�e 	0 path_  �l  �z  �| 0 i   � m  ;<�d�d  � I <C�c�b
�c .corecnte****       **** o  <?�a�a 0 	cleanlist 	cleanList�b  �{   � �` r  �� !  c  ��"#" o  ���_�_ 	0 path_  # m  ���^
�^ 
alis! o      �]�] 0 cloud_folder  �`   T R      �\$�[
�\ .ascrerr ****      � ****$ o      �Z�Z 0 msg  �[   U L  ��%% o  ���Y�Y 0 msg   R &'& l ���X�W�V�X  �W  �V  ' ()( l  ���U*+�U  * ( " STEP 3: MOVE DOC TO CLOUD FOLDER    + �,, D   S T E P   3 :   M O V E   D O C   T O   C L O U D   F O L D E R  ) -.- l ���T�S�R�T  �S  �R  . /�Q/ Q  ��0120 O  ��343 k  ��55 676 r  ��898 c  ��:;: 4  ���P<
�P 
psxf< o  ���O�O 0 pdf_path  ; m  ���N
�N 
alis9 o      �M�M 0 f  7 =>= I ���L?@
�L .coremoveobj        obj ? 4  ���KA
�K 
fileA o  ���J�J 0 f  @ �IB�H
�I 
inshB o  ���G�G 0 cloud_folder  �H  > C�FC L  ��DD b  ��EFE b  ��GHG m  ��II �JJ  M o v e d   F i l e   t o  H o  ���E�E 0 service_  F m  ��KK �LL  !�F  4 m  ��MM�                                                                                  MACS  alis    t  Macintosh HD               ����H+  ҍK
Finder.app                                                     ԲY�`�        ����  	                CoreServices    ���*      �`D    ҍKҍHҍG  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  1 R      �DN�C
�D .ascrerr ****      � ****N o      �B�B 0 msg  �C  2 L  ��OO o  ���A�A 0 msg  �Q  ��  ��       �@PQRRS�?TUVWXYZ[\�>�=�@  P �<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-
�< .aevtoappnull  �   � ****�; 0 inp  �: 0 pdf_path  �9 0 settings_path  �8 0 setting_file_  �7 	0 json_  �6 	0 astid  �5 
0 json_l  �4 0 itemstodelete itemsToDelete�3 0 	cleanlist 	cleanList�2 0 service_  �1 	0 path_  �0 0 cloud_folder  �/ 0 f  �.  �-  Q �, �+�*]^�)
�, .aevtoappnull  �   � ****�+ 0 argv  �*  ] �(�'�&�( 0 argv  �' 0 msg  �& 0 i  ^ :�%�$ %�#�"�!� ����� b e���������������� � � � ��
�	��� � � ������� ��M��������IK
�% 
ctxt�$ 0 inp  
�# 
capp
�" appfegfp
�! 
rtyp
�  .earsffdralis        afdr
� 
docu
� 
ppth� 0 pdf_path  � 0 msg  �  � 0 settings_path  
� 
file
� .rdwropenshor       file� 0 setting_file_  
� .rdwrread****        ****� 	0 json_  
� .rdwrclosnull���     ****
� 
ascr
� 
txdl
� 
ret 
� 
lnfd
� 
tab 
� 
cha � )
� kfrmID  � (�
 

�	 
cobj� 	0 astid  
� 
citm� 
0 json_l  � 0 itemstodelete itemsToDelete� 0 	cleanlist 	cleanList
� .corecnte****       ****� 0 service_  � 	0 path_  
�  
alis�� 0 cloud_folder  
�� 
psxf�� 0 f  
�� 
insh
�� .coremoveobj        obj �)��&E�O 4��  ( *����l / 
*�k/�,E�UW 	X 
 �Y �E�W 	X 
 �OY���l �%�&E�O*��/j E` O_ j E` O_ j O_ a ,_ _ %_ _ _ )a a a 0)a a a 0a a a  a !a "vlvE[a #k/E` $Z[a #l/_ a ,FZO_ a %-E` &O_ $_ a ,FOa 'a (a )mvE` *OjvE` +O 7k_ &j ,kh _ *_ &a #�/kv _ &a #�/_ +6FY h[OY��O Uk_ +j ,kh _ +a #�/a -  _ +a #�k/E` .Y #_ +a #�/a /  _ +a #�k/E` 0Y h[OY��O_ 0a 1&E` 2W 	X 
 �O 8a 3 .*a 4�/a 1&E` 5O*�_ 5/a 6_ 2l 7Oa 8_ .%a 9%UW 	X 
 �R �__ Z / U s e r s / s m a r g h e i m / D o w n l o a d s / T r a v e l   s u b   P h D . p d fS �`` � M a c i n t o s h   H D : U s e r s : s m a r g h e i m : L i b r a r y : A p p l i c a t i o n   S u p p o r t : A l f r e d   2 : W o r k f l o w   D a t a : c o m . h a c k a d e m i c . s e n d : s e t t i n g s . j s o n�? T �aa � {  	 " s e r v i c e " :   " C o p y " ,  	 " p a t h " :   " M a c i n t o s h   H D : U s e r s : s m a r g h e i m : C o p y : 0 4   -   S p r i n g   2 0 1 4 : "  }U ��b�� b  cc �dd  V ��e�� e   fghijkYlmnopqZrst������������������������������f �uu  g �vv  h �ww  i �xx  j �yy  s e r v i c ek �zz  :  Y �{{  C o p yl �||  m �}}  n �~~  o �  p ���  p a t hq ���  :  Z ��� f M a c i n t o s h   H D : U s e r s : s m a r g h e i m : C o p y : 0 4   -   S p r i n g   2 0 1 4 :r ���  s ���  t ���  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  W ����� �   � � �X ����� �  jYpZ��������������������������  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  [�alis    ~  Macintosh HD               ����H+   ��04 - Spring 2014                                               Y���@        ����  	                Copy    ���*      ��m     �� �� )  5Macintosh HD:Users: smargheim: Copy: 04 - Spring 2014   "  0 4   -   S p r i n g   2 0 1 4    M a c i n t o s h   H D  %Users/smargheim/Copy/04 - Spring 2014   /    ��  \>alis    :   Macintosh HD               ����H+   ƗTravel sub PhD.pdf                                             ��6J�PDF PDFp����  I                 ���*      �6��    &  T r a v e l   s u b   P h D . p d f    M a c i n t o s h   H D  ,Users/smargheim/Downloads/Travel sub PhD.pdf  /    ��      �>  �=  ascr  ��ޭ