####前段时间正在学习服务器部署，但由于公司正好碰上几个项目要赶着上线，帮着其他组做项目去了，服务器的部署就耽搁了。昨天重新在CentOS6.6上安装了Nginx，也正好记录一下安装中碰到的一些问题。
##1.用安装文件安装Nginx
###1.1简要介绍及准备工作
####在/usr/setup目录下找到nginx的安装包,setup是我们公司安装应用服务器时的一个目录，里面包含nginx、tomcat、postgreSql数据库等，这里我就不多扯了。
	#进入到/usr/setup
	cd /usr/setup
	#删除掉原有的nginx目录
	rm ./nginx-1.4.7 -r -f
	#解压nginx压缩包
	tar zxvf nginx-1.4.7.tar.gz
	#拷贝三个模块的压缩包放到nginx目录下
	cp ./headers-more-nginx-module-0.25.tar.gz ./nginx-1.4.7
	cp ./nginx_tcp_proxy_module-master.tar.gz ./nginx-1.4.7
	cp ./jvmroute.tar.gz ./nginx-1.4.7
###1.2安装Nginx
	#进入nginx目录
	cd nginx-1.4.7  
	#解压模块的安装包
	tar zxvf headers-more-nginx-module-0.25.tar.gz
	tar zxvf jvmroute.tar.gz
	tar zxvf nginx_tcp_proxy_module-master.tar.gz
	#给模块打补丁
	patch -p0 < ./jvmroute/jvm_route.patch
	patch -p1 < ./nginx_tcp_proxy_module-master/tcp.patch
	#移除安装包
	rm ./headers-more-nginx-module-0.25.tar.gz -r -f
	rm ./jvmroute.tar.gz -r -f
	#添加模块
	./configure --with-pcre=/usr/setup/pcre-8.36 --with-pcre-jit --add-module=./jvmroute/ --add-module=./headers-more-nginx-module-0.25/  --add-module=./nginx_tcp_proxy_module-master
	#安装
	make
	sudo make install
	
##2.使用yum 命令安装Nginx
	rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm  
	yum -y install nginx
####使用yum源安装nginx非常简单,安装完成后还需要添加对应的模块即可.
 
