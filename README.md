# vim
kyo vim config project

# Install:
    git clone http://git.oschina.net/iprintf/vim.git
    cd vim
    ./linux_install.sh

# Plugin
    项目化(ex-vimentry/ex-config)
        在项目根目录打开以.exvim结尾文件自动生成项目入口配置文件
        配置文件可以设置过滤的文件或目录
        配置完成后在左侧栏,R生成项目目录文件并且保存
        生成项目目录文件后再运行:Update生成项目搜索、符号等文件
        Update后才能使用全局搜索、符号查找和符号列表

    项目文件浏览嚣(ex-project)
        ,R  / :EXProjectBuild       重新生成项目文件
        光标定在文件中按回车直接打开，按t可以使用标签打开

    项目全局搜索(ex-gsearch)
        支持id-utils和grep搜索, 默认使用id-utils
        依赖ex-utility插件和id-utils工具(mkid)

        ,G / :EXGSearchToggle        开关全局搜索栏
        ,gg / :EXGSearchCWord        全局搜索单词
        ,gs / :GS key                命令行直接搜索

    符号查找(ex-tags)
        依赖ex-utility插件和ctags工具

        ,T / :EXTagsToggle           开关符号查找窗口
        ,] / :EXTagsCWord tag        查找符号并显示到查找窗口

    符号列表(ex-tagbar)
        ,L  / :EXTListToggle         开关符号列表

    增强%功能(ex-matchit)
        默认%只能跳转普通括号，增强版可以跳转HTML标记等

    书签标记(ex-showmarks)
        ,mt     开关书签标记显示
        ,mm     创建书签标记
        ,mh     清除当前行的标记
        ,ma     清除所有书签标记

        小写标记颜色
            hi default ShowMarksHLl ctermfg=LightGray guifg=LightGray
        大写标记颜色
            hi default ShowMarksHLu ctermfg=LightGray guifg=LightGray
        所有标记颜色
            hi default ShowMarksHLo ctermfg=LightGray guifg=LightGray
        多标记颜色
            hi default ShowMarksHLm ctermfg=LightGray guifg=LightGray

    模糊查找文件(ctrlp.vim)
        ctrl + p / :CtrlP       调出文件搜索列表窗口，实时模糊匹配输入
        ,B / :CtrlPBuffer       调出当前打开文件列表容器搜索
        ,F / :CtrlPMRUFiles     调出最近打开文件列表容器搜索
        ctrl + j/k              列表上下移动选择
        ctrl + v                垂直分屏打开选择文件
        ctrl + x                水平分屏打开选择文件
        ctrl + t                标签打开选择文件

    编辑文档时光穿梭机(undotree)
        可以在编辑的文档中列表所有修改的时间点(文档关闭后重新计算)
        ,u          打开文档修改历史窗口
            可以j/k选择时间点，按回车回到此修改点并且查看修改diff
        ,ESC        关闭窗口

    快速注释(nerdcommenter)
        ,cc         快速单行注释
        ,ca         切换单行注释符
        ,cs         性感的注释(批量注释)
        ,ci         自动判断注释或取消注释
        ,cy         先复制再注释
        ,cA         行尾注释
        ,cu         取消注释

    文件浏览嚣(nerdtree)
        F7          打开关闭文件浏览嚣
            选择按回车打开, 按t标签打开
            选择文件:Bookmark添加到书签中
            ?       得到帮助信息(功能非常强大)

    快速跳转(easymotion)
         ,,w   当前光标向下按单词头显示跳转字符
         ,,b   当前光标向上按单词头显示跳转字符
         ,,e   当前光标向下按单词尾显示跳转字符
         ,,ge  当前光标向上按单词尾显示跳转字符
         ,,f   当前光标向后查找字符显示跳转字符
         ,,F   当前光标向前查找字符显示跳转字符
         ,,h   当前光标向左按分隔符显示跳转字符
         ,,l   当前光标向右按分隔符显示跳转字符
         ,,k   当前光标向上按行显示跳转字符
         ,,j   当前光标向下按行显示跳转字符
         ,,s   全文搜索给搜索结果显示跳转字符，不会高亮搜索结果
         ,,/   全文搜索给搜索结果显示跳转字符

    显示/去除行尾空白字符(vim-better-whitespace)
        ,ws / :StripWhitespace  去除行尾空白字符

    快速对齐(vim-easy-align)
        对齐规则(分隔字符): <space> = : . | & # , "
        设置快捷键:
            可视模式为回车
                vmap <Enter> <Plug>(EasyAlign)
            普通模式为ga
                nmap ga <Plug>(EasyAlign)

        用法:
            选取多行(vip/gv)后:
            <Enter>=            对齐等号表达式(PHP数组)
            <Enter>:            对齐冒号表达式(JSON)
            <Enter><space>      首个空格左对齐
            <Enter>2<space>     第二个空格左对齐
            <Enter>-<space>     倒数第一个空格左对齐
            <Enter>-2<space>    倒数第二个空格左对齐
            <Enter>*<space>     所有空格左对齐
            <Enter><Enter>...   两个回车代表右对齐与前面命令组合一致

            在普通模式下使用ga后跟以前命令可对当前行进行对齐操作

    快速更换常用符号(vim-surround)
        映射快捷键:(xmap对应c y d命令)
            xmap s <Plug>VSurround

        用法:
            添加:
                将当前光标所在单词添加双引号: ysiw"
                将当前光标所在单词添加标签包含: ysiw<p>
                将当前光标所在单词添加指定括号: ysiw{ / ysiw[ / ysiw(
                    左括号会添加空格, 右括号不会添加空格
                将整行添加指定引号: yss" / ys$" / ySS"(双引号会单独行)
                将两个单词添加引号: vees"
            删除:
                删除当前光标所在双引号: ds"
                删除当前光标所在标签包含: dst
                删除当前光标所在括号: ds{
            替换:
                将当前光标最近的单引号换成双引号: cs'"
                将当前光标最近的双引号换成单引号: cs"'
                将当前光标最近的双引号换成标签包含: cs"<p>
                将当前光标最近的标签包含换成双引号: cst"
                将当前光标最近的标签包含换成其它标签: cst<html>

    高效编写HTML(emmet)
        默认按键映射: ctrl+y ,

