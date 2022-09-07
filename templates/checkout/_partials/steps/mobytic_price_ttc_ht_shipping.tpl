{if $smarty.cookies['mobytic_TTC_HT'] === 'TTC' || !$smarty.cookies['mobytic_TTC_HT']}
    {$carrier.price_with_tax|string_format:"%.2f"|replace:".":","} € TTC
{elseif $smarty.cookies['mobytic_TTC_HT'] === 'HT' }
    {$carrier.price_without_tax|string_format:"%.2f"|replace:".":","} € HT 
{/if}