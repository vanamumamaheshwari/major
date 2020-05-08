package org.javabrains.in;

public class EmpDetails {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Emp e=new Emp();
		e.setEmpid(1);
		e.setEmpname("uma");
		System.out.println(e.getEmpid());
		System.out.println(e.getEmpname());
	}
	}
	class Emp{
		private int empid;
		private String empname;
		public int getEmpid() {
			return empid;
		}
		public void setEmpid(int empid) {
			this.empid = empid;
		}
		public String getEmpname() {
			return empname;
		}
		public void setEmpname(String empname) {
			this.empname = empname;
		}
	}


