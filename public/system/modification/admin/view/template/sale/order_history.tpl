<table class="table table-bordered">
  <thead>
    <tr>
      <td class="text-left"><?php echo $column_date_added; ?></td>
      <td class="text-left"><?php echo $column_comment; ?></td>
      <td class="text-left"><?php echo $column_status; ?></td>
      <td class="text-left"><?php echo $column_notify; ?></td>
    </tr>
  </thead>
  <tbody>
    <?php if ($histories) { ?>
    <?php foreach ($histories as $history) { ?>
    <tr>
      <td class="text-left"><?php echo $history['date_added']; ?></td>
      
					<?php if($history['status'] == 'Código de Rastreio'){ ?>
					<td class="text-left"><a href="http://www.mdemidia.com.br/rastreio/samples/webservice.php?code=<?php echo $history['comment']; ?>" target="_blank"><?php echo $history['comment']; ?></a></td>
					<?php } else { ?>
					<td class="text-left"><?php echo $history['comment']; ?></td>
					<?php } ?>
					
      <td class="text-left"><?php echo $history['status']; ?></td>
      <td class="text-left"><?php echo $history['notify']; ?></td>
    </tr>
    <?php } ?>
    <?php } else { ?>
    <tr>
      <td class="text-center" colspan="4"><?php echo $text_no_results; ?></td>
    </tr>
    <?php } ?>
  </tbody>
</table>
<div class="row">
  <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
  <div class="col-sm-6 text-right"><?php echo $results; ?></div>
</div>
