package org.crazyit.hrsystem.vo;

import java.io.Serializable;
import java.util.Date;
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
public class AttendBean implements Serializable
{
	private static final long serialVersionUID = 48L;
	private int id;
	private String dutyDay;
	private String unType;
	private Date time;

	// �޲����Ĺ�����
	public AttendBean()
	{
	}
	// ��ʼ��ȫ����Ա�����Ĺ�����
	public AttendBean(int id , String dutyDay
		, String unType , Date time)
	{
		this.id = id;
		this.dutyDay = dutyDay;
		this.unType = unType;
		this.time = time;
	}

	// id��setter��getter����
	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return this.id;
	}

	// dutyDay��setter��getter����
	public void setDutyDay(String dutyDay)
	{
		this.dutyDay = dutyDay;
	}
	public String getDutyDay()
	{
		return this.dutyDay;
	}

	// unType��setter��getter����
	public void setUnType(String unType)
	{
		this.unType = unType;
	}
	public String getUnType()
	{
		return this.unType;
	}

	// time��setter��getter����
	public void setTime(Date time)
	{
		this.time = time;
	}
	public Date getTime()
	{
		return this.time;
	}

}