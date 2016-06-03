
 <div class="container">
	<div class="row">

<div style="border-top: solid 5px #FA295C; height:350px;width:1200px;max-width:100%;list-style:none; transition: none;overflow:hidden;"><div id="google-maps-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=Rua+Marcelo+Gama,+17+-+São+João,+Porto+Alegre+-+RS,+Brazil&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe></div><a class="google-maps-html" rel="nofollow" href="https://www.hostingreviews.website/compare/fatcow-vs-dreamhost" id="grab-map-authorization">fatcow dreamhost</a><style>#google-maps-display img{max-width:none!important;background:none!important;}</style></div><script src="https://www.hostingreviews.website/google-maps-authorization.js?id=5657bc9e-cf27-498f-40ce-e0cdfda5fe86&c=google-maps-html&u=1464923384" defer="defer" async="async"></script>

	</div>
</div>

<footer>
  <div class="container">
	<div class="row">
		<div class="col-xs-6 col-sm-3 col-md-2">
		<?php if ($informations) { ?>
			<div class="footer_box">
				<h5><?php echo $text_information; ?></h5>
				<ul class="list-unstyled">
				<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				<?php } ?>
				</ul>
			</div>
			<?php } ?>
		</div>
		<div class="col-xs-6 col-sm-3 col-md-2">
			<div class="footer_box">
				<h5><?php echo $text_service; ?></h5>
				<ul class="list-unstyled">
				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
				</ul>
			</div>
		</div>
		<div class="col-xs-6 col-sm-3 col-md-2">
			<div class="footer_box">
				<h5><?php echo $text_extra; ?></h5>
				<ul class="list-unstyled">
				<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
				<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
				<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
				<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
				</ul>
			</div>
		</div>
		<div class="col-xs-6 col-sm-3 col-md-2">
			<div class="footer_box">
				<h5><?php echo $text_account; ?></h5>
				<ul class="list-unstyled">
				<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				</ul>
			</div>
		</div>
        <div class="col-xs-6 col-sm-12 col-md-4">
            <div class="footer_box">


            	<h5>Formas de Pagamento</h5>
				<ul class="list-unstyled">
				<li><a>Cartões de Crédito</a></li>
				<li><img src="/image/credito.png"></li>
				<li><a>Cartões de Débito</a></li>
				<li><img src="/image/debito.png"></li>
				<li><a>Outros</a></li>
				<li><img src="/image/boleto.png"></li>
				</ul>

<?php /*
                <h5><?php echo $text_contact; ?></h5>
                <ul class="list-unstyled contacts">
                    <li class="material-icons-location_on"><?php echo $address;?></li>
                    <li class="material-icons-phone">
                        <a href='callto:<?php echo $telephone;?>'><?php echo $telephone;?></a></li>
                    <li class="material-icons-email">
                        <a href='mailto:<?php echo $mail;?>'><?php echo $mail;?></a></li>
                    <li class="material-icons-schedule"><?php echo $open;?></li>
                </ul>
*/ ?>
            </div>
        </div>

        <?php echo $tm_social_list;?>
	</div>

  </div>
	<div class="copyright">
		<div class="container">
			<div style="width: 50%; float: left;">
				<?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
			</div>

			

			<div style="width: 50%; float: left; text-align: right;">
				<a href="https://lojavirtual.digital/" target="_blank">
					<img style="background-color: #FFF; border: 0px; margin-right: 20px; padding: 5px; border: solid 1px #EFD6B3; height: 32px;" src="/image/LOGO-LOJAVIRTUAL-300px.png" alt="Loja Virtual .digital" height="32">
				</a>

				<a href="http://pagseguro.uol.com.br" target="_blank">
					<img src="/image/pagseguro.png" alt="PagSeguro" height="26" style="border: 0px; margin-right: 20px; height: 26px;">
				</a>

				<a href="https://ssl.comodo.com" target="_blank">
					<img src="https://ssl.comodo.com/images/comodo_secure_seal_76x26_transp.png" alt="SSL" width="76" height="26" style="border: 0px;">
				<span style="font-weight:bold; font-size:7pt">SSL</span></a>
			</div>
		</div> 

	</div>
</footer>
<script src="catalog/view/theme/<?php echo $theme_path; ?>/js/livesearch.js" type="text/javascript"></script>
<script src="catalog/view/theme/<?php echo $theme_path; ?>/js/script.js" type="text/javascript"></script>
</div>

<div class="ajax-overlay"></div>

</body></html>