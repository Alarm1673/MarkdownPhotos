#Git命令及Linux命令
##一 Git命令
####1.提交需要执行3个命令
	git add .
	git commit -m "提交信息"
	git push origin 分支名
  
####2.远程更新
	git pull origin develop-zzl 

####3.常用Git命令
######查看本地分支:  
	git branch
######查看远程分支:  
	git branch -r
######创建本地分支:  
	git branch [name]   #并不会自动切换到当前分支
######切换分支: 
	git checkout [name]
######创建新分支并切换到新分支:
	git checkout -b [name]
######删除分支: 
	git branch -d [name]   #-d选项只能删除已经参与了合并的分支,对于未有合并的分支是无法删除的,需要换成-D选项
######合并分支: 
	git merge [name]    #将name的分支与当前分支合并
######创建远程分支(本地分支push到远程): 
	git push origin [name]
######删除远程分支:  
	git push origin :heads/[name] 
	git push origin :[name]
				   
######克隆:
	git clone git地址
######看所有用户:
	git config --list
######看已经被提交的 
	git ls-files
######删除一个文件:  
	git rm [file name]
######提交:          
	git commit
######看提交的日志   
	git log
######将本地项目给提交到服务器中   
	git push origin master
######本地与服务器端同步  
	git pull

##二 Linux命令	
####1.配置linux下的环境变量
	#!/usr/bin/env python

####2.更改用户权限
	chmod 755 a.py     # 读（r=4）、写（r=2）、执行（r=1）

####3.修改文件名
	mv oldname newname

####4.常用命令 
######显示隐藏文件
	ls -a  
######显示文件和目录由根目录开始的树形结构
	lstree  
######创建dir1目录,可同时创建多个目录,以空格分隔
	mkdir dir1  
######创建一个目录树
	mkdir -p /tmp/dir1/dir2 
######删除一个file1的文件
	rm -f file1 
######删除dir1目录
	rm dir1      
######删除dir1目录并同时删除其内容,可同时删除多个目录,以空格分隔
	rm -rf dir1  
######显示详细信息
	uname -a     
######创建不存在的文件.如果存在,则更新时间戳,但不改变内容
	touch file1  
######显示日期
	cal 07 2015 
    