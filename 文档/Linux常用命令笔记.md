#Linux常用命令笔记
####创建用户: useradd username -p password
####挂载光驱: mount –o loop /usr/ISO文件名 /usr/ISOIMG
####1.下源代码安装gcc4.8.2
	1.首先确保已有gcc c++
		$ yum install gcc gcc-c++
	2.下载源码包
		$ wget ftp://gcc.gnu.org/pub/gcc/releases/gcc-4.8.2/gcc-4.8.2.tar.bz2
	3. 解压
		$ tar -jxvf  gcc-4.8.2.tar.bz2
	4. 下载依赖库
		$ cd gcc-4.8.2
		$ ./contrib/download_prerequisites
	5. configure
		$ ./configure --enable-checking=release --enable-languages=c,c++ --disable-multilib
	6. 编译
		$ make
	7. 安装
		$ make install
	8. 卸载旧版
		$ yum erase gcc gcc-g++
	9.查看版本
		$ gcc -v

