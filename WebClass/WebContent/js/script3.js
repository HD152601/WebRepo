     $(document).ready(function(){
        $('#loginForm').submit(function(event){
           // 자동으로 submit되는 걸 막기
           event.preventDefault();
           
           var e = document.getElementById("List");
           var strUser = e.options[e.selectedIndex].value;
           
           var number = $('#number').val();
           var name = $('#name').val();
           console.log(number,name);   

         $.post("http://httpbin.org/post",
               {"number":number, "name":name},
               function(data){
                  var myModal = $('#myModal');
                  var Modal = $('#Modal');
                  if(strUser != "c0"){
                      myModal.modal();
                      myModal.find('.modal-body').text('<' + data.form.name + '>' + '님 회원가입 되었습니다.');
                  }
                  else
                	  {
                	  Modal.modal();
                	  Modal.find('.modal-body').text('반을 선택하세요!');
                	  }
               });
               
        });
     });