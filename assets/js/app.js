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


// $(function(){
//     $('#time-button').click((ev) =>{
//         console.log("receive botton click");
//         let start_time = $('#start-time').val();
//         let end_time =$('#end-time').val();
//         let user_id = $(ev.target).data('data-user-id');

//         let text = JSON.stringify({
//             timeblock:{
//                 start_time: start_time,
//                 end_time: end_time,
//                 user_id: user_id,
//             },
//         })
//     });

//     $.ajax(time_block_path, {
//         method: "post",
//         dataType: "json",
//         contentType: "application/json; charset=UTF-8",
//         data: text,
//         success: (resp) => {
//             console.log("post json succeed!");
//           //$('#rating-form').text(`(your rating: ${resp.data.stars})`);
//         },
//       });

// });