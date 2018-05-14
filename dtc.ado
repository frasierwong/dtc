capture program drop dtc

program define dtc

version 15

format hscode %20.0f

encode itemcode,gen(itemcoden)

//Method 1

by itemcoden hscode,sort:gen mapping = _N

//Method 2

display "itemcoden和hscode的匹配情况见数据编辑器"

display "可能存在的异常情况：（输出结果为行数）"

sort itemcoden

forval i=1(1)29999{
if itemcoden[`i']==itemcoden[`i'+1]{
if hscode[`i']==hscode[`i'+1]{
continue
}
else{
display `i'
}
}
else{
continue
}
}
end
