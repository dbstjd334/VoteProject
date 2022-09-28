package Pack01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;


public class VoteResult{
	
	private String id;
	private String selectNum;	
	private String dbSelectNum;
	private String redirectView;
	private String alertstr;
	
	private String tiger;
	private String elep;
	private String eager;
	
	private String recentPerson;
	private String sumPerson;
	
	
	private static int voteResult =0;
	
	
	public String getRedirectView() {
		return redirectView;
	}


	public void setRedirectView(String redirectView) {
		this.redirectView = redirectView;
	}


	public VoteResult(String id, String selectNum) {
		super();
		this.id = id;
		this.selectNum = selectNum;
	}
	
	public VoteResult() {};
	


	public  void setVoteResult(int voteResult) {
		VoteResult.voteResult = voteResult;
	}


	public  int getVoteResult() {
		return voteResult;
	}


	public int voteCalc() {
		
		return 1;
	}


	void voteInsert() {

		  final String driver = "org.mariadb.jdbc.Driver";
	      final String DB_IP = "18.183.36.185";
	      final String DB_PORT = "13306";
	      final String DB_NAME = "db01";
	      final String DB_URL = 
	            "jdbc:mariadb://" + DB_IP + ":" + DB_PORT + "/" + DB_NAME;

	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      PreparedStatement pstmt1 = null;
	      PreparedStatement pstmt2 = null;
	      PreparedStatement pstmt3 = null;
	      Statement stmt = null;
	      ResultSet rs = null;
	      ResultSet rs1 = null;
	      ResultSet rs2 = null;
	      ResultSet rs3 = null;

	      try {
	         Class.forName(driver);
	         conn = DriverManager.getConnection(DB_URL, "root", "1234");
	         stmt = conn.createStatement();
	         if (conn != null) {
	            System.out.println("DB 접속 성공");
	         }

	      } catch (ClassNotFoundException e) {
	         System.out.println("드라이버 로드 실패");
	         e.printStackTrace();
	      } catch (SQLException e) {
	         System.out.println("DB 접속 실패");
	         e.printStackTrace();
	      }

	      try {
	    	 
	    	  String sql = "select selectNum from voteList where id = "+id+"";
		       pstmt = conn.prepareStatement(sql);

		        rs = pstmt.executeQuery();
		        
		        while(rs.next()) {
		        	dbSelectNum = rs.getString("selectNum");
		        }
		        
	    	  if(dbSelectNum != null) {
	    		  redirectView  = "redirect:/";
	    		  setAlertstr("<script>alert(\"이미 투표를 완료하였습니다.\");</script>");
	    	  
	    	  }else{
		         String sql1= "update voteList set selectNum ="+selectNum+" where id = "+id+"";

			      pstmt1 = conn.prepareStatement(sql1);
			      


			      rs1 = pstmt1.executeQuery();
			      voteResult += pstmt1.executeUpdate();
			      
			      System.out.println(voteResult);
			      
			      redirectView=  "/voteclear/voteGood";
	    	  }
	    	  
	    	  
	    	  String sql2= "SELECT SUM(selectNum=1) as sum1, SUM(selectNum=2) as sum2, SUM(selectNum=3) as sum3, (SELECT COUNT(*) AS cnt FROM voteList WHERE selectNum IS NOT NULL) AS cnt, count(*) as sumcnt FROM voteList";
		       pstmt2 = conn.prepareStatement(sql2);

		        rs2 = pstmt2.executeQuery();
		        
		     
		        
		        while(rs2.next()) {
		        	tiger= rs2.getString("sum1");
		        	if (tiger == null) {
		        		tiger = "0";
		        	}
		        	elep= rs2.getString("sum2");
		        	if (elep == null) {
		        		elep = "0";
		        	}
		        	eager= rs2.getString("sum3");
		        	if (eager == null) {
		        		eager = "0";
		        	}
		        	recentPerson = rs2.getString("cnt");
		        	sumPerson = rs2.getString("sumcnt");
		        }
		        


	        
	      } catch (SQLException e) {
	         System.out.println("error: " + e);
	      } finally {
	         try {
	            if (rs != null) {
	               rs.close();
	            }
	            if (pstmt != null) {
	               pstmt.close();
	            }

	            if (conn != null && !conn.isClosed()) {
	               conn.close();
	            }
	            if (rs1 != null) {
		               rs1.close();
		            }
	            if (rs2 != null) {
		               rs2.close();
		            }
		            if (pstmt1 != null) {
		               pstmt1.close();
		            }
		            if (pstmt2 != null) {
			               pstmt2.close();
			            }

		            if (conn != null && !conn.isClosed()) {
		               conn.close();
		            }
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }

	   }

	}


	public String getAlertstr() {
		return alertstr;
	}


	public void setAlertstr(String alertstr) {
		this.alertstr = alertstr;
	}


	public String getTiger() {
		return tiger;
	}


	public void setTiger(String tiger) {
		this.tiger = tiger;
	}


	public String getElep() {
		return elep;
	}


	public void setElep(String elep) {
		this.elep = elep;
	}


	public String getEager() {
		return eager;
	}


	public void setEager(String eager) {
		this.eager = eager;
	}


	public String getRecentPerson() {
		return recentPerson;
	}


	public void setRecentPerson(String recentPerson) {
		this.recentPerson = recentPerson;
	}


	public String getSumPerson() {
		return sumPerson;
	}


	public void setSumPerson(String sumPerson) {
		this.sumPerson = sumPerson;
	}
	
	
}