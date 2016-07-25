<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
       <!-- content starts -->  
          <table  width="100%" cellspacing="0" cellpadding="2" border="0" class="adminlist">
                    <tr>
                        <td width="200" align="center"><a href="<?php echo $setting?>"><img src="view/image/mercadolivre/setting.png" /><br /><?php echo $text_setting ?></a></td>
						<td width="200" align="center"><a target="_blank" href="<?php echo $auth?>"><img src="view/image/mercadolivre/lock_icon.png" /><br /><?php echo $text_auth ?></a></td>
						<?php if($upgrade){?>
						 <td width="200" align="center"><a href="<?php echo $upgrade?>"><img src="view/image/mercadolivre/ml_upgrade.png" /><br /><?php echo $text_upgrade ?></a></td>
						<?php } ?>
						<td width="200" align="center"><a href="<?php echo $help?>"><img src="view/image/mercadolivre/help.png" /><br /><?php echo $text_help ?></a></td>
                    </tr>
               </table>
       <!-- content start -->
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>