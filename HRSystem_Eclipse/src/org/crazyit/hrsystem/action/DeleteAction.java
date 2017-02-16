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

	// get��set����
	public String execute() 
	throws Exception
	{
		
		// ����ActionContextʵ��
		ActionContext ctx = ActionContext.getContext();
		// ��ȡHttpSession�е�user����
		String mgrName = (String) ctx.getSession().get(WebConstant.USER);

		// mgr.addEmp(emp, mgr);
		// addActionMessage("ɾ��Ա���ɹ�");
		return SUCCESS;
	}
}
*/

{
	// �������Ա����list
	@Getter@Setter
	private List<Integer> ids;
	
	public String execute()
		throws Exception
	{
		// ����ActionContextʵ��
		ActionContext ctx = ActionContext.getContext();
		// ��ȡHttpSession�е�user����
		String mgrName = (String)ctx.getSession()
			.get(WebConstant.USER);
		// ������û�
		//mgr.delEmp( ids.get(0), mgrName);
        mgr.delAllEmp( ids, mgrName);
		addActionMessage("ɾ��Ա���ɹ�");
		return SUCCESS;
	}
}


