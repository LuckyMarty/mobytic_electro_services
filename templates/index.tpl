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
{extends file='page.tpl'}
{block name='container-fluid'}
  <div class="mobytic_slider">
    {widget name='ps_imageslider'}
  </div>

  <div class="container"">
    <div class=" row">
  {widget name='blockreassurance'}
</div>
</div>

<div class="mobytic_home_behind_hook_bg">
  <div class="container" id="mobytic_5_blocks_home">
    <div class="row">
      <div class="col-sm-3">
        <div>
          <a href=#>
            <div class="title">Nos marques</div>
          </a>
        </div>
        <div>
          <a href=#>
            <div class="title">Lorem Ipsum</div>
          </a>
        </div>
      </div>
      <div class="col-sm-6">
        <div>
          <a href=#>
            <div class="mobytic_button">Découvrir</div>
          </a>
        </div>
      </div>
      <div class="col-sm-3">
        <div>
          <a href=#>
            <div class="title">Lorem Ipsum</div>
          </a>
        </div>
        <div>
          <a href=#>
            <div class="title">Lorem Ipsum</div>
          </a>
        </div>

      </div>
    </div>
    {$HOOK_HOME nofilter}
  </div>


</div>
{/block}

{block name='page_content_container'}
<section id="content" class="page-home">
  {block name='page_content_top'}{/block}

  {block name='page_content'}
  {block name='hook_home'}



  <div class="container" id="mobytic_homepage_cards">
    <div class="row">
      <div class="col-sm-6 col-md-3 mobytic_card">
        <div>
          <div class="header"></div>
          <a href="#">
            <div class="title">Appareillage XX</div>
          </a>
          <div class="content">
            <div>
              <ul>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
              </ul>
            </div>
            <div>
              <ul>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
              </ul>

            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-3 mobytic_card">
        <div>
          <div class="header"></div>
          <a href="#">
            <div class="title">Appareillage XX</div>
          </a>
          <div class="content">
            <div>
              <ul>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
              </ul>
            </div>
            <div>
              <ul>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
              </ul>

            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-3 mobytic_card">
        <div>
          <div class="header"></div>
          <a href="#">
            <div class="title">Appareillage XX</div>
          </a>
          <div class="content">
            <div>
              <ul>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
              </ul>
            </div>
            <div>
              <ul>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
              </ul>

            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-3 mobytic_card">
        <div>
          <div class="header"></div>
          <a href="#">
            <div class="title">Appareillage XX</div>
          </a>
          <div class="content">
            <div>
              <ul>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
              </ul>
            </div>
            <div>
              <ul>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
                <li><a href="">Lorem Ipsum</a>
                </li>
              </ul>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="container" id="mobytic_welcome_home">
    <div class="row">
      <div class="col-sm-12 featured-products title">
        <div>
          <img src="{$urls.theme_assets}img/do-not-delete/Group-23.png">
          <h2 class="h2 products-section-title text-uppercase">
            bienvenue chez electro services
          </h2>
        </div>
      </div>
      <div class="col-sm-8">
        <p>
          Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
          aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
          Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni
          dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit
          amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam
          aliquam quaerat voluptatem.
        </p>
        <a href="#"><span>En savoir plus ></span></a>
      </div>
      <div class="col-sm-4 logo">
        <img class="img-fluid" src="{$urls.theme_assets}img/do-not-delete/LOGO-ELECTRO-SERVICES-HD.png" alt="Mobytic"
          width="auto" height="100">
        </div>
      </div>
    </div>

    {widget name='blockreassurance'}



  {/block}
  {/block}
</section>
{/block}