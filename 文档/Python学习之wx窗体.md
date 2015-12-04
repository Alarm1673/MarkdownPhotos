#Python学习之WX窗体
##示例
	#!/usr/bin/python      告诉程序python解释器的路径,只是在linux系统下有用
	# -*- coding: GBK -*-  编码字符  
	import　wx  

	aPP　=　wx.app()  	   初始化程序
	frame　=　wx.frame(none)  创建一个Frame(窗体)
	frame.show()  			显示窗体
	app.mainloop()			应用程序进入消息循环

##详细介绍
	__init__(self,　Window　parent,　int　id=-1,　String　title=EmptyString,　  
            Point　pos=DefaultPosition,　Size　size=DefaultSize,　  
            long　style=DEFAULT_FRAME_STYLE,　String　name=FrameNameStr)  

####参数1: parent
	当前窗口的父窗口,如果当前窗口是top-level window的话,则parent = None,如果不是顶层窗口,则它的值为所属frame的名字
####参数2: id
	窗体编号.如果设置为-1,则系统自动给它分配一个编号.默认为-1
####参数3:title
	窗体的标题栏,即Caption.默认为空
####参数4: pos
	窗体的位置坐标.默认值为(-1,-1),则窗体的位置由系统决定
####参数5: size
	窗体的大小.默认值为(-1,-1),则窗体的大小由系统决定
####参数6:style
	窗体样式.默认值为 DEFAULT_FRAME_STYLE
	默认样式 DEFAULT_FRAME_STYLE 是下面这些值的集合
	wx.MINIMIZE_BOX  |  wx.MAXIMIZE_BOX　|　wx.RESIZE_BORDER　|　
	wx.SYSTEM_MENU　 |　 wx.CAPTION　|　wx.CLOSE_BOX　|　wx.CLIP_CHILDREN	
####参数7: name
	窗体名称
