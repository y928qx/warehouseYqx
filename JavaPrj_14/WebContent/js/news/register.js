function check(){
	//�û���
	if(register.userName.value == ""){
		alert("�������û���");
		return false;
	}
	//����
	if(register.passWd.value == ""){
		alert("����������");
		return false;
	}
	//�ظ�����
	if(register.pwdAgain.value == ""){
		alert("������ڶ��ε�����");
		return false;
	}
	//�ж������Ƿ����
	if(register.passWd.value != register.pwdAgain.value){
		alert("������������벻һ��");
		return false;
	}
	//���ⲻΪ��
	if(register.question.value == ""){
		alert("������ʾ���ⲻΪ��");
		return false;
	}
	//�𰸲�Ϊ��
	if(register.answer.value == ""){
		alert("�𰸲�Ϊ��");
		return false;
	}
	//�ж�����
	if(register.emailAddr.value != ""){
		if(register.emailAddr.value.indexOf("@") == -1){
			alert("û��\"@\"���ţ����Ǹ���Ч���ʼ���ַ");
			return false;
		}
		else if(register.emailAddr.value.indexOf(".") == -1){
			alert("û��\".\"���ţ����Ǹ���Ч���ʼ���ַ");
			return false;
		}
		return true;
	}
}