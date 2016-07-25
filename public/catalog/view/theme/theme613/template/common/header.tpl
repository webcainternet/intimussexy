<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php if ($icon) { ?>
        <link href="<?php echo $icon; ?>" rel="icon"/>
    <?php } ?>

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"
            type="text/javascript"></script>
    <link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">

    <link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/magnificent.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/js/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/photoswipe.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/js/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/material-design.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/material-icons.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/theme/<?php echo $theme_path; ?>/js/common.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>


    <!--custom script-->
    <?php foreach ($scripts as $script) { ?>
        <?php if (strcmp($script, 'catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js') != 0) { ?>
            <script src="<?php echo $script; ?>" type="text/javascript"></script>
        <?php } ?>
    <?php } ?>
    <script src="catalog/view/theme/<?php echo $theme_path; ?>/js/device.min.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <div style='clear:both;height:59px;padding:0 15px 0 15px;position:relative;z-index:10000;text-align:center;'>
        <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img
            src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
            height="42" width="820"
            alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div><![endif]-->

<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
$.src="//v2.zopim.com/?3odwJga6WEl6QeXUHaAJiOsZrvxT6RsJ";z.t=+new Date;$.
type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
</script>
<!--End of Zopim Live Chat Script-->

    <?php echo $google_analytics; ?>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-79838839-1', 'auto');
  ga('send', 'pageview');

</script>

    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/stylesheet.css" rel="stylesheet">
</head>
<body class="<?php echo $class; ?>">
<p id="gl_path" class="hidden"><?php echo $theme_path; ?></p>

<div id="page">
    <header>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div id="logo" class="logo">
                        <?php if ($logo) { ?>
                            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                                                alt="<?php echo $name; ?>" class="img-responsive"/></a>
                        <?php } else { ?>
                            <h1>
                                <a href="<?php echo $home; ?>"><?php echo $name; ?></a>
                            </h1>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-sm-9">

                    <?php echo $currency; ?>
                    <?php echo $language; ?>
                    <div class="top-links">
                        <a href="https://www.facebook.com/curtaintimus" title="<?php echo $text_account; ?>"><i
                                class="fa fa-facebook"></i>curtaintimus</a>

                        <a href="https://plus.google.com/100525777783796120950/posts" title="<?php echo $text_account; ?>"><i
                                class="fa fa-google-plus"></i>Google</a>

                        <a href="https://www.youtube.com/channel/UCEcNao-Uf5J44clx4yWuWNQ" title="<?php echo $text_account; ?>"><i
                                class="fa fa-youtube"></i>Youtube</a>

                        <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><i
                                class="material-icons-person"></i><?php echo $text_account; ?></a>

                        <?php if ($logged) { ?>
                            <a href="<?php echo $logout; ?>"><i class="material-icons-lock_open"></i><?php echo $text_logout; ?></a>
                        <?php }else{?>
                            <a href="<?php echo $login; ?>"><i class="material-icons-vpn_key"></i><?php echo $text_login; ?>
                            </a>
                        <?php }?>
                    </div>





                    <div class="clearfix"></div>
                    <div class="float-box">
                        <div>
                            <a class="header_checkout" href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>">
                                <span><?php echo $text_checkout; ?></span></a>
                        </div>
                        <div>
                            <?php echo $cart; ?>
                        </div>
                        <div>
                            <a href="#"
                               title="<?php echo $text_wishlist; ?>" class="item-btn">
                                <i class="fa fa-comments" aria-hidden="true"></i>
                                <strong>(51) 8961-8558</strong>
                                <span>Via WhatsApp</span>
                            </a>
                        </div>
                        <div>
                            <a href="callto:<?php echo $telephone;?>"
                               title="<?php echo $text_wishlist; ?>" class="item-btn">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <strong><?php echo $telephone;?></strong>
                                <span>Das 9h as 17h</span>
                            </a>
                        </div>
                    </div>


                    <nav id="top-links" class="nav toggle-wrap">
                        <a class="toggle material-design-settings49" href='#'></a>
                        <ul class="toggle_cont">
                            <li class="first">
                                <a href="<?php echo $home; ?>" title="<?php echo $text_home; ?>">
                                    <span><?php echo $text_home; ?></span>
                                </a>
                            </li>
                            <li class="toggle-wrap">
                                <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"
                                   class="toggle">
                                    <span><?php echo $text_account; ?></span>
                                    <span class="caret"></span></a>
                                <ul class="toggle_cont">
                                    <?php if ($logged) { ?>
                                        <li>
                                            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $download; ?>"><?php echo $text_download; ?></a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                                        </li>
                                    <?php } else { ?>
                                        <li>
                                            <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
                                        </li>
                                    <?php } ?>
                                </ul>
                            </li>
                            <li>
                                <a href="<?php echo $wishlist; ?>" id="wishlist-total"
                                   title="<?php echo $text_wishlist; ?>">
                                    <span><?php echo $text_wishlist; ?></span></a>
                            </li>
                            <li>
                                <a href="<?php echo $compare; ?>" id="compare-total2"
                                   title="<?php echo $text_compare; ?>">
                                    <span><?php echo $text_compare; ?></span></a>
                            </li>
                            <li>
                                <a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>">
                                    <span><?php echo $text_shopping_cart; ?></span>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>">
                                    <span><?php echo $text_checkout; ?></span></a>
                            </li>
                        </ul>
                    </nav>

                    <div style="margin-top: 15px; border-top: solid 1px; padding-top: 10px;">
                        <div style="display: inline-block; width: 45%; text-align: center;" class="phone"><i class="fa fa-truck" aria-hidden="true"></i>Entregamos para todo o Brasil</div>
                        <div style="display: inline-block; width: 45%; text-align: center;" class="phone"><i class="fa fa-credit-card" aria-hidden="true"></i>
Parcelamos em até 18x</div>
                    </div>

                    <?php echo $search; ?>
                </div>

            </div>
            <div class="row">
                <div class="col-sm-9 col-sm-offset-3">

                </div>
            </div>
        </div>

        <?php if ($categories) { ?>
            <div class="container">
                <div id="menu-gadget" class="menu-gadget">
                    <?php if ($categories_tm) {
                        echo $categories_tm;
                    } ?>
                </div>
            </div>
        <?php } ?>

    </header>
