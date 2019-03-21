<%@include file="connection.jsp" %>

<%@include file="HospitalSideNav .jsp" %>
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
        margin-bottom: 0;
        border-radius: 0;
    }

    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 540px}

    /* Set gray background color and 100% height */
    .sidenav {
        padding-top: 20px;
        height: 100%;
    }
    #img{
        margin-top: 50px;
        width: 80%;
        height: 95%;
    }
    /* Set black background color, white text and some padding */
    footer {
        background-color: #555;
        color: white;
        padding: 15px;
    }

    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
        .sidenav {
            height: auto;
            padding: 15px;
        }
        .row.content {height:auto;} 
    }
    .col-sm-10{
        height: 600px;
    }
    .card {
        margin-top: 10px;
        box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        transition: 0.1s;
        width: 30%;
        float: left;
        margin-left: 30px;
        margin-bottom: 10px;
    }

    .card:hover {
        box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2);
    }
    .containt {
        padding: 2px 16px;
    }
</style>
<%! String email; %>
<% email= (String)session.getAttribute("user"); %>
<%! String bloodGroup,amount,hospitalname;
    int id; %>
<div class="container-fluid text-center">    
    <div class="row content">
        <div class="col-sm-12 text-left"> 
            <% rs = st.executeQuery("SELECT * FROM HospitalPost where email='"+email+"'"); %>
            <% while(rs.next()){ 
                id = rs.getInt("id");
                bloodGroup = rs.getString("bloodGroup");
                amount = rs.getString("packetAount");
                hospitalname=rs.getString("hospitalName");
            %>
                
            <div class="card">
                <img src="img_avatar.png" alt="Avatar" style="width:100%;">
                <div class="containt">
                    <h4><b>POST ID:-  <%=id%></b></h4> 
                    <p>BLOOD GROUP:-  <%=bloodGroup  %></p> 
                    <p>AMOUNT:-  <%=amount  %></p> 
                </div>
            </div>
            <% } %>
        </div>
    </div>    
</div>
</body>
</html>
