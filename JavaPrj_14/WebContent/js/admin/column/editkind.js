function check(){
	//�ж�����ֵ�Ƿ�Ϊ��
	if(editkind.content.value == ""){
		alert("��Ŀ����Ϊ��");
		editkind.content.focus();
		return false;
	}
	//��Ŀ�����ж�
	if(editkind.content.value.length>20){
		alert("��Ŀ���ܳ���20���ַ�");
    	editkind.content.focus();
        return false;
	}
}