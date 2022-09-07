$(document).ready(function () {
    let cookieHere = document.cookie.match(/^(.*;)?\s*mobytic_TTC_HT\s*=\s*[^;]+(.*)?$/);
    if (!cookieHere) {
        document.querySelectorAll('#mobytic_ttc_ht').forEach((input) => {
            input.checked = true;
            console.log(input);
        });
    }

    $(window).resize(function () {
        let width = $(document).width();
        if (width < 768) {
            $("#_mobytic_ttc_ht").appendTo("#mobytic_mobile_icon_slot");
        }
        if (width > 768) {
            $("#_mobytic_ttc_ht").appendTo("#mobytic-header-right-nav");
        }
    });

    if (document.querySelector('.products-HT')) {
        let priceTotalProductsHT = 0;
        document.querySelectorAll('#priceTTCToTotal').forEach((p) => {
            priceTotalProductsHT += parseFloat(p.value);
        });
        document.querySelector('.products-HT').querySelector('.value').innerHTML = numberWithCommasHT(priceTotalProductsHT);

        if (document.querySelector('#mobytic_subTotalHT')) {
            let priceShipping = document.querySelector('#mobytic_subTotalHT').value - priceTotalProductsHT;
            document.querySelector('.shipping-HT').querySelector('.value').innerHTML = numberWithCommasHT(priceShipping);
        }
    }

    if (document.querySelector('#cart-summary-product-list')) {
        if (document.querySelector('#cart-summary-product-list').querySelector('.product-price')) {
            
            setInterval(function(){ 
                let InOrderPagePriceTotalProductsHT = 0;
                document.querySelector('#cart-summary-product-list').querySelectorAll('.product-price').forEach((p) => {
                    InOrderPagePriceTotalProductsHT += parseFloat(p.querySelector('input').value);
                });
    
                document.querySelector('#cart-subtotal-products > .value').innerHTML = numberWithCommasHT(InOrderPagePriceTotalProductsHT);

                
                let InOrderPagePriceShippingHT = document.querySelector('#mobytic_subTotalHT').value - InOrderPagePriceTotalProductsHT;
                document.querySelector('#cart-subtotal-shipping > .value').innerHTML = numberWithCommasHT(InOrderPagePriceShippingHT);
            }, 100);
            
        }
    }
});

$('#mobytic_ttc_ht').change(
    function () {
        if (this.checked) {
            document.cookie = "mobytic_TTC_HT=TTC";
        } else {
            document.cookie = "mobytic_TTC_HT=HT";
        }
        location.reload(true);
    }
);



function numberWithCommasHT(num) {
    return ((num.toFixed(2)).toString()).replace(/\./g, ',') + ' € HT';
}