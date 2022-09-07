{if $smarty.cookies['mobytic_TTC_HT'] === 'TTC' || !$smarty.cookies['mobytic_TTC_HT']}
    {$product.total} 
    <input id="priceTTCToTotal" type="hidden" value="{$product.total_wt}">
{elseif $smarty.cookies['mobytic_TTC_HT'] === 'HT' }
    {($product.quantity * $product.price_tax_exc)|string_format:"%.2f"|replace:".":","} €
    <input id="priceTTCToTotal" type="hidden" value="{($product.quantity * $product.price_tax_exc)}">
{/if}