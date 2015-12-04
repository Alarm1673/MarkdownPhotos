#Django基本命令
==================
###1.新建一个django项目
	django-admin.py startproject project-name
	#注意:以上命令如果不能创建项目时,请去掉.py即可
	#停止项目可以在命令行使用 Ctrl+c 或者Ctrl+Break
###2.新建APP
	python manage.py startapp app-name
	或 django-admin.py startapp app-name
###3.同步数据库
	python manage.py syncdb
	注意:Django 1.7以上版本需要用到以下命令,如果该命令未执行,请查看是否创建了数据库
	python manage.py makemigrations
	python manage.py migrate
###4.使用开发服务器
	python manage.py runserver
	#当提示端口被占用时,可以用其他端口:
	python manage.py runserver 8001
	...
	#监听所有可用ip
	python manage.py runserver 0.0.0.0:8000
	#如果是外网或者局域网电脑上可以用其它电脑查看开发服务器
	#访问对应的ip 加端口,比如: http://127.16.20.2:8000
###5.清空数据库
	python manage.py flush
	#此命令会询问yes还是no,选择yes会把数据全部清空,只留下空表
###6.创建超级管理员
	python manage.py createsuperuser
###7.导出数据  导入数据
	python manage.py dumpdata appname > appname.json
	python manage.py loaddata appname.json
###8.django项目环境终端
	python manage.py shell
###9.数据库命令行
	python manage.py dbshell
###10.更多命令
	在终端上输入 python manage.py 即可