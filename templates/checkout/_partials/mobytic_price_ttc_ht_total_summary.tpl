<div class="cart-summary-line">
    <span class="label js-subtotal">
        Total HT
    </span>

    <span class="value">
        {$cart.totals.total_excluding_tax.value} HT
    </span>
    <input id="mobytic_subTotalHT" type="hidden" value="{$cart.totals.total_excluding_tax.amount}">
</div>
<div class="cart-summary-line">
    {if $cart.subtotals.tax}
        <div class="cart-summary-line">
            <span
                class="label sub">{l s='Taxes' d='Shop.Theme.Global'}</span>
            <span class="value sub">{$cart.subtotals.tax.value}</span>
        </div>
    {/if}
</div>