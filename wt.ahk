EnvGet, softDir, soft
;MsgBox, %softDir%

SetTitleMatchMode,RegEx
#InstallKeybdHook
;#c::run Calc
;;☆★☆★☆★☆★☆★ Alias ☆★☆★☆★☆★☆★ 
:*:]d::
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm
SendInput %CurrentDateTime%
return
:*:[d::
FormatTime, CurrentDateTime,, yyyy-MM-dd 
SendInput %CurrentDateTime%
return




;::shl::<shl>`n`n</shl>{up 1}
;::sf::select * from
;::st::select t.* from  t{left 2}


^!e::
RunOrActivateProgram(softDir . "\everedit\everedit.exe") 
return
#t::
RunOrActivateProgram(softDir . "\totalcmd\TOTALCMD64.EXE")
return

; Function to run a program or activate an already running instance 
RunOrActivateProgram(Program, Param="", WorkingDir=""){ 
    SplitPath Program, ExeFile 
    Process, Exist, %ExeFile% 
    PID = %ErrorLevel% 
    if (PID = 0) { 
    Run, %Program% %Param%, %WorkingDir%
    }else{ 
    WinActivate, ahk_pid %PID% 
    } 
} 
#s::Run "C:\soft\Everything\Everything.exe"

:*:l@::liuwentao@gmail.com
:*b0:<em>::</em>{left 5}
:*:btw::by the way
:*:wjx::☆★
;;===================== osqledit =====================

#IfWinActive ahk_class ahk_class Afx:400000:8:10003:0:* 
::s::select * from 
::st::select t.*,rowid from  t{left 2}
::f:: from 
::w:: where
::sc:: select count(1) from T
::sd::select from dual{left 10}
:o:td::To_Date('', 'yyyy-mm-dd'){left 16}
:o:tdt::To_Date('', 'yyyy-mm-dd hh24:mi:ss'){left 27}
#IfWinActive
;;===================== osqledit =====================

;;===================== TC+SVN =====================
#IfWinActive ahk_class TTOTAL_CMD

#c::
 	Send ^3
    param =/command:commit /path:"%clipboard%"
    RunOrActivateProgram("C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe",param,"")
Return

#u::
 	Send ^3
     param =/command:update /path:"%clipboard%"
    RunOrActivateProgram("C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe",param,"")
Return

#q::
	Send ^3
	param=/command:log /path:"%clipboard%"
	RunOrActivateProgram("C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe",param,"")
	Return
#IfWinActive

;;===================== TC+SVN =====================

;设置在cmd里面可以使用c+V
#IfWinActive ahk_class ConsoleWindowClass
	^v::
	send %Clipboard%
return

