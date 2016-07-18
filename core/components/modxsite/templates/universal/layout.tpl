{extends "[main]layout.tpl"}
{block name=styles}
    <link rel="stylesheet" type="text/css" href="{$pre_template_url}media/css/62205bc8181f27ac60e2e9e457dacd86.css"
          media="print"/>
    <link rel="stylesheet" type="text/css" href="{$pre_template_url}media/css/e2ed221ef27ca3d71b2465aa6b0dadac.css"
          media="all"/>
    {if $modx->resource->get('id')!= $modx->getOption('site_start')}
        <link rel="stylesheet" type="text/css"
              href="{$pre_template_url}media/css/c2ac88e8e576cedae4790a7f6377e747.css"/>
    {/if}
    <link rel='stylesheet' type='text/css' href="{$pre_template_url}media/advanced_styling/universal/skin_1.css"/>
    <link type='text/css' property='stylesheet' rel='stylesheet'
          href='{$pre_template_url}css/slider-style.css'/>
    <link rel="stylesheet" type="text/css" href="{$pre_template_url}rs-plugin/css/settings.css" media="screen" />

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link type='text/css' property='stylesheet' rel='stylesheet'
          href='{$pre_template_url}css/custom.css'/>
    <!--[if lt IE 8]>
    <link rel="stylesheet" type="text/css" href="{$pre_template_url}media/css/7cc24ab8a588f8cebca7fc4a23b98d2f.css"
          media="all"/>
    <![endif]-->
    <!--<link type='text/css' property='stylesheet' rel='stylesheet'
          href='{$pre_template_url}js/am/revslider/rs-plugin/css/settings.css'/>-->
    <link type='text/css' property='stylesheet' rel='stylesheet'
          href='{$pre_template_url}revslider/index/getCssCaptions/id/11/index.css'/>
    <link rel="stylesheet" href="{$pre_template_url}fancybox/source/jquery.fancybox.css" type="text/css"
          media="screen"/>
{/block}

{block name=fonts}
    <link href='https://fonts.googleapis.com/css?family=Tenor+Sans&subset=latin,cyrillic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Philosopher:400,700,700italic&subset=latin,cyrillic'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,900&subset=latin,cyrillic'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Istok+Web:400,700&subset=latin,cyrillic' rel='stylesheet'
          type='text/css'>
    <!--<link href="http://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet"
           type="text/css">
     <link href="http://fonts.googleapis.com/css?family=Merriweather:100,200,300,400,500,600,700,800" rel="stylesheet"
           type="text/css">
     <link href="http://fonts.googleapis.com/css?family=Hind:600,300,700,400,500" rel="stylesheet" type="text/css">
     <link href="http://fonts.googleapis.com/css?family=Josefin+Sans:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"
           rel="stylesheet" type="text/css">
     <link href="http://fonts.googleapis.com/css?family=Biryani:200,300,400,600,700,800,900" rel="stylesheet"
           type="text/css">-->
{/block}

