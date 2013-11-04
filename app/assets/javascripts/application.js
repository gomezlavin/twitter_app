// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require_tree ./templates
//= require_self


var printTweets = function(query){
  $.ajax( "/search", {  
    type: "get",
    data: {
      search: query
    },
    success: function(data){
      console.log(data);
      _.each(data,function(t){
        var $element = JST['templates/tweet']({value: t});
        $("#tweet_list").append($element);
      });
    }
  });
}

$(function() {

  printTweets("jalapeños");

  $("#search_button").on("click", function(event) {
    event.preventDefault();

    var search = $('#search_field').val();
    if(search != ""){
      printTweets(search);
    }
  });

});