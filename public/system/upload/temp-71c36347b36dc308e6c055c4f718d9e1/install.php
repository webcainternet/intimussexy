<?php
  $this->db->query("DELETE FROM `".DB_PREFIX."modification` WHERE `code` = 'mercadolivre'");
  
  $url_rows = $this->db->query("SELECT * FROM `".DB_PREFIX."url_alias` WHERE `query` = 'mercadolivre=mercadolivre/cron'")->rows;
  if(!$url_rows) {
    $this->db->query("INSERT INTO `".DB_PREFIX."url_alias` (`url_alias_id`, `query`, `keyword`) VALUES (NULL, 'mercadolivre=mercadolivre/cron', 'mercadolivre_cron')");
  }  
?>