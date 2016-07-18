{* Главное меню *}

{block menu_params}
    {$params = [
    "outerTpl" => '@CODE <ul [[+wf.classes]]>[[+wf.wrapper]]</ul>',
    "rowTpl" =>'@CODE
            <li class="level-top level0">
                <a href="[[+wf.link]]" title="[[+wf.title]]" class="level-top">[[+wf.linktext]]</a>
            </li>',
"parentClass" => 'level-top level0',
"levelClass" => 'nav-',
"firstClass" => 'first',
"level" => '0',
"lastClass" => 'last',
"outerClass" => 'nav nav-wide topmenu navbar-nav',
"startId" => '0'
]}
{/block}

{block menu_wrapper}
    <div class="menu-block">
        <!--<div class="container">
            <div class="row">-->
                <div class="wrapper-menu clearfix">
                    <nav class="navbar navbar-default">
                        <div class="navbar-header">
                            <button class="navbar-toggle menu-button" type="button" id="mainmenutoggle">
                                <i class="fa fa-navicon"></i>
                                <span>Меню</span>
                            </button>
                        </div>
                        <div class="collapse topmenu navbar-collapse">
                            {snippet name="Wayfinder@MainMenu" params=$params as_tag=!$main_menu_is_cached}
                        </div>
                    </nav>
                    <div class="top-cart top-link-cart horizontal long-cart">
                        <div class="block-title no-items cart-button">
                            <!--[[!smarty?tpl=`inc/login/auth.tpl`]]-->
                            [[!smarty?tpl=`shop/basket/entity/index.tpl`]]
                        </div>
                        <!--<div class="block block-content topCartContent" style="display:none;">
                            <div class="inner-wrapper"><p class="cart-empty">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span>You have no items in your shopping cart.</span>
                                                <span class="small-label">Add some to cart or <a
                                                            href="customer/account/login/index-___SID=U.html"
                                                            class="link-login">login</a></span>
                                </p>
                            </div>

                        </div>-->
                    </div>
                </div>
            </div>
        <!--</div>
    </div>-->

{/block}

