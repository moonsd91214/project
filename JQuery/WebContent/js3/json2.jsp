<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 디비 연동 JDBC 설치 / json형태로 바꾸어 주는 파일 설치
//	mysql-connector-java-5.1.38-bin.jar
// json-simple-1.1.1.jar

// 자바빈 => JSONObject / 배열 => JSONArray
// 1단계 드라이버 로더
Class.forName("com.mysql.jdbc.Driver");
// 2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
			String dbUser="jspid";
			String dbPass="jsppass";
			Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
// 3단계 sql 객체 생성 member 테이블 모든정보 가져오기
String sql = "select* from member";
PreparedStatement ps = con.prepareStatement(sql);
// 4단계 실행 결과 저장 => rs
ResultSet rs = ps.executeQuery();
// 5단계  첫행으로 이동하고 데이터가 있으면 
//  	자바빈 객체 생성하고 자바빈 아이디변수에 첫행 아이디 가져와서 저장한다.
//		배열변수 arr 리스트 배열 한칸 저장(자바빈)
JSONArray arr = new JSONArray();
while(rs.next()){
	// 한사람의 정보를 저장
	JSONObject obj = new JSONObject();
	obj.put("id", rs.getString("id"));
	obj.put("pass", rs.getString("pass"));
	obj.put("name", rs.getString("name"));
	// 배열 한칸에 저장
	arr.add(obj);
}

%>
<%=arr%>