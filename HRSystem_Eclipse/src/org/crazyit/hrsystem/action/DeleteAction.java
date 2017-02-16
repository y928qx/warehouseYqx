package org.crazyit.hrsystem.action;

import java.util.List;

import org.crazyit.hrsystem.action.base.MgrBaseAction;
import org.crazyit.hrsystem.domain.Employee;
import org.hibernate.sql.Delete;

import com.opensymphony.xwork2.ActionContext;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class DeleteAction extends MgrBaseAction /*{
	private List<Integer> ids ;

	// get和set方法
	public String execute() 
	throws Exception
	{
		
		// 创建ActionContext实例
		ActionContext ctx = ActionContext.getContext();
		// 获取HttpSession中的user属性
		String mgrName = (String) ctx.getSession().get(WebConstant.USER);

		// mgr.addEmp(emp, mgr);
		// addActionMessage("删除员工成功");
		return SUCCESS;
	}
}
*/

{
	// 代表接收员工的list
	@Getter@Setter
	private List<Integer> ids;
	
	public String execute()
		throws Exception
	{
		// 创建ActionContext实例
		ActionContext ctx = ActionContext.getContext();
		// 获取HttpSession中的user属性
		String mgrName = (String)ctx.getSession()
			.get(WebConstant.USER);
		// 添加新用户
		//mgr.delEmp( ids.get(0), mgrName);
        mgr.delAllEmp( ids, mgrName);
		addActionMessage("删除员工成功");
		return SUCCESS;
	}
}


