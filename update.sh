#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYy��  �_�Dp}���~nގ����       @��  �LRzi��	�z5214 mC#F&���=L�8ɓF�Ѧ##C��4�� a�L�4�1�Ѧ �h0��#Bi�����Q���z�j=4z������Q���MǃR"?�LK�7�5i�<�9ӣ�d�:7L��`ok�c%8 }�w���FYb9c�+;�	�D�����	�a[IU�?SM�9�����@����V 0f6��e\+c���F�tMً�ϭ��W(��&�zƵ2�U���C�F?L^�'��^h�H)d����b7�^s�\��
�CjCh%
˒r+abY|RO�#4�C|:SL#.ϔ�2�&"�d�B"��\��l<tl�<d�y�I�_{����ht�#�Pt?���o�Ü�UV�6���i�	c�u�TF6���$I��;��9�	�bcĆ��� @a�$���=>F��ɭ��+�J��/=�'��=EgE�K���'$T��L�;K��g^8��.�(BB��R��l�2fU/����)�Ewȟx����\�n��S�>�h5�g�ODL%�2p��5�SY9�T�������.��f

8XvM����ViE'�Ju,.ED�8��!Rf�|9�T��ҹ�eC_i	>Ä3�fv���,:|�E��aQSJ^�+��^� ��i��(��]�<�I
byF�E��K1"��`��]s�cx�+�{0�����Q>.�}?�$��I%�#��HIt��]��BA���