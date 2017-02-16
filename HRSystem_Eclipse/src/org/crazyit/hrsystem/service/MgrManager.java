package org.crazyit.hrsystem.service;

import org.crazyit.hrsystem.vo.*;
import org.crazyit.hrsystem.domain.*;
import org.crazyit.hrsystem.exception.*;

import java.io.Serializable;
import java.util.*;

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
public interface MgrManager
{
	/**
	 * ����Ա��
	 * @param emp ������Ա��
	 * @param mgr Ա�������ľ���
	 */
	void addEmp(Employee emp , String mgr)
		throws HrException;
	
	/**
	 * ɾ��Ա��
	 * @param emp ɾ����Ա��
	 * @param mgr Ա�������ľ���
	 */
	void delEmp(Serializable id , String mgr)
		throws HrException;
	/**
	 * ����ɾ��Ա��
	 * @param emp ɾ����Ա��
	 * @param mgr Ա�������ľ���
	 */
	void delAllEmp(List<Integer> ids , String mgr)
		throws HrException;

	/**
	 * ���ݾ��������еĲ����ϸ��¹���
	 * @param mgr ������Ա����
	 * @return �����ϸ��¹���
	 */
	List<SalaryBean> getSalaryByMgr(String mgr);

	/**
	 * ���ݾ����ظò��ŵ�ȫ��Ա��
	 * @param mgr ������
	 * @return �����ȫ������
	 */
	List<EmpBean> getEmpsByMgr(String mgr);

	/**
	 * ���ݾ����ظò��ŵ�û������������
	 * @param mgr ������
	 * @return �ò��ŵ�ȫ������
	 */
	List<AppBean> getAppsByMgr(String mgr);

	/**
	 * ��������
	 * @param appid ����ID
	 * @param mgrName ��������
	 * @param result �Ƿ�ͨ��
	 */
	void check(int appid, String mgrName, boolean result);
}