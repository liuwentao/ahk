EnvGet, syncDir, sync
EnvGet, softDir, soft
EnvGet, uprofile, userprofile
if syncDir =
    MsgBox,没有配置同步盘的环境变量.
if softDir =
    MsgBox,没有配置软件的环境变量

vtype =ciku
if 0 >= 1
{
 vtype = %1%
}
if vtype = ciku
{

    FileCopyDir, %uprofile%\appdata\locallow\jjbxb, %syncDir%\Nuts\backup\jjbxb\save, 1
    FileRemoveDir, %syncDir%\Nuts\backup\jjbxb\save\tmp,1
    MsgBox,备份到网盘成功
}else if vtype = all
{
    FileCopyDir, %softDir%\jjbxb, %syncDir%\Nuts\backup\jjbxb, 1
    FileCopyDir, %uprofile%\appdata\locallow\jjbxb, %syncDir%\Nuts\backup\jjbxb\save, 1
    FileRemoveDir, %syncDir%\Nuts\backup\jjbxb\save\tmp,1
    MsgBox,全部备份成功
}
else if vtype = rall
{
    FileCopyDir, %syncDir%\Nuts\backup\jjbxb, %softDir%\jjbxb, 1
    FileCopyDir, %syncDir%\Nuts\backup\jjbxb\save, %uprofile%\appdata\locallow\jjbxb, 1
    MsgBox,全部恢复成功
}
else if vtype = rciku
{
    FileCopyDir, %syncDir%\Nuts\backup\jjbxb\save,%uprofile%\appdata\locallow\jjbxb 1
    MsgBox,从网盘恢复成功
}