function check(){
	//����
	if(edituser.passWd.value == ""){
		alert("����������");
		return false;
	}
	//�ظ�����
	if(edituser.pwdAgain.value == ""){
		alert("������ڶ��ε�����");
		return false;
	}
	//�ж������Ƿ����
	if(edituser.passWd.value != edituser.pwdAgain.value){
		alert("������������벻һ��");
		return false;
	}
	//���ⲻΪ��
	if(edituser.question.value == ""){
		alert("������ʾ���ⲻΪ��");
		return false;
	}
	//�𰸲�Ϊ��
	if(edituser.answer.value == ""){
		alert("�𰸲�Ϊ��");
		return false;
	}
	//�ж�����
	if(edituser.emailAddr.value != ""){
		if(edituser.emailAddr.value.indexOf("@") == -1){
			alert("û��\"@\"���ţ����Ǹ���Ч���ʼ���ַ");
			return false;
		}
		else if(edituser.emailAddr.value.indexOf(".") == -1){
			alert("û��\".\"���ţ����Ǹ���Ч���ʼ���ַ");
			return false;
		}
	}
	return true;
}