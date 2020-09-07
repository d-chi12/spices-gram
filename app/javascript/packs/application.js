// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// hamburger menu //
// $(function() {
//     console.log('aaaaaaaaaaaaa');
//   $('.hamburger').click(function() {
//       $(this).toggleClass('active');

//       if ($(this).hasClass('active')) {
//           $('.globalMenuSp').addClass('active');
//       } else {
//           $('.globalMenuSp').removeClass('active');
//       }
//   });
// });

/* ========================================================
スクロールでトップに戻るボタンを表示
=========================================================*/
// スクロールして何ピクセルでアニメーションさせるか
var px_change = 1;
// スクロールのイベントハンドラを登録
window.addEventListener("scroll", function (e) {
  // 変化するポイントまでスクロールしたらクラスを追加
  var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
  if (scrollTop > px_change) {
    document.getElementById("btn-backtotop").classList.add("fadein");

    // 変化するポイント以前であればクラスを削除
  } else {
    document.getElementById("btn-backtotop").classList.remove("fadein");
  }
});

/* ========================================================
トップに戻るボタンのスムーズスクロール
=========================================================*/

document
  .getElementById("btn-backtotop")
  .addEventListener("click", function (e) {
    anime.remove("html, body");
    anime({
      targets: "html, body",
      scrollTop: 0,
      dulation: 600,
      easing: "easeOutCubic",
    });
    return false;
  });
