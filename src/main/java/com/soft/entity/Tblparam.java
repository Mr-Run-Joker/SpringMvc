package com.soft.entity;

import java.io.Serializable;
import java.math.BigDecimal;
//import java.util.List;


/**
 * The persistent class for the TBLPARAM database table.
 * 
 */
 
//@NamedQuery(name="Tblparam.findAll", query="SELECT t FROM Tblparam t")
public class Tblparam implements Serializable {
	private static final long serialVersionUID = 1L;

	private long id;

	private String name;

	private BigDecimal pid;
	
	private BigDecimal value;
	/*//子参数
	private List<Tblparam> childList;
*/
	public Tblparam() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getPid() {
		return this.pid;
	}

	public void setPid(BigDecimal pid) {
		this.pid = pid;
	}

	public BigDecimal getValue() {
		return value;
	}

	public void setValue(BigDecimal value) {
		this.value = value;
	}

	/*public List<Tblparam> getChildList() {
		return childList;
	}

	public void setChildList(List<Tblparam> childList) {
		this.childList = childList;
	}*/

}