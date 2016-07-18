{block name=params}

    {$options = "&q=100"}

{/block}

{assign var=params value=[
"parent"=> '156'
,"showhidden" => true
,"showunpublished" => true
,"cache"     => 0
]}
{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}


<header id="sticky-header" class="header">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 clearfix">
            </div>
        </div>
    </div>
</header>
<!--<div class="container">
    <div id='rev_slider_7_wrapper' class='rev_slider_wrapper fullwidthbanner-container'
         style='margin:0px auto;background-color:#E9E9E9;padding:0px;margin-top:0px;margin-bottom:0px;max-height:660px;'>
        <div id='rev_slider_7' class='rev_slider fullwidthabanner'
             style='display:none;max-height:660px;height:660px;'>
        </div>
    </div>
</div>-->

<div class="container">
    <div id='rev_slider_11_wrapper' class='rev_slider_wrapper fullwidthbanner-container'
         style='margin:0px auto;background-color:#E9E9E9;padding:0px;margin-top:0px;margin-bottom:0px;max-height:680px;'>
        <div id='rev_slider_11' class='rev_slider fullwidthabanner'
             style='display:none;max-height:680px;height:680px;'>
            <ul>
                {foreach $result.object as $object}
                    {$image = $object.image|default:$object.imageDefault}

                    {$src = $modx->runSnippet('phpthumbof', [
                    "input" => $image,
                    "options"   => $options
                    ])}
                    <li data-transition='random' data-slotamount='9' data-masterspeed='500'
                        data-saveperformance='off'><img alt=''
                                                        src='{$src}'
                                                        data-lazyload='{$src}'
                                                        data-bgposition='left top' data-bgfit='cover'
                                                        data-bgrepeat='no-repeat'/>

                        <div class='tp-caption universal_skin1_title tp-fade tp-resizeme   ' data-x='1157'
                             data-y='281'
                             data-endspeed='500' data-speed='500' data-start='500' data-easing='Linear.easeNone'
                             data-splitin='none' data-splitout='none' data-elementdelay='0.1'
                             data-endelementdelay='0.1'
                             style='z-index:2;max-width:auto;max-height:auto;white-space:no-wrap;color:white; letter-spacing: -3px !important;'>{$object.description|@escape}
                        </div>
                        <div class='tp-caption universal_skin1_subtitle tp-fade tp-resizeme   ' data-x='1159'
                             data-y='344' data-endspeed='500' data-speed='500' data-start='800'
                             data-easing='Linear.easeNone' data-splitin='none' data-splitout='none'
                             data-elementdelay='0.1' data-endelementdelay='0.1'
                             style='z-index:3;max-width:auto;max-height:auto;white-space:no-wrap; letter-spacing: 2px !important;'>
                            <br>{$object.longtitle|@escape}
                        </div>
                        <div class='tp-caption universal_skin1_subtitle tp-fade tp-resizeme   ' data-x='1159'
                             data-y='385' data-endspeed='500' data-speed='500' data-start='1100'
                             data-easing='Linear.easeNone' data-splitin='none' data-splitout='none'
                             data-elementdelay='0.1' data-endelementdelay='0.1'
                             style='z-index:4;max-width:auto;max-height:auto;white-space:no-wrap; letter-spacing: 2px !important;'>
                            <br>{$object.introtext|@escape}
                        </div>
                        <!--<div class='tp-caption universal_skin1_text tp-fade tp-resizeme   ' data-x='1162' data-y='447'
                             data-endspeed='500' data-speed='500' data-start='1400' data-easing='Linear.easeNone'
                             data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1'
                             style='z-index:5;max-width:auto;max-height:auto;white-space:no-wrap;'>{*$object.introtext|@escape*}
                        </div>-->
                        <!--<div class='tp-caption universal_skin1_text tp-fade tp-resizeme   ' data-x='1162' data-y='472'
                             data-endspeed='500' data-speed='500' data-start='1700' data-easing='Linear.easeNone'
                             data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1'
                             style='z-index:6;max-width:auto;max-height:auto;white-space:no-wrap;'>{*$object.introtext|@escape*}
                        </div>
                        <div class='tp-caption universal_skin1_text tp-fade tp-resizeme   ' data-x='1162' data-y='497'
                             data-endspeed='500' data-speed='500' data-start='2000' data-easing='Linear.easeNone'
                             data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1'
                             style='z-index:7;max-width:auto;max-height:auto;white-space:no-wrap;'>ultrices. Nam lorem
                            eros, imperdiet nec mattis id.
                        </div>
                        <div class='tp-caption universal_skin1_button tp-fade tp-resizeme   ' data-x='1164' data-y='540'
                             data-endspeed='500' data-speed='500' data-start='2300' data-easing='Linear.easeNone'
                             data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1'
                             style='z-index:8;max-width:auto;max-height:auto;white-space:no-wrap;'>Let's shopping
                        </div>
                        <div class='tp-caption universal_skin1_subtitle tp-fade tp-resizeme   ' data-x='1372'
                             data-y='269' data-endspeed='500' data-speed='500' data-start='2600'
                             data-easing='Linear.easeNone' data-splitin='none' data-splitout='none'
                             data-elementdelay='0.1' data-endelementdelay='0.1'
                             style='z-index:9;max-width:auto;max-height:auto;white-space:no-wrap;'>#01
                        </div>
                        <div class='tp-caption universal_skin1_smalltitle tp-fade tp-resizeme   ' data-x='1375'
                             data-y='294' data-endspeed='500' data-speed='500' data-start='2900'
                             data-easing='Linear.easeNone' data-splitin='none' data-splitout='none'
                             data-elementdelay='0.1' data-endelementdelay='0.1'
                             style='z-index:10;max-width:auto;max-height:auto;white-space:no-wrap;'>chairs
                        </div>-->
                    </li>
                {/foreach}
            </ul>
            <!--<div class="tp-bannertimer"></div>-->
        </div>
    </div>
    <style type='text/css'>
        #rev_slider_11_wrapper .tp-loader.spinner2 {
            background-color: #FFFFFF !important;
        }
    </style>

</div>
