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

{* <div class="contact-rich">
  <h4>{l s='Store information' d='Shop.Theme.Global'}</h4>
  <div class="block">
    <div class="icon"><i class="material-icons">&#xE55F;</i></div>
    <div class="data">{$contact_infos.address.formatted nofilter}</div>
  </div>
  {if $contact_infos.phone}
    <hr/>
    <div class="block">
      <div class="icon"><i class="material-icons">&#xE0CD;</i></div>
      <div class="data">
        {l s='Call us:' d='Shop.Theme.Global'}<br/>
        <a href="tel:{$contact_infos.phone}">{$contact_infos.phone}</a>
       </div>
    </div>
  {/if}
  {if $contact_infos.fax}
    <hr/>
    <div class="block">
      <div class="icon"><i class="material-icons">&#xE0DF;</i></div>
      <div class="data">
        {l s='Fax:' d='Shop.Theme.Global'}<br/>
        {$contact_infos.fax}
      </div>
    </div>
  {/if}
  {if $contact_infos.email && $display_email}
    <hr/>
    <div class="block">
      <div class="icon"><i class="material-icons">&#xE158;</i></div>
      <div class="data email">
        {l s='Email us:' d='Shop.Theme.Global'}<br/>
      </div>
      {mailto address=$contact_infos.email encode="javascript"}
    </div>
  {/if}
</div> *}




<section>
  <div class="block-contact wrapper">
    {* <div class="title clearfix hidden-md-up" data-target="#contact-infos" data-toggle="collapse">
    <span class="h3">{l s='Store information' d='Shop.Theme.Global'}</span>
    <span class="float-xs-right">
      <span class="navbar-toggler collapse-icons">
        <i class="material-icons add">keyboard_arrow_down</i>
        <i class="material-icons remove">keyboard_arrow_up</i>
      </span>
    </span>
  </div> *}

    <p class="h4 text-uppercase block-contact-title">{l s='Store information' d='Shop.Theme.Global'}</p>

    <div id="mobytic-contact-infos">
      <div>
        <div class="icon"><i class="material-icons"></i></div>

        <div>
          {$contact_infos.address.formatted nofilter}
        </div>
      </div>

      {if $contact_infos.phone}
        <div>
          <div class="icon"><i class="material-icons"></i></div>

          <div>
            {l s='Call us:' d='Shop.Theme.Global'}
          </div>

          <div>
            <a href='tel:{$contact_infos['phone']|replace:' ':''}'>{$contact_infos.phone}</a>
          </div>
          {* [1][/1] is for a HTML tag. *}
          {* {l s='Call us: [1]%phone%[/1]'
          sprintf=[
          '[1]' => "<a href='tel:{$contact_infos['phone']|replace:' ':''}'>",
          '[/1]' => '</a>',
          '%phone%' => $contact_infos.phone
          ]
          d='Shop.Theme.Global'
          } *}
        </div>
      {/if}


      {if $contact_infos.fax}
        <div>
          {* [1][/1] is for a HTML tag. *}
          {l
                s='Fax: [1]%fax%[/1]'
                sprintf=[
                  '[1]' => '<span>',
                  '[/1]' => '</span>',
                  '%fax%' => $contact_infos.fax
                ]
                d='Shop.Theme.Global'
              }
        </div>
      {/if}

      {if $contact_infos.email && $display_email}
        <div>
          <div class="icon"><i class="material-icons"></i></div>

          <div>
            {l s='Email us:' d='Shop.Theme.Global'}
          </div>

          <div>
            {mailto address=$contact_infos.email encode="javascript"}
          </div>
        </div>
      {/if}



    </div>
  </div>
</section>


<section>
  <div class="mapouter">
    <div class="gmap_canvas"><iframe height="500" id="gmap_canvas" style="width: 100%;"
        src="https://maps.google.com/maps?q={$contact_infos.address.address1},%20{$contact_infos.address.city}%20{$contact_infos.address.postcode}%20{$contact_infos.address.country}&t=&z=13&ie=UTF8&iwloc=&output=embed"
        frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a
        href="https://123movies-to.org"></a><br><a href="https://www.embedgooglemap.net">google map embed iframe</a>
    </div>
  </div>
</section>


{* {$contact_infos|var_dump} *}