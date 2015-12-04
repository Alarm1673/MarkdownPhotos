###1.CentOS介绍

####CentOS 是基于 Red Hat Enterprise Linux (收费昂贵但口碑极佳) 的源代码再编译出来的免费版，因此不仅继承 RHEL 优越的稳定性，还提供免费更新，因此在服务器提供商、中小型公司中装机量几乎是最大的 Linux 发行版，现在也已正式加入红帽公司。
####昨天在虚拟机上安装CentOS7(64位)，在此记录几个安装过程中遇到的小坑吧。

###2.安装步骤：

####2.1 首先，你需要下载CentOS7的镜像iso文件，下载途径网上有很多，本人是在官网上下载的
[http://isoredirect.centos.org/centos/7/isos/x86_64/CentOS-7-x86_64-DVD-1503-01.iso](http://isoredirect.centos.org/centos/7/isos/x86_64/CentOS-7-x86_64-DVD-1503-01.iso "CentOS 7镜像iso")
####2.2 其次，在虚拟机上新建虚拟机，这里只介绍其中重要的几个步骤，其他步骤按照安装提示即可。新建虚拟机时选择自定义安装，在进行到安装镜像iso时，请选择下图所示。如果下图提示“无法检测到此光盘映射中的操作系统”，不要着急，选择第3个选项先安装一个空白硬盘，然后根据自己电脑的配置进行安装即可。
![安装镜像iso](https://raw.githubusercontent.com/Alarm1673/MarkdownPhotos/master/photos/%E5%AE%89%E8%A3%85iso.png)
####2.3 此时，我们可以看到如下图所示：有一个CentOS7的空白硬盘,需要我们引入CentOS7的镜像iso.
![空白硬盘](https://raw.githubusercontent.com/Alarm1673/MarkdownPhotos/master/photos/%E7%A9%BA%E7%99%BD%E7%A1%AC%E7%9B%98.png)
####编辑虚拟机设置，找到CD/DVD，引入镜像iso。
![引入镜像iso](https://raw.githubusercontent.com/Alarm1673/MarkdownPhotos/master/photos/%E5%BC%95%E5%85%A5iso.png)
####2.4 启动虚拟机，进行安装。在安装的时候特别注意：*如果你习惯使用图形界面，请在安装时选择“软件选择”-->"GNOME桌面"*不然会默认以最小安装进行安装。
![选择软件](https://raw.githubusercontent.com/Alarm1673/MarkdownPhotos/master/photos/%E9%80%89%E6%8B%A9%E8%BD%AF%E4%BB%B6.png)
![安装桌面](https://raw.githubusercontent.com/Alarm1673/MarkdownPhotos/master/photos/%E5%AE%89%E8%A3%85%E6%A1%8C%E9%9D%A2.png)
####2.5 安装完成
![桌面](https://raw.githubusercontent.com/Alarm1673/MarkdownPhotos/master/photos/%E6%A1%8C%E9%9D%A2.png)
####2.6 假如你没有选择GNOME桌面，你安装完后出现的界面应该如下图：
![最小安装](https://raw.githubusercontent.com/Alarm1673/MarkdownPhotos/master/photos/%E6%9C%80%E5%B0%8F%E5%AE%89%E8%A3%85.png)
####根据度娘提供的方法，可以通过命令来换成图形界面的，然后重启。
    ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target
	reboot now
####3.几个简单的Linux命令
	#关机命令
	halt   			立刻关机
	poweroff  		立刻关机
	shutdown -h now 立刻关机(root用户使用)
	shutdown -h 10 	10分钟后自动关机
	如果是通过shutdown命令设置关机的话，可以用shutdown -c命令取消重启
	
#重启命令
	reboot  		重启	
	shutdown -r now 立刻重启(root用户使用)
	shutdown -r 10  过10分钟自动重启(root用户使用) 
	shutdown -r 20:35 在时间为20:35时候重启(root用户使用)
	如果是通过shutdown命令设置重启的话，可以用shutdown -c命令取消重启