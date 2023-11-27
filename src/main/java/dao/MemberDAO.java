package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.jdbcUtil;
import vo.MemberVO;

public class MemberDAO{
	
	public MemberDAO() {
		
	}
	public ArrayList<String> getMemberList() {
		ArrayList<String> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select member_id from userMember";
		
		conn = jdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(rs.getString("member_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close(conn, pstmt, rs);
		}
		return list;
	}
	public MemberVO getMemberData(String id ) {
		MemberVO vo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM userMember WHERE member_id=?";
		
		try { 
			conn = jdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new MemberVO();
				vo.setMemberId(rs.getString("member_id"));
				vo.setMemberPwd(rs.getString("member_pwd"));
				vo.setMemberName(rs.getString("member_name"));
			}
		}catch (SQLException e)  {
			e.printStackTrace();
			System.out.println("checkLoginUser : sql error");
		} finally {
			jdbcUtil.close(conn, pstmt, rs);
		}
		return vo;
	} 
	
		public boolean existID(String id) {
		boolean isExist = false;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM userMember WHERE member_id=?";
		
		try {
			conn = jdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				isExist = true;
			}
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.println("checkLoginUser : sql error");
		} finally {
			jdbcUtil.close(conn, pstmt, rs);
		}
		return isExist;
		}
		public int removeMember(String id) {
			int result = 0;
			Connection conn = null;
			PreparedStatement pstmt = null;
			String sql = "DELETE FROM userMember WHERE member_id=?";
			try {
				conn = jdbcUtil.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				result = pstmt.executeUpdate();
			}catch (SQLException e) {
				e.printStackTrace();
		}
			return result;
			
		}
		public int insertMember(MemberVO data) {
			int result = 0;
			Connection conn = null;
			PreparedStatement pstmt = null;
			String sql = "INSERT INTO userMember(member_id, member_pwd, member_name) values(?,?,?)";
			try {
				conn = jdbcUtil.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, data.getMemberId());
				pstmt.setString(2, data.getMemberPwd());
				pstmt.setString(3, data.getMemberName());
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return result;
		}
		public int updateMember(String pwd, String id, String name) {
			int n = 0;
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			String sql = "update userMember set member_pwd=?, member_name=? where member_id=?";
			
			conn = jdbcUtil.getConnection();
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pwd);
				pstmt.setString(2, id);
				pstmt.setString(3, name);
				n = pstmt.executeUpdate();
				
			}catch (SQLException e) {
				e.printStackTrace();
			}finally {
				jdbcUtil.close(conn,pstmt);
			}
			return n;
		}
		
	}
	
		
