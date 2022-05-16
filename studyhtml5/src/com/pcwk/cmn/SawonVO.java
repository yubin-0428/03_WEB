package com.pcwk.cmn;

public class SawonVO extends DTO {
	private int empno; 			// 사번
	private String ename; 		// 이름
	private String hiredate;	// 입사일
	private int deptno; 		// 부서번호
	
	public SawonVO() {}

	public SawonVO(int empno, String ename, String hiredate, int deptno) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.hiredate = hiredate;
		this.deptno = deptno;
	}

	/**
	 * @return the empno
	 */
	public int getEmpno() {
		return empno;
	}

	/**
	 * @param empno the empno to set
	 */
	public void setEmpno(int empno) {
		this.empno = empno;
	}

	/**
	 * @return the ename
	 */
	public String getEname() {
		return ename;
	}

	/**
	 * @param ename the ename to set
	 */
	public void setEname(String ename) {
		this.ename = ename;
	}

	/**
	 * @return the hiredate
	 */
	public String getHiredate() {
		return hiredate;
	}

	/**
	 * @param hiredate the hiredate to set
	 */
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}

	/**
	 * @return the deptno
	 */
	public int getDeptno() {
		return deptno;
	}

	/**
	 * @param deptno the deptno to set
	 */
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}

	@Override
	public String toString() {
		return "SawonVO [empno=" + empno + ", ename=" + ename + ", hiredate=" + hiredate + ", deptno=" + deptno
				+ ", toString()=" + super.toString() + "]";
	}
	
	
}   
