{if $smarty.cookies['mobytic_TTC_HT'] === 'TTC' || !$smarty.cookies['mobytic_TTC_HT']}
    {$product.price} TTC
{elseif $smarty.cookies['mobytic_TTC_HT'] === 'HT' }
    {$product.price_tax_exc|string_format:"%.2f"|replace:".":","} € HT
    <input type="hidden" value="{$product.quantity * $product.price_tax_exc}">
{/if}