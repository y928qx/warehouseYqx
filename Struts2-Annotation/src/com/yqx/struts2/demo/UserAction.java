package com.yqx.struts2.demo;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;



import com.opensymphony.xwork2.ActionSupport;

import lombok.Getter;
import lombok.Setter;
@Setter@Getter
public class UserAction extends ActionSupport{
	private static final long  serialVersionUID = 5039134787852719761L;
	private String username;
	private String password;
/*	
	value��ֵ��path��ҳ��form��ֵ���Ӧ
	@resule
	name��ת��ַ����
	location ������ת��ַ
	*/

@Action(value="/users",results={@Result(name="success",location="/results/success.jsp")})
public String execute(){
	return SUCCESS;
}
	
	
}
