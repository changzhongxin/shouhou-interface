$(function () {
    $('#login').click(function () {
        var username = $('#box1').val();
        var pwd = $('#box2').val();
        if (!isNotEmpty(username) || !isNotEmpty(pwd)) {
            alert('账号或密码不能为空，请填写账号或密码！');
            return false;
        }
        $.post('user/login', {username: username, pwd: pwd}, function (data) {
            if (data.code == 0) {
                alert("帐号或密码不正确，请重新输入！");
            } else {
                location.href = 'index';
            }
        }, 'json');
    });
});

/**
 * 判断值是否不为空，如果不为空返回true
 * @param {Object} value
 */
function isNotEmpty(value) {
    if (value == '' || value == undefined || value == null) {
        return false;
    } else {
        return true;
    }
}