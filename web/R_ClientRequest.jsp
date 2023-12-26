
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<title>Designing Secure</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="#">Designing</a></h1>
    <p>Secure and Efficient Biometric</p>
    <div id="topnav">
      <ul>
        <li><a href="ResourceHome.jsp">Home</a></li>
         <li><a class="active"  href="R_ClientRequest.jsp">Client Request</a></li>
         <li><a href="ClientAccessedFiles.jsp">Client Accessed Files</a></li>
         
         <li class="last"><a href="ResourceServer.jsp">Logout</a></li>
      </ul>
    </div>
    <div id="search">
    
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="gallery">
      <h2>Welcome to <strong>Resource</strong> home page</h2>
     
    <div class="clear"></div>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <div id="content">
      
        <h4>View All Client Requests</h4>     
        
        <table>
            <tr>
                <th>Client ID</th>
                 <th>Client Name</th>
                 <th>FingerPrint</th>
                 <th>Status</th>
            </tr>
            <%
            try{
              String query="select  * from resource_req";
              ResultSet r=Queries.getExecuteQuery(query);
              while(r.next()){
                  String rid=r.getString("rid");
                  String cid=r.getString("cid");
                   String cname=r.getString("uname");
                   String status=r.getString("status");
                   %>
                   <tr>
                       <td><%=cid%></td>
                       <td><%=cname%></td>
                       <td><image src="rview.jsp?id=<%=rid%>" width="100" height="80"/></td>
                       <%if(status.equals("waiting")){
                         %>
                       <td><a href="VerifyRequest.jsp?rid=<%=rid%>&cid=<%=cid%>">Verify</a></tD>
                       <%
                       }else{
%>
                     <td><%=status%></td>  
                       <%
}%>
                   </tr>
                   
                   <%
              }
                
                
            }catch(Exception e){
             out.println(e);   
            }
            
            
            
            %>
            
            
        </table>
        
        
        
        
        
        
        
        
      <div class="homecontent">
       
        <div class="clear"></div>
      </div>
     </div>
    <div id="column">
      <div id="featured">
        <ul>
          <li>
                 </li>
        </ul>
      </div>
     
    </div>
    <div class="clear"></div>
  </div>
</div>
<div class="wrapper col5">
  <div id="footer">
   
    <!-- End Contact Form -->
    <div id="compdetails">
     
     
      <div class="clear"></div>
    </div>
    <!-- End Company Details -->
    <div id="copyright">
      <p class="fl_left">Designing Secure and Efficient Biometric-Based Secure Access Mechanism</p>
       <br class="clear" />
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>
</html>