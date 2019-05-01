
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/newcss.css" rel="stylesheet" type="text/css"/>
        <title>Salvo</title>
    </head>
    <body>
        <%
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String data = request.getParameter("data");
        String fone = request.getParameter("fone");
        
    
        %>
       <div class="container">
        <h1><%=nome%></h1>
        <h2><%=cpf%></h2>
        <p>: <%=data%></p>
        <p><%=nome%> nasceu no dia <%=data%> e possui o Cpf <%=cpf%></p>
       </div>
       <div class="row">
           <div class="col-lg-12">
               <button class="btn btn-success" id="botao"><a href="index.jsp">Voltar</a></button>
           </div>
       </div>
    
        
        
    </body>
</html>
