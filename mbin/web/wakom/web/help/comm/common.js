
function V2JAutoLogin(name,password){
	$.ajax({
        type: "POST",
        async: false,
        cache: false,
        url: 'index.php?route=account/login/ajaxlogin',
        data: "email=" + name + "&password=" + password,
        success: function(uid) {
            if(uid == ""){
                alert("ajaxlogin fail!");
            	//external.J2VAddUser();
            }
            else{
            	external.J2VLoginComplete(uid);
            	//location.href="index.php?route=account/account";
            }
        }
    });	
}

function V2JCheckVersion(version){
	$.ajax({
        type: "POST",
        async: false,
        cache: false,
        url: 'index.php?route=common/home/checkVersion',
        data: "version=" + version,
        success: function(msg) {
            if(msg == ""){
                //alert("ajaxlogin fail!");
            	//external.J2VAddUser();
            }
            else{
            	external.J2VCheckVersionComplete(msg);
            }
        }
    });	
}

function V2JGetNewTask(result){
	$.ajax({
        type: "POST",
        async: false,
        cache: false,
        url: 'index.php?route=account/task/getNewTask',
        data: "result=" + result,
        success: function(msg) {
            if(msg == ""){
                //alert("V2JAddUser fail!");
            }
            else{
            	external.J2VGetTaskComplete(msg);
            }
        }
    });	
}

function V2JGetSmtpServer(){
	$.ajax({
        type: "GET",
        async: false,
        cache: false,
        url: 'index.php?route=account/mailer/getSmtpServer',
        success: function(msg) {
        	external.J2VGetSmtpServerComplete(msg);
        }
    });
}

function V2JAutoLogout(){
	$.ajax({
        type: "POST",
        async: false,
        cache: false,
        url: 'index.php?route=account/logout'
    });	
}
function V2JAddUser(name,password){
	$.ajax({
        type: "POST",
        async: false,
        cache: false,
        url: 'index.php?route=account/register/ajaxadduser',
        data: "email=" + name + "&password=" + password,
        success: function(msg) {
            if(msg == ""){
                alert("V2JAddUser fail!");
            	//external.J2VAddUser();
            }
            else{
            	external.J2VLoginComplete(msg);
            	location.href="index.php?route=account/account";
            }
        }
    });	
}

function V2JTaskFinishOne(msg){
	var d = new Date();
	msg = "<li><div class='info'>"+msg+"，发送时间："+d.toLocaleDateString()+" "+d.toLocaleTimeString()+"</div></li>";
	$("#footer ul").prepend(msg);
}
