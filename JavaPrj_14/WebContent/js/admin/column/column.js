//PUBLIC
//�Ƿ�Ϊ���֣��������
function IsDigit(cCheck){      
	return (('0'<=cCheck) && (cCheck<='9'));      
}
//�Ƿ�ΪӢ����ĸ
function IsAlpha(cCheck){      
	return ((('a'<=cCheck) && (cCheck<='z')) || (('A'<=cCheck) && (cCheck<='Z')))      
}
//�ж�ɾ��
function charge(content) {
return(confirm('\n\nע�⣡\n�����ڵĲ�����ɾ�� [ ' + content + ' ] ������������з���\n��ȷ��\n'));
}

//������

function check(){
	//�ж���ĿID
	if(column.classId.value == ""){
		alert("��������ĿID");
		column.classId.focus();
		return false;
	}	
	//�ж��Ƿ�Ϊ����
    number=column.classId.value;
    for(nIndex=0;nIndex<number.length;nIndex++){      
		cCheck=number.charAt(nIndex);      
		if(!(IsDigit(cCheck))){      
			alert("�Բ�����ĿIDֻ��ʹ������");      
			column.classId.focus();      
			return false;      
		}      
	}
	//��ĿΪ���ж�
	if(column.content.value == ""){
		alert("��Ŀ����Ϊ��");
		column.content.focus();
		return false;
	}
	//��Ŀ�����ж�
	if(column.content.value.length>20){
		alert("��Ŀ���ܳ���20���ַ�");
    	column.content.focus();
        return false;
	}
}