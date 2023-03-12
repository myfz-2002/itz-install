# itz-install
沐雨酆臻 itz降级 自动脚本


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
内置的是[https://github.com/moparisthebest/static-curl]的 curl下载命令库
