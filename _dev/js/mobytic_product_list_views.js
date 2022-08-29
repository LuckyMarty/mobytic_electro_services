/*********************** Start Product Category page View ******************************/
$('.mobytic_product-grid-list .mobytic_product-grid').addClass('active');

function removeClassesOfView() {
    $('#products').removeClass('grid grid-2 list list-2 catelog');
}

$(document).on('click', '.mobytic_product-grid-list .mobytic_product-grid', function() {
    removeClassesOfView();
    $('#products').addClass('grid');
    // $('.tvgrid-list-view-product .mobytic_product-wrapper.grid').balance();
    $('.mobytic_product-grid-list .mobytic_product-grid-2').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-list').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-list-2').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-catelog').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-grid').addClass('active');
});
// End Grid View
// Start Grid-2 View
$(document).on('click', '.mobytic_product-grid-list .mobytic_product-grid-2', function() {
    removeClassesOfView();
    $('#products').addClass('grid-2');
    // $('.tvgrid-list-view-product .mobytic_product-wrapper.grid-2').balance();
    $('.mobytic_product-grid-list .mobytic_product-grid').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-list').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-list-2').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-catelog').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-grid-2').addClass('active');
});
// End Grid-2 View
// Start List View
$(document).on('click', '.mobytic_product-grid-list .mobytic_product-list', function() {
    removeClassesOfView();
    $('#products').addClass('list');
    $('.mobytic_product-grid-list .mobytic_product-grid-2').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-list-2').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-catelog').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-grid').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-list').addClass('active');
});
// End List View
// Start List-2 View
$(document).on('click', '.mobytic_product-grid-list .mobytic_product-list-2', function() {
    removeClassesOfView();
    $('#products').addClass('list-2');
    $('.mobytic_product-grid-list .mobytic_product-grid-2').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-list').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-catelog').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-grid').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-list-2').addClass('active');
});
// End List-2 View
// Start Catelog View
$(document).on('click', '.mobytic_product-grid-list .mobytic_product-catelog', function() {
    removeClassesOfView();
    $('#products').addClass('catelog');
    $('.mobytic_product-grid-list .mobytic_product-grid').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-grid-2').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-list').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-list-2').removeClass('active');
    $('.mobytic_product-grid-list .mobytic_product-catelog').addClass('active');
});




/*********************** Start Product Category page View ******************************/
  $(document).on('click', '.mobytic_product-grid-list .mobytic_product-grid', function() {
      removeClassesOfView();
      $('#products').addClass('grid');
  });
  // Start Grid-2 View
  $(document).on('click', '.mobytic_product-grid-list .mobytic_product-grid-2', function() {
      removeClassesOfView();
      $('#products').addClass('grid-2');
  });
  // Start List View
  $(document).on('click', '.mobytic_product-grid-list .mobytic_product-list', function() {
      removeClassesOfView();
      $('#products').addClass('list');
  });
  // Start List-2 View
  $(document).on('click', '.mobytic_product-grid-list .mobytic_product-list-2', function() {
      removeClassesOfView();
      $('#products').addClass('list-2');
  });
  // Start Catelog View
  $(document).on('click', '.mobytic_product-grid-list .mobytic_product-catelog', function() {
      removeClassesOfView();
      $('#products').addClass('catelog');
  });




$(document).on('click', '.mobytic_product-cart-quentity-increment', function() {
    var obj = $(this).parent().parent().parent().parent();
    var qty = parseInt(obj.find('.mobytic_product-cart-quentity').val()) + 1;
    obj.find('.mobytic_product-cart-quentity').val(qty);
    $('.mobytic_product-cart-btn form input[name=qty]').val(qty);
});
$(document).on('click', '.mobytic_product-cart-quentity-decrement', function() {
    var obj = $(this).parent().parent().parent().parent();
    var qty = parseInt(obj.find('.mobytic_product-cart-quentity').val()) - 1;
    if (qty >= 1) {
        obj.find('.mobytic_product-cart-quentity').val(qty);
        obj.parent().find('.mobytic_product-cart-btn form input[name=qty]').val(qty);
    }
});
$(document).on('blur', '.mobytic_product-cart-quentity', function() {
    var obj = $(this).parent().parent().parent().parent();
    var qty = parseInt(obj.find('.mobytic_product-cart-quentity').val());
    if (qty > 1 && qty != NaN) {
        obj.find('.mobytic_product-cart-quentity').val(qty);
        obj.parent().find('.mobytic_product-cart-btn form input[name=qty]').val(qty);
    } else {
        qty = 1;
        obj.find('.mobytic_product-cart-quentity').val(qty);
        obj.parent().find('.mobytic_product-cart-btn form input[name=qty]').val(qty);
    }
});





    /****************** Start Tooltip Js **************************/
    $(function() {
        'use strict';
        var popoverConfig = {
            trigger: 'hover',
            template: [
                '<div class="popover tvtooltip" role="tooltip">',
                '<div class="popover-arrow"></div>',
                '<h3 class="popover-title"></h3>',
                '<div class="popover-content"></div>',
                '</div>'
            ].join(''),
            placement: 'top',
            container: 'body',
        };
        initPopovers();
        $('.tvproduct-cart-btn button[data-toggle="tvtooltip"]').on('click', function () {
            $("div[role=tooltip]").remove();
        });
        function initPopovers() {
            $('[data-toggle="tvtooltip"]').popover(popoverConfig);           
        }

        $(document).ajaxComplete(function() {
            initPopovers();

        });
    });