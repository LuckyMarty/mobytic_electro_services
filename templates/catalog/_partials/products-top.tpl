{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div id="js-product-list-top" class="row products-selection">
  <div class="col-md-6 hidden-sm-down total-products">
    {if $listing.pagination.total_items > 1}
      <p>
        {l s='There are %product_count% products.' d='Shop.Theme.Catalog' sprintf=['%product_count%' => $listing.pagination.total_items]}
      </p>
    {elseif $listing.pagination.total_items > 0}
      <p>{l s='There is 1 product.' d='Shop.Theme.Catalog'}</p>
    {/if}
  </div>



  <div class="col-md-6">
    <div class="row sort-by-row">

      {block name='sort_by'}
        {include file='catalog/_partials/sort-orders.tpl' sort_orders=$listing.sort_orders}
      {/block}

      {if !empty($listing.rendered_facets)}
        <div class="col-sm-3 col-xs-4 hidden-md-up filter-button">
          <button id="search_filter_toggler" class="btn btn-secondary js-search-toggler">
            {l s='Filter' d='Shop.Theme.Actions'}
          </button>
        </div>
      {/if}
    </div>
  </div>

  <div class="col-sm-12 hidden-md-up text-sm-center showing">
    {l s='Showing %from%-%to% of %total% item(s)' d='Shop.Theme.Catalog' sprintf=[
    '%from%' => $listing.pagination.items_shown_from ,
    '%to%' => $listing.pagination.items_shown_to,
    '%total%' => $listing.pagination.total_items
    ]}
  </div>




  <div class="col-sm-12 col-md-12 col-lg-12 mobytic_product-grid-list-all-wrapper">
    <div class="mobytic_product-grid-list clearfix">
      <div class="mobytic_product-view mobytic_product-grid" data-toggle="tvtooltip" data-placement="top" data-html="true" title=""
        data-original-title="{l s='Grille 4' d='Shop.Theme.Actions'}">
        {* <i class='material-icons grid'>&#xe5c3;</i> *}
        <svg class="tvgrid" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="33px" height="13px" viewBox="0 0 33 13"
          style="enable-background:new 0 0 33 13;" xml:space="preserve">
          <g id="XMLID_1_">
            <path id="XMLID_14_" style="fill:#222222;" d="M4,9v3H1V9H4 M5,8H0v5h5V8L5,8z"></path>
          </g>
          <g id="XMLID_3_">
            <path id="XMLID_5_" style="fill:#222222;" d="M11,9v3H8V9H11 M12,8H7v5h5V8L12,8z"></path>
          </g>
          <g id="XMLID_8_">
            <path id="XMLID_11_" style="fill:#222222;" d="M18,9v3h-3V9H18 M19,8h-5v5h5V8L19,8z"></path>
          </g>
          <g id="XMLID_17_">
            <path id="XMLID_19_" style="fill:#222222;" d="M25,9v3h-3V9H25 M26,8h-5v5h5V8L26,8z"></path>
          </g>
          {* <g id="XMLID_22_">
                  <path id="XMLID_24_" style="fill:#222222;" d="M32,9v3h-3V9H32 M33,8h-5v5h5V8L33,8z"></path>
              </g>
              <g id="XMLID_27_">
                  <path id="XMLID_29_" style="fill:#222222;" d="M32,1v3h-3V1H32 M33,0h-5v5h5V0L33,0z"></path>
              </g> *}
          <g id="XMLID_32_">
            <path id="XMLID_34_" style="fill:#222222;" d="M25,1v3h-3V1H25 M26,0h-5v5h5V0L26,0z"></path>
          </g>
          <g id="XMLID_37_">
            <path id="XMLID_39_" style="fill:#222222;" d="M18,1v3h-3V1H18 M19,0h-5v5h5V0L19,0z"></path>
          </g>
          <g id="XMLID_42_">
            <path id="XMLID_44_" style="fill:#222222;" d="M11,1v3H8V1H11 M12,0H7v5h5V0L12,0z"></path>
          </g>
          <g id="XMLID_47_">
            <path id="XMLID_49_" style="fill:#222222;" d="M4,1v3H1V1H4 M5,0H0v5h5V0L5,0z"></path>
          </g>
        </svg>
        <span class="tvgrid-wrapper">{l s='Grille 4' d='Shop.Theme.Actions'}</span>
      </div>
      <div class="mobytic_product-view mobytic_product-grid-2" data-toggle="tvtooltip" data-placement="top" data-html="true"
        title="" data-original-title="{l s='Grille 3' d='Shop.Theme.Actions'}">
        {* <i class='material-icons grid-2'>&#xe5c3;</i> *}
        <svg class="tvgrid-2" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="26px" height="13px" viewBox="0 0 26 13"
          style="enable-background:new 0 0 26 13;" xml:space="preserve">
          <g id="XMLID_1_">
            <path id="XMLID_59_" style="fill:#222222;" d="M4,9v3H1V9H4 M5,8H0v5h5V8L5,8z"></path>
          </g>
          <g id="XMLID_3_">
            <path id="XMLID_55_" style="fill:#222222;" d="M11,9v3H8V9H11 M12,8H7v5h5V8L12,8z"></path>
          </g>
          <g id="XMLID_8_">
            <path id="XMLID_51_" style="fill:#222222;" d="M18,9v3h-3V9H18 M19,8h-5v5h5V8L19,8z"></path>
          </g>
          {* <g id="XMLID_17_">
                  <path id="XMLID_46_" style="fill:#222222;" d="M25,9v3h-3V9H25 M26,8h-5v5h5V8L26,8z"></path>
              </g>
              <g id="XMLID_32_">
                  <path id="XMLID_31_" style="fill:#222222;" d="M25,1v3h-3V1H25 M26,0h-5v5h5V0L26,0z"></path>
              </g> *}
          <g id="XMLID_37_">
            <path id="XMLID_26_" style="fill:#222222;" d="M18,1v3h-3V1H18 M19,0h-5v5h5V0L19,0z"></path>
          </g>
          <g id="XMLID_42_">
            <path id="XMLID_21_" style="fill:#222222;" d="M11,1v3H8V1H11 M12,0H7v5h5V0L12,0z"></path>
          </g>
          <g id="XMLID_47_">
            <path id="XMLID_16_" style="fill:#222222;" d="M4,1v3H1V1H4 M5,0H0v5h5V0L5,0z"></path>
          </g>
        </svg>
        <span class="tvgrid-2-wrapper">{l s='Grille 3' d='Shop.Theme.Actions'}</span>
      </div>
      <div class="mobytic_product-view mobytic_product-list" data-toggle="tvtooltip" data-placement="top" data-html="true" title=""
        data-original-title="{l s='Liste' d='Shop.Theme.Actions'}">
        {* <i class='material-icons list'>&#xe241;</i> *}
        <svg class="tvlist" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="20px" height="13px" viewBox="0 0 20 13"
          style="enable-background:new 0 0 20 13;" xml:space="preserve">
          <g id="XMLID_2_">
            <g id="XMLID_1_">
              <path id="XMLID_14_" style="fill:#082222;" d="M4,9v3H1V9H4 M5,8H0v5h5V8L5,8z"></path>
            </g>
            <g id="XMLID_4_">
              <path id="XMLID_6_" style="fill:#082222;" d="M4,1v3H1V1H4 M5,0H0v5h5V0L5,0z"></path>
            </g>
            <g id="XMLID_3_">
              <path id="XMLID_19_" style="fill:#082222;" d="M19,9v3H8V9H19 M20,8H7v5h13V8L20,8z"></path>
            </g>
            <g id="XMLID_9_">
              <path id="XMLID_13_" style="fill:#082222;" d="M19,1v3H8V1H19 M20,0H7v5h13V0L20,0z"></path>
            </g>
          </g>
        </svg>
        <span class="tvlist-wrapper">{l s='Liste' d='Shop.Theme.Actions'}</span>
      </div>
      <div class="mobytic_product-view mobytic_product-list-2" data-toggle="tvtooltip" data-placement="top" data-html="true"
        title="" data-original-title="{l s='Liste 2' d='Shop.Theme.Actions'}">
        {* <i class='material-icons list-2'>&#xe241;</i> *}
        <svg class="tvlist-2" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="22px" height="13px" viewBox="0 0 22 13"
          style="enable-background:new 0 0 22 13;" xml:space="preserve">
          <g id="XMLID_3_">
            <g id="XMLID_2_">
              <g id="XMLID_1_">
                <path id="XMLID_14_" style="fill:#222222;" d="M2,1v1H1V1H2 M3,0H0v3h3V0L3,0z"></path>
              </g>
              <g id="XMLID_4_">
                <path id="XMLID_20_" style="fill:#222222;" d="M9,1v1H5V1H9 M10,0H4v3h6V0L10,0z"></path>
              </g>
            </g>
            <g id="XMLID_6_">
              <g id="XMLID_17_">
                <path id="XMLID_19_" style="fill:#222222;" d="M2,6v1H1V6H2 M3,5H0v3h3V5L3,5z"></path>
              </g>
              <g id="XMLID_7_">
                <path id="XMLID_9_" style="fill:#222222;" d="M9,6v1H5V6H9 M10,5H4v3h6V5L10,5z"></path>
              </g>
            </g>
            <g id="XMLID_25_">
              <g id="XMLID_31_">
                <path id="XMLID_33_" style="fill:#222222;" d="M2,11v1H1v-1H2 M3,10H0v3h3V10L3,10z"></path>
              </g>
              <g id="XMLID_26_">
                <path id="XMLID_28_" style="fill:#222222;" d="M9,11v1H5v-1H9 M10,10H4v3h6V10L10,10z"></path>
              </g>
            </g>
            <g id="XMLID_36_">
              <g id="XMLID_42_">
                <path id="XMLID_44_" style="fill:#222222;" d="M14,11v1h-1v-1H14 M15,10h-3v3h3V10L15,10z"></path>
              </g>
              <g id="XMLID_37_">
                <path id="XMLID_39_" style="fill:#222222;" d="M21,11v1h-4v-1H21 M22,10h-6v3h6V10L22,10z"></path>
              </g>
            </g>
            <g id="XMLID_47_">
              <g id="XMLID_53_">
                <path id="XMLID_55_" style="fill:#222222;" d="M14,6v1h-1V6H14 M15,5h-3v3h3V5L15,5z"></path>
              </g>
              <g id="XMLID_48_">
                <path id="XMLID_50_" style="fill:#222222;" d="M21,6v1h-4V6H21 M22,5h-6v3h6V5L22,5z"></path>
              </g>
            </g>
            <g id="XMLID_58_">
              <g id="XMLID_64_">
                <path id="XMLID_66_" style="fill:#222222;" d="M14,1v1h-1V1H14 M15,0h-3v3h3V0L15,0z"></path>
              </g>
              <g id="XMLID_59_">
                <path id="XMLID_61_" style="fill:#222222;" d="M21,1v1h-4V1H21 M22,0h-6v3h6V0L22,0z"></path>
              </g>
            </g>
          </g>
        </svg>
        <span class="tvlist-wrapper">{l s='Liste 2' d='Shop.Theme.Actions'}</span>
      </div>
      <div class="mobytic_product-view mobytic_product-catelog" data-toggle="tvtooltip" data-placement="top" data-html="true"
        title="" data-original-title="{l s='Catalogue' d='Shop.Theme.Actions'}">
        {* <i class='material-icons catelog'>&#xe241;</i> *}
        <svg class="tvcatelog" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="21px" height="13px" viewBox="0 0 21 13"
          style="enable-background:new 0 0 21 13;" xml:space="preserve">
          <g id="XMLID_4_">
            <g id="XMLID_1_">
              <path id="XMLID_14_" style="fill:#222222;" d="M2,1v1H1V1H2 M3,0H0v3h3V0L3,0z"></path>
            </g>
            <g id="XMLID_2_">
              <polygon id="XMLID_17_" style="fill:#222222;" points="9,1 4,1 4,2 9,2 9,1       "></polygon>
            </g>
            <g id="XMLID_5_">
              <polygon id="XMLID_7_" style="fill:#222222;" points="15,1 10,1 10,2 15,2 15,1       "></polygon>
            </g>
            <g id="XMLID_8_">
              <polygon id="XMLID_11_" style="fill:#222222;" points="21,1 16,1 16,2 21,2 21,1      "></polygon>
            </g>
          </g>
          <g id="XMLID_18_">
            <g id="XMLID_28_">
              <path id="XMLID_30_" style="fill:#222222;" d="M2,6v1H1V6H2 M3,5H0v3h3V5L3,5z"></path>
            </g>
            <g id="XMLID_25_">
              <polygon id="XMLID_27_" style="fill:#222222;" points="9,6 4,6 4,7 9,7 9,6       "></polygon>
            </g>
            <g id="XMLID_22_">
              <polygon id="XMLID_24_" style="fill:#222222;" points="15,6 10,6 10,7 15,7 15,6      "></polygon>
            </g>
            <g id="XMLID_19_">
              <polygon id="XMLID_21_" style="fill:#222222;" points="21,6 16,6 16,7 21,7 21,6      "></polygon>
            </g>
          </g>
          <g id="XMLID_33_">
            <g id="XMLID_43_">
              <path id="XMLID_45_" style="fill:#222222;" d="M2,11v1H1v-1H2 M3,10H0v3h3V10L3,10z"></path>
            </g>
            <g id="XMLID_40_">
              <polygon id="XMLID_42_" style="fill:#222222;" points="9,11 4,11 4,12 9,12 9,11      "></polygon>
            </g>
            <g id="XMLID_37_">
              <polygon id="XMLID_39_" style="fill:#222222;" points="15,11 10,11 10,12 15,12 15,11         "></polygon>
            </g>
            <g id="XMLID_34_">
              <polygon id="XMLID_36_" style="fill:#222222;" points="21,11 16,11 16,12 21,12 21,11         "></polygon>
            </g>
          </g>
        </svg>
        <span class="tvlist-wrapper">{l s='Catalogue' d='Shop.Theme.Actions'}</span>
      </div>
    </div>
  </div>

</div>