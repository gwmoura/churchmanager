// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require bootstrap.min
//= require cocoon
//= require_tree .

$(function(){

  $(".phone").mask('(99) 9999-9999',{placeholder: "(__) ____-____"});
  $('.zip-code').mask('00000-000',{placeholder: "_____-___"});

  $("#member_name").keyup(function(){
    member_name = $("#member_name").val();
    //console.log(member_name,member_name.length);
    if(member_name.length >= 5){
      $("#member-exists").html('<div class="alert alert-info"><b>Pesquisando por:</b> "'+member_name+'"</div>');
      $.get(
        '/members.json',
        {name:member_name},
        function(data){
          if(data.length > 0){
            //console.log('result',data);
            content = '<ul>';
            for(i=0;i<data.length;i++){
              content+='<li><a href="/members/'+data[i].id+'/">'+data[i].name+'</a></li>';  
            }
            content += '</ul>';
            $("#member-exists").html('<div class="alert alert-warning"><div><b>Registros encontrados:</b></div>'+content+'</div>');
          }else{
            $("#member-exists").html('<div class="alert alert-info"><b>Nenhum registro encontrado com o termo: </b>"'+member_name+'"</div>');
          }
        },
        "json"
      );
    }else if(member_name.length == 0){
      $("#member-exists").html('');
    }
    return false;
  });

  $("#member_search").keyup(function(){
    member_name = $("#member_search").val();
    url = '/members';
    if(member_name.length>=5){
      url = '/members?name='+member_name;
      $("#member_search_msg").html('<div class="alert alert-info">Procurando por: <b>'+member_name+'</b></div>');
    }else if(member_name.length == 0){
      $("#member_search_msg").html('');
    }
    if(member_name.length>=5 || member_name.length==0){
      $.get(
        url,
        {},
        function(data){
          if(data.length > 0){
            //console.log('result',data);
            content = $(data).find("table");
            $("table").html(content);
            $("#member_search_msg").html('');
          }
        }
      );
    }
  });


});
