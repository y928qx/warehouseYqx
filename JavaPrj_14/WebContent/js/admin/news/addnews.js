function check(){
	//����
	if(news.headTitle.value == ""){
		alert("���������");
		news.headTitle.focus();
		return false;
	}
	if(news.headTitle.value.length > 50){
		alert("���ⲻ�ܶ���50���ַ���");
		news.headTitle.focus();
		return false;
	}
	//��������
	if(news.content.value == ""){
		alert("���ݲ���Ϊ��");
		news.content.focus();
		return false;
	}
	//����
	if(news.author.value == ""){
		alert("���߲���Ϊ��!");
		news.author.focus();
		return false;
	}
}