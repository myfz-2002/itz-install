#!/bin/bash
#该命令行文件 由沐雨酆臻(1755711948)编写制作
# 转载和使用请不要擅自删除本文 谢谢！


#使用教程:
#注意:必须先用黑阈开启无线调试!!!!
#1.先把这个文件复制到(/data/local/tmp)文件夹里 随便在根目录创建一个文件夹比如"myfz"文件夹 然后把这个"install.sh"复制进"myfz"文件夹 这样就得到路径(/sdcard/myfz/install.sh) 不能在QQ文件夹里使用
#2.用黑阈把(/sdcard/myfz/install.sh)刚创建的复制到(/data/local/tmp) 命令:(cp /sdcard/myfz/install.sh /data/local/tmp/)
#3.成功复制不报错后 首先运行这段命令:(chmod -R 777 /data/local/tmp/install.sh) 提一下权限
#然后运行这个(sh /data/local/tmp/install.sh) 会自己生成一个文件夹 叫你把i主题的降级安装包复制进去
#4.复制好后运行一下 (sh /data/local/tmp/install.sh -h)会说明用法
#
# 本文件是本地安装包一键安装命令行
#最低适配 Android 11带无线调试的系统
#适配 vivo Origin OS 1.0的系统软件降级其他版本自行测试不保证成功
#
#使用这个的好处是什么?
# 1.把这个install.sh复制到/data/local/tmp/以后就可以长效的一键安装
#2.以后想再次降级去指定文件夹放安装包 开启无线调试到黑阈再次运行就行了
#
#命令顺序:
#
#1.复制本文件install.sh( cp /sdcard/myfz/install.sh /data/local/tmp/ )别直接复制这命令注意看上面教程
#
#2.给本文件升级一下权限( chmod -R 777 /data/local/tmp/install.sh )
#
#3.首次运行生成文件夹( sh /data/local/tmp/install.sh ) 然后把i主题安装包按提示复制进那个文件夹里
#
#3.上面操作完成后 重新运行( sh /data/local/tmp/install.sh )
#
#以上所有教程 不会去群里问我 (沐雨酆臻 QQ:1755711948)
#

#项目地址:https://github.com/myfz-2002/itz-install


#注意! 下方命令已经写好了不要乱修改
RED_COLOR="\033[31m"
END="\033[0m"
path="/data/local/tmp/"
#懒得整  多余一下
file="/data/local/tmp/i.apk"
dir="/storage/emulated/0/myfz/theme/"
cr="curl"
if [[ $1 == "-version" || $1 == "-v" || $1 == "--version" ]];then
echo "myfz-shell_itz-install version 1.0"
fi
if [[ $1 == "-help" || $1 == "-h" || $1 == "" || $1 == "--help" ]];then
echo "version 1.0"
echo "Usage: install [command]                             install [ -h | --help | -v | --version ]"
echo -e "\nManage your dependencies:"
echo -e "\n\n  ${RED_COLOR}·${END}-down,-d          使用网络下载降级 例如: sh install.sh -d http://abc.com"
echo -e "\n\n  ${RED_COLOR}·${END}-file,-f           使用本地文件降级 可以直接使用文件名 不过必须在myfz文件夹里 例如:文件夹有 i主题7.3.apk则命令为  sh install.sh -f i主题7.3.apk"
echo -e "\n\n\n\n\n  该命令行仅为i主题所使用\n该文件(install)由沐雨酆臻编写 更新!\nQQ:1755711948 有任何问题请在群:774791146@我或者加我的QQ 给我反馈问题 所有参数模块已经写好胡乱修改导致出现任何问题 请自己负责!"
fi
echo -e "${RED_COLOR}注:该方法使用 (安卓11) (Origin OS1.0)的手机编写 使用其他请自行调试 本方法不确保百分百成功${END}" 
if [[ $1 == "-f" || $1 == "-file" ]];then
if [ -d ${dir} ];then
itz=$(find ${dir} -name '*.apk')
if [ -f ${itz} ];then
echo "已发现文件${itz}"
echo "请附带参数安装旧版 例: -f abc.apk"
else
echo "请把i主题安装包复制到${dir}这个文件夹"
fi
else
mv ${dir}
echo "请把i主题安装包复制到${dir}这个文件夹 然后重新运行"
fi
pml=
if [[ $2 == $pml ]];then
echo "请输入要导入的文件"
else
echo "正在复制i主题……"
zts=$(echo $dir$2)
cp $zts ${file}
echo "已收到" $2
echo "请稍等…"
sleep 5
if [ -f ${file} ];then
echo "导入成功"
chmod -R 777 ${file}
echo "正在为您自动安装…"
sleep 2
pm install -r -d --user 0 ${file}
else
echo "导入失败权限不足"
exit 1
fi
fi
fi
if [[ $1 == "-d" || $1 == "-down" ]];then
function dows(){
pjl=
if [[ $1 == $pjl ]];then
echo "没有输入任何链接 使用默认链接下载"
curl https://apkappdeftxdl.vivo.com.cn/appstore/developer/soft/20210618/202106181058249ici5.apk > i.apk
pm install -r -d --user 0 i.apk
else
pts=$(curl $1 > i.apk)
sh $pts
pm install -r -d --user 0 i.apk
fi
}
dkc=$(curl -h)
dkce=${dkc%%<url>*}
sds=${dkce:7:4}
if [ $sds == "curl" ];then
dows $2
else
cu=$(echo $path$curl)
if [ -f ${cu} ];then
dows $2
else
echo "下载库不存在 请把curl这个文件一起复制进来 谢谢"
fi
fi
fi