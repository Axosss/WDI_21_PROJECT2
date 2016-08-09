// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require tether
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

//Ingredient form add-on : Add a new ingredient line/form when type in the ingredient form
//I should try to do it delete it yet when it is blank
$(document).on("turbolinks:load", function() {

  $ingredients = $('input[name=ingredient]');
  $hiddenField = $('input[name="recipe[ingredients]"]');

  if($ingredients.length > 0) {
    // on blur of that input
    $ingredients.on('blur', function() {
      // get all of the data from the ingredient inputs
      var str = $('input[name=ingredient]').toArray().reduce(function(prev,current) {
        var $input = $(current);
        if($input.val()) prev.push($input.val());
        return prev;
        // join them into one string with commas
      }, []).join(',');
      // put the data into the hidden field
      $hiddenField.val(str);

    });

    var $last = $ingredients.last();

    $last.on('keyup', function() {
      if($(this).val()) {
        $clone = $(this).clone(true);
        $clone.val('');
        $clone.appendTo($ingredients.parent());
        $(this).off('keyup');
      }
    });
  }

});

//Direction form add-on 
  // $(document).on("turbolinks:load", function() {

  //   $ingredients = $('input[name=direction]');
  //   $hiddenField = $('input[name="recipe[directions]"]');

  //   if($directions.length > 0) {

  //     $directions.on('blur', function() {

  //       var str = $('input[name=direction]').toArray().reduce(function(prev,current) {
  //         var $input = $(current);
  //         if($input.val()) prev.push($input.val());
  //         return prev;
  //       }, []).join(',');

  //       $hiddenField.val(str);

  //     });

  //     var $last = $directions.last();

  //     $last.on('keyup', function() {
  //       if($(this).val()) {
  //         $clone = $(this).clone(true);
  //         $clone.val('');
  //         $clone.appendTo($directions.parent());
  //         $(this).off('keyup');
  //       }
  //     });
  //   }

  // });
