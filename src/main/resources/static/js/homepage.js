
window.onload=function (ev) {
    var i=1;
    function task() {
        i++;
        if (i>3){
            i=1;
        }
        var img1=document.getElementById("d1");
        img1.src="../book/Carousel_"+i+".jpg";
    }
    //设置定时器
    setInterval(task,3000)
}