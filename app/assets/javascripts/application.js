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
      success: function(data){
        $(".goodsrow").html("");
        console.log(data);
        $.each(data,function(key,value){
          var divdd =  "<div class='col-md-2 goodscol'>";
          divdd += "<a href ='/products/"+value.id+"'><img class ='sub-cat-pic' src="+ value.image.url + " ></a>"
          // divdd += "<%= link_to image_tag("+ value.image.url +", :width => "158px", :height => "158px"), p%>"
          // クラスからエクスターナルCSSにとばして画像サイズを調節した。
          // STYLEがタグの中で使えなかった
          // RUBYタグも使えるかよくわかってない
          divdd += "<span class='categorydevide'>" + value.name + "</span> <br>"
          divdd += "Rs." + value.price
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

  $(".gnum_cart").change(function(){
    alert(cartPrice);
//     var quantity = $(this).val();
//     var data = $(this).attr("data");
// alert(quantity);
// alert(data);
// alert("sub-"+data);
//
//     $("#q-"+data).text(quantity);
//     var ans = quantity * cartPrice;
//     // alert(ans);
//     $("#sub-"+data).text(ans);


    // $.ajax({
    //   url: "/carts/",
    //   type: "get",
    //   data: {"category": a },
    //   dataType: "JSON",
    //   success: function(data){
    //
    //   },
    //   error: function(error){
    //
    //   },
    //
    //
    // });
  });
});