{block name=body}
    <noscript>
        <div class="global-site-notice noscript">
            <div class="notice-inner">
                <p>
                    <strong>Возможно JavaScript отключена вашим браузером.</strong>
                    <br/> Для нормального функционирования данного сайта необходимо включить JavaScript.
                </p>
            </div>
        </div>
    </noscript>
    {if $modx->resource->get('id')== $modx->getOption('site_start')}
        <body class=" cms-index-index wide-layout totop-button -empty- -empty- cms-home">
    {else}
        <body class=" catalog-product-view wide-layout totop-button -empty- -empty- catalog-product-view product-acapulco-modern-steel-lounge-chair categorypath-ottomans-html category-ottomans">
    {/if}

    {block name=header}
        <div class="header-breadcrumbs-wrapper with-breadcrumbs">
            <div class="header-wrapper">
                <header id="header" class="header header-19">
                    <div class="top-block">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-3 a-center">
                                    <p class="welcome-msg">Добро пожаловать в наш магазин</p>
                                </div>
                                <div class="col-md-4 a-center">
                                    <h2 class="logo">
                                        {include file="inc/logo.tpl"}
                                    </h2>
                                </div>
                                <div class="col-md-5 a-center">
                                    <div class="col-md-6 text-center">
                                        {include file="inc/header_requisites.tpl"}
                                    </div>
                                    <div class="col-md-6 pull-left text-center">
                                        <div class="quick-access clearfix text-center">
                                            <br>
                                            [[!smarty?tpl=`inc/login/auth.tpl`]]
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {include "inc/menu/mainmenu/menu.tpl"}
                </header>
            </div>
            {block name=header-container}
                <div class="breadcrumbs-wrapper ">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="breadcrumbs-inner clearfix">
                                    {block name=Breadcrumbs}
                                        {snippet name="Breadcrumbs@Breadcrumbs-universal"}
                                    {/block}
                                    <!--<ul class="breadcrumb">
                                        <li class="home" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                                            <a href="index.html" title="Home" itemprop="url"><span itemprop="title">Home</span></a>
                                        </li>
                                        <li class="category208">
                                            <strong>Rocking Chairs</strong>
                                        </li>
                                    </ul>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            {/block}
        </div>
    {/block}
    {block name=content}
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h3>{$modx->resource->pagetitle}</h3>
                    {$modx->resource->content}
                </div>
            </div>
        </div>
    {/block}
    {block name=footer}
        <footer id="footer">
            <div class="container">
                <div class="row">
                    <hr class="indent-36 white-space"/>
                    <div class="top-block clearfix">
                        <div class="col-md-3 text-center">
                            {include file="inc/logo_footer.tpl"}
                        </div>
                        <div class="col-md-3 text-justify">
                            {$warranty = $modx->getObject('modResource',169)}
                            <div class="col-md-4 a-center">
                                <img src="/assets/images/{$warranty->getTVValue('image')}">
                            </div>
                            <div class="col-md-8 text-justify">

                                <p><br>{$warranty->get('introtext')}</p>

                            </div>
                        </div>
                        <div class="col-md-3 text-justify">
                            {$about = $modx->getObject('modResource',170)}
                            <p>
                                <br>
                                {$about->get('introtext')}
                            </p>
                        </div>
                        <hr class="indent-18 white-space visible-xs visible-sm"/>
                        <div class="col-md-3 text-justify">
                            <br>
                            {include file="inc/footer_requisites.tpl"}
                        </div>
                    </div>
                    <hr class="indent-24 white-space"/>
                    <div class="middle-block col-xs-12 clearfix a-center">
                        <div class="footer-links"><!--<ul><li></li></ul>-->
                        </div>
                    </div>
                    <hr class="indent-9 white-space"/>
                    <div class="bottom-block col-xs-12">
                        <div class="bottom-block-inner clearfix">
                            <div class="row">
                                <div class="col-md-3 copyright">
                                    <address><a href="http://alone-elvi.net" title="Создание сайтов">Создание
                                            сайтов</a> &copy; {$smarty.now|date_format:"%Y"} - SmartSecret
                                    </address>
                                </div>
                                <div class="col-md-6 social-links-wrapper a-center">
                                    <ul class="social-links clearfix">
                                        <li><a class="instagram" href="http://instagram.com/free.lock"><i
                                                        class="fa fa-instagram"></i></a></li>
                                        <!--<li><a class="rss" href="http://rss.com"><i class="fa fa-rss"></i></a></li>
                                        <li><a class="facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a></li>
                                        <li><a class="googleplus" href="https://plus.google.com"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a class="linkedin" href="http://linkedin.com"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a class="pinterest" href="http://pinterest.com"><i class="fa fa-pinterest"></i></a></li>-->
                                    </ul>
                                </div>
                                <div class="col-md-3 store-switcher-wrapper a-right">
                                    <!-- <div class="store-switcher">
                                         <label for="select-store">Select Store:</label>
                                         <select id="select-store" title="Select Store" class="selectpicker" onchange="location.href=this.value">
                                             <option value="http://universal-magento-theme.meigeeteam.com/english2/">Catalog mode</option>
                                             <option value="http://universal-magento-theme.meigeeteam.com/english3/">Clothes</option>
                                             <option value="http://universal-magento-theme.meigeeteam.com/english8/">Decor</option>
                                             <option value="http://universal-magento-theme.meigeeteam.com/english10/">Design</option>
                                             <option value="http://universal-magento-theme.meigeeteam.com/english5/">Electronics</option>
                                             <option value="http://universal-magento-theme.meigeeteam.com/english4/">Fashion</option>
                                             <option value="http://universal-magento-theme.meigeeteam.com/english6/">Food</option>
                                             <option value="" selected="selected">Furniture</option>
                                             <option value="http://universal-magento-theme.meigeeteam.com/english/">Main Website Store</option>
                                             <option value="http://universal-magento-theme.meigeeteam.com/italian2/">Sport</option>
                                             <option value="http://universal-magento-theme.meigeeteam.com/english7/">Wine</option>
                                         </select>
                                     </div>
                                 </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </footer>
    {/block}


    {*
        modals
        Модальное окно чисто для всплывашки. Проверка авторизации выше.
    *}

    {block name=modals}
        {include "inc/modals/login.tpl"}
    {/block}


    {block name=jquery}
        <script type="text/javascript"
                src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    {/block}


    {block name=bootstrap_js}
        <script src="{$template_url}vendor/bootstrap/dist/js/bootstrap.min.js"></script>
    {/block}

    {block name=footers}

    {block alertify}
        <script src="{$template_url}vendor/AlertifyJS/build/alertify.min.js"></script>
    {/block}

        {$smarty.block.child}
        <script src="{$template_url}bundle/app.js"></script>
    {/block}


    {block name=shopmodx_scripts}
        <!--[if lt IE 7]>
        <script type="text/javascript">
            //<![CDATA[
    var BLANK_URL = '{$pre_template_url}js/blank.html';
    var BLANK_IMG = '{$pre_template_url}js/spacer.gif';
//]]>
</script>
<![endif]-->
        <script type="text/javascript">
            delete window["console"];
        </script>

        <script type="text/javascript" src="{$pre_template_url}fancybox/source/jquery.fancybox.pack.js"></script>
        <script type="text/javascript" src="{$pre_template_url}rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="{$pre_template_url}rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

    {if $modx->resource->get('id')== $modx->getOption('site_start')}
        <script type='text/javascript'
                src='{$pre_template_url}js/slider.js'></script>
    {/if}
        <script type="text/javascript">
            $(document).ready(function () {
                $(".fancybox").fancybox();
            });
        </script>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                jQuery("#mainmenutoggle").click(function () {
                    jQuery(".topmenu").toggleClass("collapse");
                });
            });
        </script>


    {/block}
</body>
{/block}