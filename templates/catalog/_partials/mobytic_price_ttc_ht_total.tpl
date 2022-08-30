{if $smarty.cookies['mobytic_TTC_HT'] === 'TTC' || !$smarty.cookies['mobytic_TTC_HT']}
    {$product.total}
{elseif $smarty.cookies['mobytic_TTC_HT'] === 'HT' }
    {($product.quantity * $product.price_tax_exc)|string_format:"%.2f"|replace:".":","} €
{/if}