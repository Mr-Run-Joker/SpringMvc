$(function () {
	var fruit=$("#fruit").val();
	 if (fruit!=""){
			alert(fruit);
			};
    $("#form-register").bootstrapValidator({
        //live: 'enabled',//验证时机，enabled是内容有变化就验证（默认），disabled和submitted是提交再验证
        excluded: [':disabled', ':hidden', ':not(:visible)'],//排除无需验证的控件，比如被禁用的或者被隐藏的
        submitButtons: '#button-submit',//指定提交按钮，如果验证失败则变成disabled，但我没试成功，反而加了这句话非submit按钮也会提交到action指定页面
        message: '通用的验证失败消息',//好像从来没出现过
        feedbackIcons: {//根据验证结果显示的各种图标
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-exclamation-sign'
        },
        fields: {
        	"leaguer.account": {
        		verbose:false,
        		validators: {
                    notEmpty: {//检测非空,radio也可用
                        message: '文本框必须输入'
                    },
                    stringLength: {//检测长度
                        min: 6,
                        max: 10,
                        message: '长度必须在6-10之间'
                    },
                    regexp: {//正则验证
                        regexp: /^[0-9]+$/,
                        message: '所输入的账号不符要求'
                    },
                    remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
                    	 threshold :  6 , //有6字符以上才发送ajax请求，（input中输入一个字符，插件会向服务器发送一次，设置限制，6字符以上才开始）
                    	url: '/LibraryWeb/register/checkName',//验证地址
//                        data:{userTelephone:$('#account').val() },
                        message: '账号已被注册',//提示消息
                        delay: 2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
                        type: 'POST'//请求方式
                    },
                }
            },
            "leaguer.password": {
            	 validators: {
            		 notEmpty: {//检测非空,radio也可用
                         message: '文本框必须输入'
                     },
                     stringLength: {//检测长度
                         min: 6,
                         max: 10,
                         message: '长度必须在6-10之间'
                     },
                     regexp: {//正则验证
                         regexp: /^[0-9]+$/,
                         message: '所输入的账号不符要求'
                     }, 
            	 }
            },
            "pwd": {
           	 validators: {
           		identical: {//与指定控件内容比较是否相同，比如两次密码不一致
                    field: 'leaguer.password',//指定控件name
                    message: '输入的密码不一致'
                },
           	 }
           },
           "leaguer.phone": {
          	 validators: {
          		 notEmpty: {//检测非空,radio也可用
                       message: '文本框必须输入'
                   },
                   stringLength: {//检测长度
                       min: 11,
                       max: 11,
                       message: '电话必须11位'
                   },
                   regexp: {//正则验证
                       regexp: /^[0-9]+$/,
                       message: '所输入的电话号码不符要求'
                   }, 
          	 }
          },
          "leaguer.email": {
           	 validators: {
           		 notEmpty: {//检测非空,radio也可用
                        message: '文本框必须输入'
                    },
                    stringLength: {//检测长度
                        min: 11,
                        max: 11,
                        message: '邮箱必须输入11位'
                    },
                    regexp: {//正则验证
                        regexp: /^[a-zA-Z0-9]+$/,
                        message: '所输入的电话号码不符要求'
                    }, 
           	 }
           },
        }
    });
});