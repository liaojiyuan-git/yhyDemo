$(document).ready(function () {
    for (var i = 0; i < 9; i++) {
        var rand=new Array();//rgba色彩值
        for (var j = 0; j < 3; j++) {
            rand[j]=Math.floor(Math.random()*26+230)//230-255
        }
        var op=Math.floor(Math.random()*5+2)/10;//均衡获取rgba的透明度的随机数
        var left=Math.floor(Math.random()*100)+"%";//泡泡随机分布的距离
        var delay=Math.floor(Math.random()*10)+"s";//每个泡泡出现推迟的时间
        var dur=Math.floor(Math.random()*10+11)+"s";//泡泡完成一个周期所需要的时间
        var enlarge=Math.floor(Math.random()*40+30);//泡泡扩大到的宽和高
        $("#ul-cir").append("<li class='li-cir'></li>")//增加一个泡泡
        $("#ul-cir li").eq(i).css("background","rgba("+rand[0]+","+rand[1]+","+rand[2]+","+op+")");//选取ul li中匹配的索引顺序为i的元素赋予背景颜色
        $("#ul-cir li").eq(i).css("border","rgba("+rand[0]+","+rand[1]+","+rand[2]+","+1+") 1px solid");//给泡泡加上边框
        $("#ul-cir li").eq(i).css("left",left); //泡泡出现的距离值
        $("#ul-cir li").eq(i).css("animation-delay",delay); //泡泡出现推迟的时间
        $("#ul-cir li").eq(i).css("animation-duration",dur); //泡泡完成一个周期所需要的时间
        $("#ul-cir li").eq(i).css("width",enlarge).css("height",enlarge); //扩大泡泡
    }

})