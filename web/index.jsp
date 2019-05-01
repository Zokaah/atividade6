

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <link href="css/newcss.css" rel="stylesheet" type="text/css"/>
        <script src="js/additional-methods.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        
        <title>formulario</title>
    </head>
    <body>
        <h1 id="top">Cadastro</h1>
        
         <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="container" id="cadastro">
                    <form name="formulario"  id="formulario" method="post" action="salvo.jsp">
                        <div class="form-group">
                            <label>Nome</label>
                            <input type="text" name="nome" id="nome" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Cpf</label>
                            <input type="text" name="cpf" id="cpf" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>data</label>
                            <input type="date" name="data" id="data" class="form-control cpf-mask">
                        </div>
                        <div class="form-group">
                            <label>telefone</label>
                            <input type="text" name="fone" id="fone" class="form-control">                    
                        </div>
                        
                        <input type="submit" class="btn btn-success" value="Cadastrar"/>
                    </form>
                </div>
            </div>
        </div>
    
       
        
        <script type="text/javascript">
    alert($("#cpf"));
    $("#cpf").keyup(function(event) {

          
        });

        $("#fone").keyup(function(event) {

            $(this).mask("(00) 0000-0000");

        });       
    
    
 
            
        
            
            $(document).ready(function () {
                  $("#cpf").mask("000.000.000-00");

                $("#formulario").validate({
                    //regras de validação
                    rules: {
                        nome: {
                            required: true,
                            minlength: 10,
                            maxlength: 100,
                            minWords: 2
                            
                        },
                      
                        cpf: {
                            required: true,
                            minlength: 14
                        },
                     
                        data: {
                            required: true,
                            dateISO: true
                        },
                        fone: {
                        required: true
                        }
                    },
                    //fora de Rules \/
                   
                })

            })
            
            
        </script>
    </body>
</html>
