/**
 * joinForm.jsp 검증
 */
$(function(){
	$("#joinForm").validate({
		errorPlacement:function(error,element){
			$(element).closest("form").find("small[id='"+element.attr("id")+"']").append(error);
		},
		rules:{
			userid:{
				required:true,
				validId:true
			},
			password:{
				required:true,
				validPwd:true
			},
			name:{
				required:true,
				minlength:2
			},
			gender : "required",
			email:{
				required:true,
				validEmail:true
			}
		},
		messages:{
			userid:{
				required:"아이디는 필수요소 입니다."
			},
			password:{
				required:"비밀번호는 필수요소 입니다"
			},
			name:{
				required:"이름은 필수요소 입니다",
				minlength:"이름형식은 2자이상입니다"
			},
			gender:"성별은 필수요소 입니다",
			email:{
				required:"이메일은 필수요소 입니다"
			}
		}
	});
});

$.validator.addMethod("validId",function(value){
	var regId=/^(?=.*[a-zA-Z])(?=.*\d).{5,12}$/;
	return regId.test(value);	
},"아이디는 필수,영문자(대소문자중아무거나)와 숫자를포함해서 5~12자");

$.validator.addMethod("validPwd",function(value){
	var regPwd= /^(?=.*[a-zA-Z])(?=.*\d)(?=.*\W).{8,15}$/
	return regPwd.test(value);	
},"비밀번호는 문자(대소문자중아무거나),숫자, 특수문자 8~15");

$.validator.addMethod("validEmail",function(value){
	var regEmail = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	return regEmail.test(value);
}, "이메일 형식을 확인해 주세요");