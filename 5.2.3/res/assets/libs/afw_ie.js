var isIE11 = !!(navigator.userAgent.match(/Trident/) && !navigator.userAgent.match(/MSIE/));
if (isIE11) {
    if (typeof window.attachEvent == "undefined" || !window.attachEvent)
        window.attachEvent = window.addEventListener;
}