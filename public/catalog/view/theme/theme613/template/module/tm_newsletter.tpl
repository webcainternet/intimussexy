<div style="background-color: #e1e2dd;padding-top: 20px;padding-left: 20px;margin-bottom: 30px;">
    <i style="font-size: 36px; float: left; position: absolute; margin-top: 12px;" class="fa fa-archive" aria-hidden="true"></i>
    <div style="float: left; margin-left: 50px; width: 100%; font-weight: bold;">Embalagens discretas</div>
    <div style="float: left; margin-left: 50px; width: 100%;">Privacidade 100% garantida</div>
    &nbsp;
</div>


<div id="tm-newsletter" class="box newsletter">
   <h3><?php echo $heading_title; ?></h3>
</div>



<form method="post" enctype="multipart/form-data" id="tm-newsletter-form">
    <div class="newsletter-wrap">

      <div style="width: 270px; float: left;">
        Inscreva-se para a newsletter
      </div>



        <div style="width: 270px; float: left; margin-top: 10px;">
          <input type="text" name="tm_newsletter_email" value="" placeholder="<?php echo $entry_mail; ?>"
               id="input-tm-newsletter-email" class="form-control"/></div>

        <div style="width: 270px; float: left; margin-top: 10px;">
          <button type="submit" id="tm-newsletter-button" class="dropdown-btn" style="    height: 40px;
    border-radius: 5px;
    margin-left: 133px;
    float: right;"><?php echo $button_subscribe; ?></button></div>
    </div>
    <span id="tm-newsletter_error" class="newsletter-error"></span>
    <span id="tm-newsletter_success" class="newsletter-success"></span>
</form>

<div id="tm-newsletter" class="box newsletter">
   <h3>&nbsp;</h3>
</div>



        <?php if ($description){?><p class="newsletter-description"><?php echo $description;?></p><?php }?>



<script>
    $(document).ready(function () {
        $('#tm-newsletter').submit(function (e) {
            e.preventDefault();
            var email = $("#input-tm-newsletter-email").val();
            var emailRegex = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}$/igm;
            if (emailRegex.test(email)) {
                var dataString = 'tm_newsletter_email=' + email;
                $.ajax({
                    type: "POST",
                    url: "index.php?route=module/tm_newsletter",
                    data: dataString,
                    cache: false,
                    success: function (result) {
                        if (!result){
                            $('#tm-newsletter_success').html('<?php echo $success; ?>').fadeIn(300).delay(4000).fadeOut(300);
                        }else{
                            $('#tm-newsletter_error').html(result).fadeIn(300).delay(4000).fadeOut(300);
                        }
                    }
                });
            } else {
                $('#tm-newsletter_error').html('<?php echo $error_invalid_email; ?>').fadeIn(300).delay(4000).fadeOut(300);
            }
        });
    });
</script>
