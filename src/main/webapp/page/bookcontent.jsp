<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
       <!-- 指定字符集 -->
       <meta charset="utf-8">
       <!-- 使用Edge最新的浏览器的渲染方式 -->
       <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
       width: 默认宽度与设备的宽度相同
       initial-scale: 初始的缩放比，为1:1 -->
       <meta name="viewport" content="width=device-width, initial-scale=1">
       <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
       <title>小说阅读网页</title>
       <!-- 1. 导入CSS的全局样式 -->
       <link href="../css/bootstrap.min.css" rel="stylesheet">
       <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
       <script src="js/jquery-2.1.0.min.js"></script>
       <!-- 3. 导入bootstrap的js文件 -->
       <script src="../js/bootstrap.min.js"></script>
        <!-- 导入图标样式 -->
        <link rel="stylesheet" href="../css/iconfont.css">
        <!-- 引入toastr的js、css文件  -->
	    <link href="../css/toastr.min.css" rel="stylesheet" />
	    <script src="../js/toastr.min.js"></script>
	    <!-- 导入音乐播放CSS -->
        <link rel="stylesheet" href="../css/player.css">
    <style>
        span1 {
            position: absolute;
            bottom: 0;
            box-shadow: inset 0 0 6px #fff,
            inset 3px 0 6px #eaf5fc,
            inset 2px -2px 10px #efcde6,
            inset 0 0 60px #f9f6de,
            0 0 20px #fff;
            border-radius: 50%;
            animation: myMove 4s linear infinite;
            transition: 2s;
        }

        @keyframes myMove {
            0% {
                transform: translateY(0%);
                opacity: 1;
            }

            50% {
                transform: translate(10%,-1000%);
            }

            75% {
                transform: translate(-20%,-1200%);
            }

            99% {
                opacity: .9;
            }

            100% {
                transform: translateY(-1800%) scale(1.5);
                opacity: 0;
            }
        }
        body {
            height: 100%;
        }

        body {
            /* 溢出隐藏 */
            overflow-x: hidden;
            display: flex;
            /* 渐变方向从左到右 */
            background: linear-gradient(to right, rgb(247, 209, 215), rgb(191, 227, 241));
        }
    </style>
    <script>
	    $(function() {
            for (const x of document.getElementsByTagName("a")) {
                $(x).click(function () {
                    if (x.href != "javascript:void(0);") {
                        x.href += "&style=" + document.getElementById("center").style.backgroundColor+
                            "&font="+$("#h1").css("font-family")+"&fontsize="+$("#h1").css("font-size");
                    }
                })
            }
            let number=$("#h1").css("font-size").substring(0,$("#h1").css("font-size").length-2);
            let num = parseInt(number);
            $("#b1").click(function () {
                num--;
              document.getElementById("h1").style.fontSize=num+'px';
            })
            $("#b2").click(function () {
                num++;
                document.getElementById("h1").style.fontSize=num+'px';
            })
	        $(".bookshelfbtn").click(function() {
	            toastr.options = {  
	                closeButton: false, //是否显示关闭按钮
	                debug: false,  //是否为调试
	                positionClass: "toast-center-center",  
	                onclick: jumpTo(),  
	                showDuration: "300",  //显示动作时间 
	                hideDuration: "1000",  //隐藏动作时间 
	                timeOut: "1000",  
	                showMethod: "fadeIn",  
	                hideMethod: "fadeOut"  
	            };  
	            toastr.success("添加书架成功");
	        });
	        /* 点击加入书架按钮后等待一秒后再跳转 */
	        function jumpTo() {
	            var t=1;
	            setInterval(function() {
	                t--;
	                if(t==0) {
		                if(${bookContent != null}) {
		                	window.location.href = "${pageContext.request.contextPath}/AddBookToBookShelf?bs_account=${user.getUaccount() }&bs_bnum=${bookContent.getBc_bnum() }&chapter_num=${bookContent.getChapter_num()}&collectiontimes=${collectiontimes +1}";
		                }else {
		                	window.location.href = "${pageContext.request.contextPath}/AddBookToBookShelf?bs_account=${user.getUaccount() }&bs_bnum=${bc_bnum}&chapter_num=${chapter_num}&collectiontimes=${collectiontimes +1}";
		                }
	                }
	            },1000);
	        }
	    });
    </script>
    <style>
        body,html{background-color: #E7E1D4;display: flex;min-height: 100vh;flex-direction: column;}
        .footer_span{height: 40px;;text-align: center;line-height: 40px;}
        footer{background-color: #434343;min-height: 80px;}
        #center{flex: 1;}
        .mag_top{margin-top: 15px;}
        
        .left_fw {position: fixed;top: 0px;left: 300px;background-color: #eee;border: 1px solid #ddd;}
        .left_fw_01 {width: 60px;height: 52px;border-bottom: 1px solid #aaa;line-height: 20px;padding-top: 8px;text-align: center;}
        .left_fw_01:last-child {border-bottom: none;}
        .left_fw_01 a {color: #666;text-decoration: none;}
        .left_fw_01 a:hover {color: #e00;}
        .right_fw {position: fixed;bottom: 0px;right: 300px;background-color: #eee;border: 1px solid #ddd;}
        .right_fw_01 {width: 60px;height: 50px;border-bottom: 1px solid #aaa;line-height: 20px;padding-top: 8px;text-align: center;}
        .right_fw_01:last-child {border-bottom: none;height: 40px;padding-top: 20px;line-height: 2px;}
        .right_fw_01 a {color: #666;text-decoration: none;}
        .right_fw_01 a:hover {color: #e00;}
        /* 设置图标 */
        .iconfont_1 {font-size: 20px;}
        .iconfont_2 {font-size: 35px;}
        .s1 {font-size: 13px;}
            
    </style>
    <script>
        function f1()
        {
            if ( document.getElementById("d1").style.display=="block"){
                document.getElementById("d1").style.display="none";
            }else {
                document.getElementById("d1").style.display="block";
            }
        }

        function f2(e) {
            let s = e.src.substring(0,e.src.indexOf("/",e.src.indexOf("/",e.src.indexOf("/")+1)+1));
            if (e.src === s+"/img/black.png") {
                document.getElementById("center").style.backgroundColor = "#5b5b5b";
                for (const x of document.getElementsByClassName("h")) {
                    x.style.color = "white";
                }
                ;

            }
            if (e.src === s+"/img/green.png") {
                document.getElementById("center").style.backgroundColor = "#1abc9c";
                for (const x of document.getElementsByClassName("h")) {
                    x.style.color = "black";
                }
                ;
            }
            if (e.src === s+"/img/img_1.png") {
                document.getElementById("center").style.backgroundColor = "#F7F2E8";
                for (const x of document.getElementsByClassName("h")) {
                    x.style.color = "black";
                }
                ;
            }
            if (e.src === s+"/img/tm.jpg") {
                document.getElementById("center").style.backgroundColor = "rgba(255,255,255,0)";
                for (const x of document.getElementsByClassName("h")) {
                    x.style.color = "black";
                }
                ;
            }
        }
            function f3(e) {
            let s = e.src.substring(0,e.src.indexOf("/",e.src.indexOf("/",e.src.indexOf("/")+1)+1));
                if (e.src===s+"/img/fangsong.png"){
                    for (const x of document.getElementsByClassName("h")) {
                        $(x).css("font-family","仿宋");
                    };

                }
                if (e.src===s+"/img/kaiti.png"){
                    for (const x of document.getElementsByClassName("h")) {
                        $(x).css("font-family","楷体");
                    };
                }

                if (e.src===s+"/img/songti.png"){
                    for (const x of document.getElementsByClassName("h")) {
                        $(x).css("font-family","宋体");
                    };
                }

                if (e.src===s+"/img/yuanti.png"){
                    for (const x of document.getElementsByClassName("h")) {
                        $(x).css("font-family","'Helvetica%20Neue',%20Helvetica,%20Arial,%20sans-serif");
                    };
                }
        }

    </script>
</head>
<body>

<%--              设置div             --%>

    <div id="center" style="background-color: ${backgroundColor};width: 790px;margin: auto;">
        <div style="width: 750px;margin: auto;">
          <%--          小说内容            --%>
            <h2 style="text-align: center;" class="h">${bookContent.getBcchapter() }</h2>
            <span style="font-size: ${fontsize}; font-family: ${font} " class="h" id="h1">

                <c:if test="${bookContent!=null }">
                    ${bookContent.getBccontent() }
                </c:if>
                <c:if test="${bookContent==null }">
                    <h3 style="text-align: center;font-family: 宋体" class="h">很抱歉，该小说还没更新...</h3>
                </c:if>
            </span>
        </div>
    </div>

    <!-- 左侧悬浮窗left_fw -->
    <div class="left_fw" style="margin-left: 85px">
        <!-- Button trigger modal -->
        <!-- Button trigger modal -->

        <button type="button" class="btn btn-primary btn-lg left_fw_01" data-toggle="modal" data-target="#myModal">
            <i class="iconfont iconfont_1">&#xe629;<br><span class="s1">目录</span></i>
        </button>
        <div class="left_fw_01">
            <c:if test="${bookContent!=null}">
	            <a href="${pageContext.request.contextPath }/QueryBookServlet?bnum=${bookContent.getBc_bnum()} "><i class="iconfont iconfont_1">&#xe612;<br><span class="s1">返回</span></i></a>
            </c:if>
            <c:if test="${bookContent==null}">
                <a href="${pageContext.request.contextPath }/QueryBookServlet?bnum=${bc_bnum} "><i class="iconfont iconfont_1">&#xe612;<br><span class="s1">返回</span></i></a>
            </c:if>
        </div>
        <div class="left_fw_01" onclick="f1()"><a href="javascript:void(0);">
            <i class="iconfont iconfont_1" >&#xe609;
            <br><span class="s1">设置</span>
            </i></a></div>
        <div class="left_fw_01">
            <!-- 已在书架 -->
            <c:if test="${IsInBookshelf !=null}">
                <a href="javascript:void(0);">&#xe611;<br><span class="s1">已在书架</span></a>
            </c:if>
            <!-- 不在书架 -->
            <c:if test="${IsInBookshelf ==null }">
                <a href="javascript:void(0);" class="bookshelfbtn"><i class="iconfont iconfont_1">&#xe611;<br><span class="s1">书架</span></i></a>
                <!-- 书籍内容书籍内容是否为空 -->
                <%-- <c:if test="${bookContent!= null}">
		            <a href="${pageContext.request.contextPath }/AddBookToBookshelf?bs_account=${user.getUaccount() }&bs_bnum=${bookContent.getBc_bnum() }&chapter_num=${bookContent.getChapter_num()}&collectiontimes=${collectiontimes +1}" class="bookshelfbtn"><i class="iconfont iconfont_1">&#xe611;<br><span class="s1">书架</span></i></a>
                </c:if>
                <c:if test="${bookContent== null}">
                    <a href="${pageContext.request.contextPath }/AddBookToBookshelf?bs_account=${user.getUaccount() }&bs_bnum=${bc_bnum}&chapter_num=${chapter_num}&collectiontimes=${collectiontimes +1}" class="bookshelfbtn"><i class="iconfont iconfont_1">&#xe611;<br><span class="s1">书架</span></i></a>
                </c:if> --%>
            </c:if>
        </div>
        </div>
        <div class="left_fw" style="margin-top: 105px;margin-left: 160px; border-radius: 10px">
        <div  id="d1" style="background: rgba(255,255,255,0.2) ;width: 200px;height: 100px;float:left; border-radius: 10px; display: none;
                  /* 设置边框 */
                  border: 1px solid rgba(255, 255, 255, .6);
                  /* 设置盒子阴影 */
                  box-shadow: 2px 1px 19px rgba(0, 0, 0, .1);">
            背景：
            <img src="/img/black.png" width="30px",height="30px" onclick="f2(this)" style="border-radius:50%;overflow:hidden;">
            <img src="/img/green.png" width="30px",height="30px" onclick="f2(this)" style="border-radius:50%;overflow:hidden;">
            <img src="/img/img_1.png" width="30px",height="30px" onclick="f2(this)" style="border-radius:50%;overflow:hidden;">
            <img src="/img/tm.jpg" width="30px",height="30px" onclick="f2(this)" style="border-radius:50%;overflow:hidden;">

            <br>
            字体：
            <img src="/img/fangsong.png" width="30px" ,height="30px" onclick="f3(this)" style="border-radius:50%;overflow:hidden;">
            <img src="/img/kaiti.png" width="30px" ,height="30px" onclick="f3(this)" style="border-radius:50%;overflow:hidden;">
            <img src="/img/songti.png" width="30px" ,height="30px" onclick="f3(this)" style="border-radius:50%;overflow:hidden;">
            <img src="/img/yuanti.png" width="30px" ,height="30px" onclick="f3(this)" style="border-radius:50%;overflow:hidden;">
            <br>
            字体大小:
            <button id="b1" style="font-size: 30px;  background-color: Transparent; border-style: none; outline: none;margin-left: 10px ">-</button>
            <button  id="b2" style="font-size: 30px;  background-color: Transparent; border-style: none; outline: none; margin-left: 15px">+</button>
        </div>
    </div>

      <c:forEach items="${music}" var="l" varStatus="s">
          <form>
        <input type="text" class="musicname" value="${l.musicname}" style="display:none">
        <input type="text" class="singer" value="${l.singer}" style="display:none">
        <input type="text" class="musicimg" value="${l.musicimg}" style="display:none">
        <input type="text" class="music" value="${l.music}" style="display:none">
        </form>
      </c:forEach>
    
    <div style="background-color: #F7F2E8;width: 790px;margin:15px auto;">  
        <c:if test="${bookContent.getChapter_num() <=1 || bookContent==null}">
            <a class="btn btn-default disabled" href="javascript:void(0);" role="button" style="width: 255px;height: 50px;;">
                <span style="font-size: 20px;line-height: 38px;">上一章</span>
            </a>
        </c:if>
        <c:if test="${bookContent.getChapter_num() >1 && bookContent!=null}">
	        <a class="btn btn-default" href="${pageContext.request.contextPath }/BookContentServlet?bc_bnum=${bookContent.getBc_bnum()}&chapter_num=${bookContent.getChapter_num()-1 } " role="button" style="width: 255px;height: 50px;;">
	            <span style="font-size: 20px;line-height: 38px;">上一章</span>
	        </a>   
        </c:if>
        
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="width: 255px;height: 50px;margin-left: 8px;">
                                 目录
        </button>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h3 class="modal-title" id="myModalLabel" style="text-align: center;font-weight: 700;">${bookContent.getBcname() }目录</h3>
                    </div>
                    <div class="modal-body">
                        <ul class="list-group">
                            <c:forEach items="${bookCatalogList }" var="l">
	                            <li class="list-group-item"><a href="${BookContentServlet }?bc_bnum=${bookContent.getBc_bnum()}&chapter_num=${l.getChapter_num() } " style="font-size: 16px;">${l.getBcchapter() }</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
        <c:if test="${bookContent.getChapter_num() >=bookcontentTotal || bookContent==null}">
	        <a class="btn btn-default disabled" href="javascript:void(0);" role="button" style="width: 255px;height: 50px;margin-left: 9px;">
	            <span style="font-size: 20px;line-height: 38px;">下一章</span>
	        </a>
        </c:if>
        <c:if test="${bookContent.getChapter_num() <bookcontentTotal && bookContent!=null}">
            <a class="btn btn-default" href="${pageContext.request.contextPath }/BookContentServlet?bc_bnum=${bookContent.getBc_bnum()}&chapter_num=${bookContent.getChapter_num()+1 } " role="button" style="width: 255px;height: 50px;margin-left: 9px;">
                <span style="font-size: 20px;line-height: 38px;">下一章</span>
            </a>
        </c:if>
    </div>




    
    <!-- 播放器 -->
    <div id="QPlayer">
        <div id="pContent" style="width: 300px">
            <div id="player" style="height: 70px">
                <span class="cover" style="margin-top: 5px"></span>
                <div class="ctrl" >
                    <div class="musicTag marquee">
                        <strong>Title</strong>
                        <span> - </span>
                        <span class="artist">Artist</span>
                    </div>
                    <div class="progress1">
                        <div class="timer left">0:00</div>
                        <div class="contr">
                            <div class="rewind icon"></div>
                            <div class="playback icon"></div>
                            <div class="fastforward icon"></div>
                        </div>
                        <div class="right">
                            <div class="liebiao icon"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ssBtn" style="width: 50px;height: 70px ">
                <span style="color:white;font-size: 22px;" >听书</span>
                <div class="adf" style="margin-left: 10px;margin-top: -14px"></div>
            </div>
        </div>
        <ol id="playlist"></ol>
    </div>

    <script src="${pageContext.request.contextPath }../js/jquery-2.1.0.min.js"></script>
    <script src="${pageContext.request.contextPath }../js/jquery.marquee.min.js"></script>

    <script>
        var playlist = [];
        let elementsByClassName0 = document.getElementsByClassName("musicname");
        let elementsByClassName1 = document.getElementsByClassName("singer");
        let elementsByClassName2 = document.getElementsByClassName("musicimg");
        let elementsByClassName3 = document.getElementsByClassName("music");
        for (let i = 0; i < elementsByClassName0.length; i++) {
            playlist.push({title:elementsByClassName0[i].value,artist:elementsByClassName1[i].value,mp3:"../musicplay/"+elementsByClassName3[i].value,cover:"../musicplay/"+elementsByClassName2[i].value,}
            )
        }

        var isRotate = true;
        var autoplay = false;
    </script>
    <script src="${pageContext.request.contextPath }../js/player.js"></script>
    <script>
        function bgChange(){
            var lis= $('.lib');
            for(var i=0; i<lis.length; i+=2)
            lis[i].style.background = 'rgba(246, 246, 246, 0.5)';
        }
        window.onload = bgChange;
    </script>
</body>
</html>