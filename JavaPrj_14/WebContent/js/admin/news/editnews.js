function check(){
	//����
	if(addarticle.title.value == ""){
		alert("���������");
		addarticle.title.focus();
		return false;
	}
	if(addarticle.title.value.length > 255){
		alert("���ⲻ�ܶ���255���ַ���");
		addarticle.title.focus();
		return false;
	}
	//��������
	if(addarticle.content.value == ""){
		alert("���ݲ���Ϊ��");
		addarticle.content.focus();
		return false;
	}
	//����
	if(addarticle.author.value == ""){
		alert("���߲���Ϊ��!");
		addarticle.author.focus();
		return false;
	}
}