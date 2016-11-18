function login() {
    var username = $('#username').val();
    var password = $('#password').val();

    if ($('#keepSigned')[0].checked) {
        setCookie('username', username, 7);
        setCookie('password', password, 7);
    } else {
        console.log("del cookies")
        delCookie("username");
        delCookie("password");
    }
    document.getElementById("login_form").submit()
}

//删除cookies
function delCookie(name) {
    var exp = new Date();
    var cval = getCookie(name);
    if (cval != null)
        document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
}

function setCookie(name, value, days) {
    var exp = new Date();
    exp.setTime(exp.getTime() + days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}
