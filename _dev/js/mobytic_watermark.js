$(document).ready(() => {
  mobytic_add_watermark('.product-thumbnail > img', '250', '18');
  mobytic_add_watermark('#product .product-cover > img', '800', '50');
});

function mobytic_add_watermark(selector, text_Width, text_Size) {
  $(selector).watermark({
    text: '© Electro Services',
    textWidth: text_Width,
    textSize: text_Size,
    textColor: 'black',
    textBg: 'rgba(0, 0, 0, 0)',
    gravity: 'w',
    opacity: 0.05,
    margin: 12
  });
}


$( ".quick-view.js-quick-view" ).click(function() {

  setTimeout(mobytic_regenerate_img_with_watermark, 1000);
  setTimeout(mobytic_regenerate_img_with_watermark, 1500);
  
  function mobytic_regenerate_img_with_watermark() {
    $('.product-cover > img').watermark({
      text: '© Electro Services',
      textWidth: 800,
      textSize: '50',
      textColor: 'black',
      textBg: 'rgba(0, 0, 0, 0)',
      gravity: 'w',
      opacity: 0.05,
      margin: 12
    });
  }
});