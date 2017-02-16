package org.crazyit.hrsystem.vo;

import java.io.Serializable;
/**
 * Description:
 * <br/>��վ: <a href="http://www.crazyit.org">���Java����</a>
 * <br/>Copyright (C), 2001-2016, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EmpBean implements Serializable {
	private static final long serialVersionUID = 48L;
	private String empName;
	private String empPass;
	private double amount;
	private double empshengao;
	private double emptizhong;
	private Integer empid;
	// �޲����Ĺ�����
	public EmpBean() {
	}

	// ��ʼ��ȫ����Ա�����Ĺ�����
	public EmpBean(String empName, String empPass, double amount, double empshengao, double emptizhong ,Integer empid) {
		this.empName = empName;
		this.empPass = empPass;
		this.amount = amount;
		
		this.empshengao = empshengao;
		this.emptizhong = emptizhong;
		this.empid =empid;
	}

}