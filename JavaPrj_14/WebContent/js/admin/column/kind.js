function check(){
	//��ĿΪ���ж�
	if(kind.content.value == ""){
		alert("��Ŀ����Ϊ��");
		kind.content.focus();
		return false;
	}
	//��Ŀ�����ж�
	if(kind.content.value.length>255){
		alert("��Ŀ���ܳ���255���ַ�");
    	kind.content.focus();
        return false;
	}
}