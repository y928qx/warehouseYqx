//���������ж�
function check(){
	if(editcolumn.content_edit.value == ""){
		alert("��Ŀ����Ϊ��");
		editcolumn.content_edit.focus();
		return false;
	}
	//��Ŀ�����ж�
	if(editcolumn.content_edit.value.length > 20){
		alert("��Ŀ���ܳ���20���ַ�");
    	editcolumn.content_edit.focus();
        return false;
	}
}