{if $category.description}
    <div class="container">
        <div class="row">
            <div id="js-product-list-header">
                <div class="block-category card card-block">
                    <div class="block-category-inner">
                        {if $category.description}
                            <div id="category-description">{$category.description nofilter}</div>
                        {/if}
                        {if !empty($category.image.large.url)}
                            <div class="category-cover">
                                <img src="{$category.image.large.url}"
                                    alt="{if !empty($category.image.legend)}{$category.image.legend}{else}{$category.name}{/if}"
                                    loading="lazy" width="141" height="180">
                            </div>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </div>
{/if}