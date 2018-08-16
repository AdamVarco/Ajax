<%-- 
    Document   : index
    Created on : Aug 16, 2018, 5:27:21 PM
    Author     : adamv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            if(request.getParameter("country")!=null){
                java.util.HashMap<String,String> arr = new java.util.HashMap<String, String>();
                arr.put("UK", "LONDON");
                arr.put("USA", "DC");
                arr.put("USSR","MOSKOW");
                out.print(arr.get(request.getParameter("country")));
                return;
            }
        %>
        <script type ="text/javascript">
            function ajax(country){
                var x = new XMLHttpRequest();
                x.onreadystatechange=function(){
                    if(x.readyState == 4){
                        document.getElementById("capital").innerHTML = x.responseText;
                    }
                }
                x.open("GET","index.jsp?country="+country,true);
                x.send(null);
            }
            </script>
    </head>
    
        <select onchange="ajax(this.options[this.selectedIndex].value)">
            <option> Select Country</option>
            <option value ="UK"> UK </option>
            <option value ="USA"> USA </option>
            <option value ="USSR"> USSR </option>
            
        </select>
        <br>
        Capital <div id="capital"></div>
</body>
</html>

    

        
        
       
    

