
function inIframe () {
    try {
    	return window.self !== window.top;
    } catch (e) {
    	return true;
    }
}
var inIframe = inIframe();
if (inIframe) {
	window['yotpo_testimonials_active'] = true;
}

 document.addEventListener('DOMContentLoaded', function () {
        var e=document.createElement("script");e.type="text/javascript",e.async=true,e.src="//staticw2.yotpo.com/" + yotpoAppkey  + "/widget.js";var t=document.getElementsByTagName("script")[0];t.parentNode.insertBefore(e,t)
 });
  