<%@include file="connection.jsp" %>
<%@include file="BloodBankSideNav.jsp" %>
<div class="col-md-8 order-md-1" style="margin-top: 20px;">
           <h1 class="h2" style=" margin-left: 150px;">Blood Group</h1><br>
    <form class="needs-validation" novalidate="" action="BloodBankForm.jsp">
            <div class="row">
                
                <div class="col-md-6 mb-3" style=" margin-left: 150px;">
                
                <h3 style="float: left;">A+</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A1"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">B+</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A2"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">AB+</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A3"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">O+</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A4"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">A-</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A5"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">B-</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A6"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">AB-</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A7"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">O-</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A8"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
               
              </div>
            </div>
            
            <hr class="mb-4">
            <button class="btn btn-primary btn-lg btn-block" type="submit" style="width: auto;margin-left: 150px;">UPDATE</button>
          </form>
        <%!String A1data=null,A2data=null,A3data=null,A4data=null,A5data=null,
                  A6data=null,A7data=null,A8data=null,key=null; 
            int flag=0;
        %>  
        <%!String name; %>
        <% name = (String)session.getAttribute("username"); %>
        <%  String A1 = request.getParameter("A1");
            String A2 = request.getParameter("A2");
            String A3 = request.getParameter("A3");
            String A4 = request.getParameter("A4");
            String A5 = request.getParameter("A5");
            String A6 = request.getParameter("A6");
            String A7 = request.getParameter("A7");
            String A8 = request.getParameter("A8");
            
            if(A1!=null&& A2!=null&& A3!=null&& A4!=null&& A5!=null&& A6!=null&& A7!=null&& A8!=null ){
             try{
                  rs=st.executeQuery("select * from TotalBloodPackets where email='"+name+"'");
                  
                    while(rs.next()){
                       A1data = rs.getString("A1");
                       A2data = rs.getString("A2");
                       A3data = rs.getString("A3");
                       A4data = rs.getString("A4");
                       A5data = rs.getString("A5");
                       A6data = rs.getString("A6");
                       A7data = rs.getString("A7");
                       A8data = rs.getString("A8");
                       int a1=Integer.parseInt(A1)+Integer.parseInt(A1data);
                       int a2=Integer.parseInt(A2)+Integer.parseInt(A2data);
                       int a3=Integer.parseInt(A3)+Integer.parseInt(A3data);
                       int a4=Integer.parseInt(A4)+Integer.parseInt(A4data);
                       int a5=Integer.parseInt(A5)+Integer.parseInt(A5data);
                       int a6=Integer.parseInt(A6)+Integer.parseInt(A6data);
                       int a7=Integer.parseInt(A7)+Integer.parseInt(A7data);
                       int a8=Integer.parseInt(A8)+Integer.parseInt(A8data);
                       A1data= Integer.toString(a1);
                       A2data= Integer.toString(a2);
                       A3data= Integer.toString(a3);
                       A4data= Integer.toString(a4);
                       A5data= Integer.toString(a5);
                       A6data= Integer.toString(a6);
                       A7data= Integer.toString(a7);
                       A8data= Integer.toString(a8);
                       flag=1;
                    }
                    
                    st.executeUpdate("UPDATE `TotalBloodPackets` SET "
                            + "`A1`="+A1data+",`A2`="+A2data+",`A3`="+A3data+",`A4`="+A4data+","
                            + "`A5`="+A5data+",`A6`="+A6data+",`A7`="+A7data+",`A8`="+A8data+" WHERE email='"+name+"'");    
                    
                    
                }
             catch(Exception e){
                 
                }
             
            }
            if(A1!=null&& A2!=null&& A3!=null&& A4!=null&& A5!=null&& A6!=null&& A7!=null&& A8!=null){
            if(flag==0){ 
            
                 try{
                        try{
                           st.executeUpdate("INSERT INTO TotalBloodPackets(email,A1,A2,A3,A4,A5,A6,A7,"
                               + "A8) VALUES('"+name+"','"+A1+"','"+A2+"','"+A3+"','"+A4+"','"+A5+"',"
                               + "'"+A6+"','"+A7+"','"+A8+"')");
                      
                        }catch(Exception e){
                                out.print(e);
                        }
                      
                  } catch (Exception e) {
                      out.print("wrong buddy");
                    }
                }
            }
            flag=0;
        %>
        </div>
       </body>
</html>
