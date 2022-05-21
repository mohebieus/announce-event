
function ShowEventContainer(EnterpriseTitle, MsgContent, imgSrc) {

    const title = document.querySelector("#eventEnterpriseName")
    const content = document.querySelector("#eventMessage")
    title.textContent = EnterpriseTitle;
    content.textContent = MsgContent;
  
    $("#eventContainer").fadeIn(500);
    setTimeout(function(){
        if (imgSrc != null) {
            console.log("imgSrc: " + imgSrc)
            const img = document.querySelector("#idAttachment");
            img.src = imgSrc;
            $("#idAttachment").show();
        } 

    }, 500);
    
    setTimeout(function() {
        $("#eventContainer").fadeOut(500);
    }, 25000);
    
}

$(document).ready(function () {
    window.addEventListener("message", function (event) {
        const item = event.data;
        if (item.imgSrc) {
            ShowEventContainer(item.title, item.MsgContent, item.imgSrc);
        } else {
            ShowEventContainer(item.title, item.MsgContent)}
    })
});
