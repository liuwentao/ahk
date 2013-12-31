SetTimer,hipdaCheck,600000
return
;下载然后读取其中的内容.使用正则获得今天的内容
;source:http://ahk.haotui.com/thread-5755-1-3.html
hipdaCheck:
URLDownloadToFile,http://wwww.hi-pda.com/forum,hipda.htm
FileRead,txt,hipda.htm
FileDelete,hipda.htm
RegExMatch(txt,"S)今日: <em>(\d+?)</em>",count)
txt =
if (count1!=prev)
{
        msgbox % "HIPDA: "count1
        prev := count1
}
return