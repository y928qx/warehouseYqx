package org.crazyit.hrsystem.service;

import org.crazyit.hrsystem.vo.*;
import org.crazyit.hrsystem.domain.*;
import org.crazyit.hrsystem.exception.*;

import java.io.Serializable;
import java.util.*;

/**
 * Description:
 * <br/>网站: <a href="http://www.crazyit.org">疯狂Java联盟</a>
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
	 * 新增员工
	 * @param emp 新增的员工
	 * @param mgr 员工所属的经理
	 */
	void addEmp(Employee emp , String mgr)
		throws HrException;
	
	/**
	 * 删除员工
	 * @param emp 删除的员工
	 * @param mgr 员工所属的经理
	 */
	void delEmp(Serializable id , String mgr)
		throws HrException;
	/**
	 * 批量删除员工
	 * @param emp 删除的员工
	 * @param mgr 员工所属的经理
	 */
	void delAllEmp(List<Integer> ids , String mgr)
		throws HrException;

	/**
	 * 根据经理返回所有的部门上个月工资
	 * @param mgr 新增的员工名
	 * @return 部门上个月工资
	 */
	List<SalaryBean> getSalaryByMgr(String mgr);

	/**
	 * 根据经理返回该部门的全部员工
	 * @param mgr 经理名
	 * @return 经理的全部下属
	 */
	List<EmpBean> getEmpsByMgr(String mgr);

	/**
	 * 根据经理返回该部门的没有批复的申请
	 * @param mgr 经理名
	 * @return 该部门的全部申请
	 */
	List<AppBean> getAppsByMgr(String mgr);

	/**
	 * 处理申请
	 * @param appid 申请ID
	 * @param mgrName 经理名字
	 * @param result 是否通过
	 */
	void check(int appid, String mgrName, boolean result);
}