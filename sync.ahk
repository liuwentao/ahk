EnvGet, syncDir, sync
EnvGet, softDir, soft
EnvGet, uprofile, userprofile
if syncDir =
    MsgBox,û������ͬ���̵Ļ�������.
if softDir =
    MsgBox,û����������Ļ�������

vtype =ciku
if 0 >= 1
{
 vtype = %1%
}
if vtype = ciku
{

    FileCopyDir, %uprofile%\appdata\locallow\jjbxb, %syncDir%\Nuts\backup\jjbxb\save, 1
    FileRemoveDir, %syncDir%\Nuts\backup\jjbxb\save\tmp,1
    MsgBox,���ݵ����̳ɹ�
}else if vtype = all
{
    FileCopyDir, %softDir%\jjbxb, %syncDir%\Nuts\backup\jjbxb, 1
    FileCopyDir, %uprofile%\appdata\locallow\jjbxb, %syncDir%\Nuts\backup\jjbxb\save, 1
    FileRemoveDir, %syncDir%\Nuts\backup\jjbxb\save\tmp,1
    MsgBox,ȫ�����ݳɹ�
}
else if vtype = rall
{
    FileCopyDir, %syncDir%\Nuts\backup\jjbxb, %softDir%\jjbxb, 1
    FileCopyDir, %syncDir%\Nuts\backup\jjbxb\save, %uprofile%\appdata\locallow\jjbxb, 1
    MsgBox,ȫ���ָ��ɹ�
}
else if vtype = rciku
{
    FileCopyDir, %syncDir%\Nuts\backup\jjbxb\save,%uprofile%\appdata\locallow\jjbxb 1
    MsgBox,�����ָ̻��ɹ�
}