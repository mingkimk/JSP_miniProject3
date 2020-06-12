package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	Context initContext;
	Context envContext;
	DataSource ds;

	private static MemberDAO mDAO;

	private MemberDAO() {

	}

	public int confirmID(String id) {
		int result = -1;
		String sql = "SELECT id FROM signup where id =?";
		if (connect()) {
			try {
				PreparedStatement psmt = conn.prepareStatement(sql);
				psmt.setString(1, id);
				rs = psmt.executeQuery();
				if (rs.next()) {
					result = 1;
				} else {
					result = -1;
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (conn != null)
						conn.close();

				} catch (Exception e2) {
				}
			}

		}
		return result;
	}

	public void insert(MemberDTO o) {
		MemberDTO b = o;
		if (connect()) {
			try {
				String sql = "insert into signup values(?,?,?,?,?,?,?)";
				PreparedStatement psmt = conn.prepareStatement(sql);
				psmt.setString(1, b.getId());
				psmt.setString(2, b.getPwd());
				psmt.setString(3, b.getName());
				psmt.setInt(4, b.getAge());
				psmt.setInt(5, b.getGender());
				psmt.setString(6, b.getInterest());
				psmt.setString(7, b.getFree());
				psmt.executeUpdate();
			} catch (SQLException e) {
			}
		} else {
		}

	}

	public void update(MemberDTO o) {

	}

	public void delete(MemberDTO o) {
		MemberDTO b = o;

	}

	public MemberDTO idpwd(String id, String pwd) {
		MemberDTO member = null;
		if (connect()) {
			try {
				String sql = "SELECT * FROM signup where id =? and pwd =?";
				PreparedStatement psmt = conn.prepareStatement(sql);
				psmt.setString(1, id);
				psmt.setString(2, pwd);
				rs = psmt.executeQuery();
				if (rs.next()) {
					member = new MemberDTO();
					member.setId(rs.getString("id"));
					member.setPwd(rs.getString("pwd"));
					member.setName(rs.getString("name"));
					member.setAge(rs.getInt("age"));
					member.setGender(rs.getInt("gender"));
					member.setInterest(rs.getString("interest"));
					member.setFree(rs.getString("free"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("DB연결 실패");
			System.exit(0);
		}

		return member;
	}

	public ArrayList<MemberDTO> getAll() {
		ArrayList<MemberDTO> list = new ArrayList<>();
		String sql = "SELECT * FROM signup";
		if (connect()) {
			try {
				stmt = conn.createStatement();
				if (stmt != null) {
					rs = stmt.executeQuery(sql);
					while (rs.next()) {
						MemberDTO member = new MemberDTO();
						member.setId(rs.getString("id"));
						member.setPwd(rs.getString("pwd"));
						member.setName(rs.getString("name"));
						member.setAge(rs.getInt("age"));
						member.setGender(rs.getInt("gender"));
						member.setInterest(rs.getString("interest"));
						member.setFree(rs.getString("free"));
						list.add(member);
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} else {
			System.out.println("DB연결 실패");
			System.exit(0);
		}

		return list;
	}

	public static MemberDAO getInstance() {
		if (mDAO == null) {
			mDAO = new MemberDAO();
		}
		return mDAO;
	}

	private boolean connect() {
		boolean result = true;
		try {
			if (conn == null) {
				initContext = new InitialContext();
				envContext = (Context) initContext.lookup("java:/comp/env");
				ds = (DataSource) envContext.lookup("jdbc/myoracle");
				conn = ds.getConnection();
			}
			return result;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
}
