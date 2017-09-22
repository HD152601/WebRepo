     $(document).ready(function(){
        $('#loginForm').submit(function(event){
        	
           event.preventDefault();
           var id = $('#id').val();
           var pw = $('#pw').val();
           console.log(id,pw);   
           
         $.post("http://httpbin.org/post",
               {"id":id, "pw":pw},
               function(data){
                  var myModal = $('#myModal');
                  myModal.modal();
                  myModal.find('.modal-body').text('<' + data.form.id + '>' + '님 로그인 되었습니다.');
               });
               
        });
     });
     
     $(function(){
        
     });
