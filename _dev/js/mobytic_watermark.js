const watermark_text = '© Electro Services';

$(document).ready(() => {
  /**
   * Product List _________________________________________
   */
  mobytic_add_watermark(watermark_text, '.product-thumbnail > img', '250', '18', 0);
  
  /**
   * Modal Quick View : Update cover image
   */
  $(".quick-view.js-quick-view").click(function () {
    
    setTimeout(() => {
      mobytic_add_watermark(watermark_text, '.product-cover > img', 800, 50);
      update_url_with_matermark(watermark_text, 'img.js-thumb', 800, 50, 0, 400, 25, 0, 100, 10, 0);
    }, 1000);
    setTimeout(() => {
      mobytic_add_watermark(watermark_text, '.product-cover > img', 800, 50);
      update_url_with_matermark(watermark_text, 'img.js-thumb', 800, 50, 0, 400, 25, 0, 100, 10, 0);
    }, 1500);

  });

  /**
   * Product Page _________________________________________
   * Cover Image
   */
  mobytic_add_watermark(watermark_text, '#product .product-cover > img', '800', '50');

  /**
   * Update Images URL in below list
   */
  if (document.querySelector('#product')) {
    update_url_with_matermark(watermark_text, 'img.js-thumb', 425, 50, 0, 400, 25, 0, 100, 10, 0);
  }

  /**
   * Modal : Update showed img link & images list on the side 
   */
  $("#product .product-cover > div.layer").click(function () {
    document.querySelector('#product .modal-body > figure > img').src =  document.querySelector('#product .product-cover > img').src;
    update_url_with_matermark(watermark_text, 'img.js-modal-thumb', 800, 50, 0, 400, 25, 0, 100, 10, 0);
  });

  /**
   * Checkout Procedures
   */
  mobytic_add_watermark(watermark_text, '#cart span.product-image > img, #checkout .media-object', 125, 12, 0);
  mobytic_add_watermark(watermark_text, '#order-confirmation .order-confirmation-table .image > img', 250, 25, 0);
});




/**
 * Function Add Watermark
 * @param {string} selector 
 * @param {number} text_Width 
 * @param {number} text_Size 
 * @param {number} add_margin 
 */
function mobytic_add_watermark(watermark_text, selector, text_Width, text_Size, add_margin) {
  $(selector).watermark({
    text: watermark_text,
    textWidth: text_Width,
    textSize: text_Size,
    textColor: 'black',
    textBg: 'rgba(0, 0, 0, 0)',
    gravity: 'w',
    opacity: 0.05,
    margin: add_margin,
  });
}

/**
 * 
 * @param {string} selector 
 * @param {number} l_text_width 
 * @param {number} l_font_size 
 * @param {number} l_margin 
 * @param {number} m_text_width 
 * @param {number} m_font_size 
 * @param {number} m_margin 
 * @param {number} t_text_width 
 * @param {number} t_font_size 
 * @param {number} t_margin 
 */
 function update_url_with_matermark(watermark_text, selector, l_text_width, l_font_size, l_margin, m_text_width, m_font_size, m_margin, t_text_width, t_font_size, t_margin) {
  let all_img = document.querySelectorAll(selector);
  let all_img_link_t = [];
  let all_img_link_l = [];
  let all_img_link_m = [];

  all_img.forEach((img) => {
    all_img_link_t.push(img.src);
    all_img_link_l.push(img.dataset.imageLargeSrc);
    all_img_link_m.push(img.dataset.imageMediumSrc);
  });

  get_watermark_links(watermark_text, all_img_link_l, l_text_width, l_font_size, l_margin, all_img, 'l');
  get_watermark_links(watermark_text, all_img_link_m, m_text_width, m_font_size, m_margin, all_img, 'm');
  get_watermark_links(watermark_text, all_img_link_t, t_text_width, t_font_size, t_margin, all_img, 't');
}

/**
 * 
 * @param {string} watermark_text 
 * @param {array} tab_links 
 * @param {number} text_Width 
 * @param {number} text_Size 
 */
function get_watermark_links(watermark_text, tab_links, text_Width, text_Size, add_margin, all_images_list, src) {
  var inputImages = tab_links;

  var outputImages = [];

  
  $.each(inputImages, function (i, v) {
    $('<img>', {
      src: v
    }).watermark({
      text: watermark_text,
      textWidth: text_Width,
      textSize: text_Size,
      textColor: 'black',
      textBg: 'rgba(0, 0, 0, 0)',
      gravity: 'w',
      opacity: 0.05,
      margin: add_margin,
      done: function (imgURL) {
        outputImages[i] = imgURL;
        if (i + 1 === inputImages.length) {
          defer.resolve();
        }
      }
    });
  });
  
  var defer = $.Deferred();
  $.when(defer).done(function () {
    all_images_list.forEach((img,key) => {
      switch (src) {
        case 'l':
          img.dataset.imageLargeSrc = outputImages[key];
          break;     
        case 'm':
          img.dataset.imageMediumSrc = outputImages[key];
          break;     
        case 't':
          img.src = outputImages[key];
          break;     
        default:
          break;
      }
    });
  });
}