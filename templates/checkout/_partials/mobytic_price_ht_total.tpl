<span class="label{if 'products' === $subtotal.type} js-subtotal{/if}">
    {if 'products' == $subtotal.type}
        {$cart.summary_string}
    {else}
        {$subtotal.label}
    {/if}
</span>

<span class="value">
    {if 'discount' == $subtotal.type}-&nbsp;{/if}{$subtotal.value}
</span>

{* {$carrier.price_without_tax|string_format:"%.2f"|replace:".":","} € *}
{* {$delivery_options|var_dump} *}