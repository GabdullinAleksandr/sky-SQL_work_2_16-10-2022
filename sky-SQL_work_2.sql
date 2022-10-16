PGDMP     0                	    z            sky-SQL_work_1    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    sky-SQL_work_1    DATABASE     m   CREATE DATABASE "sky-SQL_work_1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
     DROP DATABASE "sky-SQL_work_1";
                postgres    false            �            1259    16405    abs    TABLE     �   CREATE TABLE public.abs (
    id integer NOT NULL,
    name character(50) NOT NULL,
    fk_author integer NOT NULL,
    price numeric NOT NULL,
    description character(300),
    fk_address integer NOT NULL,
    is_published boolean NOT NULL
);
    DROP TABLE public.abs;
       public         heap    postgres    false            �            1259    16402    address    TABLE     �   CREATE TABLE public.address (
    id_address integer NOT NULL,
    address_sity text NOT NULL,
    address_metr character(100) NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    16399    author    TABLE     b   CREATE TABLE public.author (
    id_author integer NOT NULL,
    author character(50) NOT NULL
);
    DROP TABLE public.author;
       public         heap    postgres    false            �          0    16405    abs 
   TABLE DATA           `   COPY public.abs (id, name, fk_author, price, description, fk_address, is_published) FROM stdin;
    public          postgres    false    211   �       �          0    16402    address 
   TABLE DATA           I   COPY public.address (id_address, address_sity, address_metr) FROM stdin;
    public          postgres    false    210   �       �          0    16399    author 
   TABLE DATA           3   COPY public.author (id_author, author) FROM stdin;
    public          postgres    false    209   �       h           2606    16409    abs abs_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.abs
    ADD CONSTRAINT abs_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.abs DROP CONSTRAINT abs_pkey;
       public            postgres    false    211            f           2606    16411    address address_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id_address);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    210            d           2606    16413    author author_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id_author);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public            postgres    false    209            i           2606    16419    abs key_address    FK CONSTRAINT     �   ALTER TABLE ONLY public.abs
    ADD CONSTRAINT key_address FOREIGN KEY (fk_address) REFERENCES public.address(id_address) NOT VALID;
 9   ALTER TABLE ONLY public.abs DROP CONSTRAINT key_address;
       public          postgres    false    211    210    3174            j           2606    16424    abs key_author    FK CONSTRAINT     �   ALTER TABLE ONLY public.abs
    ADD CONSTRAINT key_author FOREIGN KEY (fk_author) REFERENCES public.author(id_author) NOT VALID;
 8   ALTER TABLE ONLY public.abs DROP CONSTRAINT key_author;
       public          postgres    false    3172    211    209            �   �  x��Z�n�]���zg�M��<��@6�ҫIL ��d��eq لkbĎ�3YRd��$��_���|A>!uN��%ˏ���"����[�S��2��$?˓b���g��8��{Š�ˇ-���4��]�|?��\At{�N��	��N���z�Dh]|R�ķ\>���|$Oe�����7��ϋ�<��1�I�yq��.O�Hܗ���qO!U�0z�D��x��%��D�b_&�ע�G,�v��~��w�R�#(C����Ld|�{H0�Pv�I粮Qq$���1Y���Odo��X��]qO�����{������dQ��0�)*��zY���3r3�ƅ�H�oۯ3��ľ߭u�[�r� ��J�[���>t���+YN�K�y��[=���d�0L$��,�!��sy'N"���9�څh.������L���/0�Hn�0#|��aYM
���"<�]��q��XH���`�}���m_����Wd0'��E���܅b��\����q��Q��+���0Nd7��uY��^`�ǲq�|�fA�^�}M�P���^4�#�cbC�� uWZ��r2������`f����姟���xb�� 	� �+��Ă�P}�YP��ޡ�P4���e�~Lkʬ_�l�-{�efY C�x�ֿ�`W$��YA�3u�T���!/&�B��������z M� �Ġz�+艱������n�������?��~��-w��_n������[fF1���'�%e�8�8Wǟ������I�M$g�j�Ì�&���CS��L��аy� b;t2p�>��G]v���1=#=�W�\�vq����9G�%6��JjL=D��3�� �`�@�7H�����ȹ��sBi�~#�zE�P�RF$��#��y
|������E�d���ɺE��L���;�_)��6`��O߆�*����7I�Oc�����b�� ��YEc�Qy�"*c!�}i��*�W�C-s��iM�4`��笚�j��d�G���Zr,`w��e`:3�)V�t�U�h9���8B�12�/@�����N%���� ay0 yf�����C����L�K&�H�-�C({�����ө�۷|�C��;�-�[��Z�E:\t:0~����0���2Y2���\�ײH(lf�Ks~����T��D��t�1G�A��4*S��$ČT;��Jd��!n�.�-�v�@
W�k ���߹&ⴸ�Y�1��h�D��DjZ�򅬜�k��7�	X��B���|�<� ��J�1�jY�BIZ&�A5��3�T��ԫ���"�4���-�E�U1�9��K�V���U��ޞ�Oj�y7�[�Ί�<&�����\�/�������r���Pf+M.d��°���j��yN}U�K�]�K��C�WLm���#>�{(R����������m��H�*2~���od����p�}���=%�������cw�yb���;A�}����M3�z����9F�dX
��R����q�C��(�d��(sM�`4�R:Ib���� �E�-�<�3��=�������)�����t7;�o�6�k
�	{pk��G���$W���Y��i��R�6��(#�W�2��\>)6��#"�b�"Ȓ�� �f<��pW�R�#�ԠNCk�n�@5W%A�����6�Hۛ"]�fKc��U2�)Q,Aq~��#K�l{҃�J���ϒ
��D���@=��Жں�+!�Ct��0��y�Qه�����;x���M���ځ]wt��@[���P�lK^�^�&���U��z�j���$�t�	rĨ�U�6�=�������ND�@&��}����+����qB�@�4�:3��
qj������*����U+�:u��(Up@�'L�+^�T�LP�,8e�-�i_+��F|�)�XV(?�$F��&��F�� ,�h�����Q�7��e� f��rvޱ�)����ߠ^J:�'�i8cحNX��3�z����;Ғ���v�9��!3vBd6W:dx�e�n����w�����b����.�Z�5�[��j��� D/.�I!GX)��?�^Oi��4\&o+��z�@�<j\3��9�U��W�� �	MzR&���OΌiO�T̂�ɪ����"lv�%� ���>�98jƀ��Ғ��3z=źݢ�v8�'�l�l�7�G�h�^�M�h̅;� �qX���R��Ms�yo�X���\�v&��CCU�ý��^�u����7�>?�B����0���6w���;��X���
�(k�S�v�\��Ti�G΢8aC�!l,��GvFz0���D��n�T#v:�/X���+�łQ�R��w�bm���gh��z���+��Ŗ73�M��sm7jU����:|��Is�<K(��~|Ն��o��ߢ���ĺO�>�С��}��NYi�Y�e�N1b�Hҍe�"�o}}jyg-v��
��>������E�T��3�ε����y .'��v�v���qV�Oe��?4�\X�ƶ1�R��Amg}�N�M�.��FF�� b9n*N����ɲ����D+_����i@ڢ6H�h	��s0M��{�C�#.g��k��ƍh^;���g�Y�=��-�����?��<BE:�ZO�&��!�VW��ިYmI��v*?��n�	\�'г}��nT���Y��}G�B��_��4�Y^�-����)ϴ\��E8�dC$) �pf�b���Y��.��|u�S�����m�o��ψ�I��&%�Tf6
��J
�M��X�8C�|�?��S�gS/�޿��S�����٧�� D'�돃���r�;7<P#xX0$�C7/L�z����,,k'%�1iD�����Z�K��X���J)�D�lHI6��s��f���)"�'NՁŢQ��3�v6����bp-k��,$�����������<�e����NW3G��[��*�E��ey�:���2�/�wj�L;U+����ɢߎd�
<�Sq�ծ3�S����}�v�������4�      �     x�͖K��0D��)|>���a ,@	�e�"V��I�P}#*H^��-u˟E=u�%� {�2�)�@#ok$�9��P�Y}��F70T��g���;W\P"m��`��n�S9�Տ2g>}��%��,��V��s��q�u�j�)c� � ������>��\V���\�[����0�/�X}�
3�5,�.D��)1��(�i���L��N�5�C���C�ی�C���~2�Ļ��]������z ��fI      �   f   x����	�0���d�N x��aj7P���P(;��F�#$�?�IO�� �8��@8�,��M�H�Q�#�fC'¡`U6I�`�yn��̛P��R�ս&Qӵc���UN     