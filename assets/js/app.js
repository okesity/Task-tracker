// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.scss"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html"
import jQuery from 'jquery';
window.jQuery = window.$ = jQuery;
import "bootstrap";

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"

$(function () {
  
    $('#start-button').click((ev) => {
      let current_time = new Date($.now())
      console.log(current_time)
      $('#start-button').addClass("disabled")
      $('#stop-button').removeClass("disabled")
      $('#stop-button').attr('time-start', current_time)
    })
  
  
    $('#stop-button').click((ev) => {
      let end_time = new Date($.now())
      $('#start-button').removeClass("disabled")
      $('#stop-button').addClass("disabled")
      let start_time = new Date($('#stop-button').attr('time-start'))
      let task_id = $('#stop-button').attr('data-task-id')
      let text = JSON.stringify({
        time_block: {
          end_time: end_time,
          start_time: start_time,
          task_id: parseInt(task_id),
        },
      });
      console.log(text)
  
      $.ajax('ajax/timeblocks', {
        method: "post",
        dataType: "json",
        contentType: "application/json; charset=UTF-8",
        data: text,
        success: (resp) => {
          console.log("added ", text);
        },
      });
    });
  
  })