// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){
  // alert("AJAX!");



  $(".categoryb").click(function(){
    var cat_name = $(this).val();

    $.ajax({
      url: "/products",
      type: "get",
      data: {"category": cat_name },
      dataType: "JSON",
      success: function(somename){
        $(".goodsrow").html("");
        console.log(somename);
        $.each(somename,function(key,value){
          var divdd =  "<div class='col-md-2 goodscol'>";
          divdd += "<a href ='/products/"+value.id+"'><img class ='sub-cat-pic' src="+ value.image.url + " ></a>"
          // divdd += "<%= link_to image_tag("+ value.image.url +", :width => "158px", :height => "158px"), p%>"
          // クラスからエクスターナルCSSにとばして画像サイズを調節した。
          // STYLEがタグの中で使えなかった
          // RUBYタグも使えるかよくわかってない
          divdd += "<span class='categorydevide'>" + value.name + "</span> <br>"
          divdd += "¥" + value.price
          divdd += "<div id='kinds'> #" + value.category_id + "</div>"
          divdd += "<div id='kinds'> #" + value.state_id + "</div>"
          divdd += "<div id='kinds'> #" + value.scene_id + "</div>"
          divdd += "</div>"
          $(".goodsrow").append(divdd);

          // $(".categorydevide").text(value.name);

        });
      },
      error: function(error){

      },


    });
  });
  $(".categoryb2").click(function(){
    var cat_name2 = $(this).val();

    $.ajax({
      url: "/products",
      type: "get",
      data: {"category": cat_name2 },
      dataType: "JSON",
      success: function(somename){
        $(".goodsrow").html("");
        console.log(somename);
        $.each(somename,function(key,value){
          var divdd =  "<div class='col-md-2 goodscol'>";
          divdd += "<a href ='/products/"+value.id+"'><img class ='sub-cat-pic' src="+ value.image.url + " ></a>"
          // divdd += "<%= link_to image_tag("+ value.image.url +", :width => "158px", :height => "158px"), p%>"
          // クラスからエクスターナルCSSにとばして画像サイズを調節した。
          // STYLEがタグの中で使えなかった
          // RUBYタグも使えるかよくわかってない
          divdd += "<span class='categorydevide'>" + value.name + "</span> <br>"
          divdd += "¥" + value.price
          divdd += "<div id='kinds'> #" + value.category_id + "</div>"
          divdd += "<div id='kinds'> #" + value.state_id + "</div>"
          divdd += "<div id='kinds'> #" + value.scene_id + "</div>"
          divdd += "</div>"
          $(".goodsrow").append(divdd);

          // $(".categorydevide").text(value.name);

        });
      },
      error: function(error){

      },


    });
  });

  $(".categoryb3").click(function(){
    var cat2_name = $(this).val();

    $.ajax({
      url: "/products",
      type: "get",
      data: {"category": cat2_name },
      dataType: "JSON",
      success: function(somename){
        $(".itemgoods").html("");
        $(".goodsrow2").html("");
        // ↑これを入れなければアイテムを叩いた分だけ商品が映る
        console.log(somename);
        $.each(somename,function(key,value){
          var divdd =  "<div class='col-md-2 goodscol'>";
          divdd += "<a href ='/products/"+value.id+"'><img class ='sub-cat-pic' src="+ value.image.url + " ></a>"
          // divdd += "<%= link_to image_tag("+ value.image.url +", :width => "158px", :height => "158px"), p%>"
          // クラスからエクスターナルCSSにとばして画像サイズを調節した。
          // STYLEがタグの中で使えなかった
          // RUBYタグも使えるかよくわかってない
          divdd += "<span class='categorydevide'>" + value.name + "</span> <br>"
          divdd += "¥" + value.price
          divdd += "<div id='kinds'> #" + value.category_id + "</div>"
          divdd += "</div>"
          $(".goodsrow").append(divdd);

          // $(".categorydevide").text(value.name);

        });
      },
      error: function(error){

      },


    });
  });
// カートの中身の数を変える
  $(".gnum_cart").change(function(){

    var quantity = $(this).val();
    var data = $(this).attr("data");
    var quan = $("#q-"+data).text();
    var price = $("#p-"+data).text();
    var ans = quantity * parseInt(price);
    // $("#p-"+data)はspanタグに入っているためstringで返される。よって、parseIntに変更
    $("#q-"+data).text(quantity);
    $("#q-"+data).text(quantity);
    $("#sub-"+data).text(ans);

  });



// カートの中身変更後のデータベースへの送信
  $(".subtotalbutton").click(function(){
    var data = $(this).attr("data");
    // changeぼたんのdataから値をとってくる
    var quan = $("#q-"+data).text();
    var subtotal = $("#sub-"+data).text();

  $.ajax({
    url: "/cupdate",
    type: "get",
    data: {"cart":{ "id":data, "quan": quan, "subto": subtotal } },
    dataType: "JSON",
    success: function(data){
      if (data.mess=="success") {
        alert("record updated");
        location.reload();
        // これでビューをリフレッシュできる↑
      }
      console.log(data);
    },
    error: function(error){
      console.log(error);

    },
  });
});

// カートの中身削除
  $(".deletebutton").click(function(){
    var dataid = $(this).attr("data");
    var pname = $("#pname-"+dataid).text();



        if (confirm("Are you sure to delete this ["+pname+" ]")) {
          // confirmbox↑
          $.ajax({
            url: "/cdelete",
            type: "get",
            data: {"cart":{ "id":dataid } },
            dataType: "JSON",
            success: function(data){

              if (data.message=="delete success") {
                alert("Are you sure??\n If you push [OK] ["+pname+" ] will be deleted.");
                location.reload();
                $("#cartbox-"+dataid).html("["+pname+" ] is deleted!");


              }
              console.log(data);


            },
            error: function(error){
              console.log(error);

            },
          });
        }
  });

  // ITEMテーブルからの表示
  // $(".itembutton").click(function(){
  //
  //   $.ajax({
  //     url: "/hitem",
  //     type: "get",
  //     data: ,
  //     dataType: "JSON",
  //     success: function(data){
  //       // $(".goodsrow").html("");
  //       console.log(data);
  //       $.each(data,function(key,value){
  //         alert("aaaaaaaaaaaaaaa");
  //         var div =  "<div class='col-md-2 goodscol'>";
  //         div += "<span>" + value.name + "</span> <br>";
  //         div += "</div>";
  //         $(".items").append(div);
  //
  //         // $(".categorydevide").text(value.name);
  //
  //       });
  //     },
  //     error: function(error){
  //
  //     },
  //
  //
  //   });
  // });


  $(".fbtn1").click(function(){
    $(".f-container-2").show();
    $(".f-container-1").slideUp();
  });
  $(".fbtn2").click(function(){
    $(".f-container-3").show();
    $(".f-container-2").slideUp();
  });
  $(".fbtn-back1").click(function(){
    $(".f-container-2").hide();
    $(".f-container-1").slideDown();
  });
  $(".fbtn-back2").click(function(){
    $(".f-container-3").hide();
    $(".f-container-2").slideDown();
  });


});
