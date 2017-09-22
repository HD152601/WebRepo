<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><!-- ë°ìí -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
     <style>
     div.container{
     padding-top:30px;
     padding-bottom: 20px;
     }
     </style>
     <script>
     function menu_over(e){
        e.setAttribute("class","nav-item active");      // li class="nav-item active"
     }
     function menu_out(e){
        e.setAttribute("class","nav-item");            // li calss="nav-item"
     }
     </script>
  </head>
  <body>
  
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <%@ include file = "menu.jsp" %>
    <form class="form-inline my-2 my-lg-0" id="loginForm">
      <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" required>
      <input class="form-control mr-sm-2" type="password" placeholder="PW" aria-label="PW" id="pw" required>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
  </div>
</nav>
   <div class="container">
    <h1>Hello, Bootstrap</h1>
    <p>
    asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf
     </p>
    </div>
  <%@ include file = "modal.jsp" %>

   
   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
     
     <script>
     $(document).ready(function(){
        $('#loginForm').submit(function(event){
           // ìëì¼ë¡ submitëë ê±¸ ë§ê¸°
           event.preventDefault();
           
           // id,pwê° ê°ì ¸ì¤ê¸°
           // document.getElementById("id").value
           var id = $('#id').val();
           var pw = $('#pw').val();
           console.log(id,pw);   
           
           // ìë²ë¡  post ì ì(ajax)
         $.post("/WebClass/login",
               {"id":id, "pw":pw},
               function(data){
                  //alert(data.form.id + 'ë ë¡ê·¸ì¸ ëììëë¤.');
                  var myModal = $('myModal');
                  myModal.modal();
                  myModal.find('.modal-body').text(data.id + 'ë ë¡ê·¸ì¸ ëììµëë¤.');
               });
               
        });
     });
     
     // ê°ë¨íê² íê¸°
     $(function(){
        
     });
     
     </script>
  
  </body>
</html>