<?php

echo "<div>Parcelamos em até 18x</div>";

 /*
   Configuracoes do sistema de parcelamento
   ----------------------------------------
   $qtd_parcelas = Define a quantidade de parcelas a ser exibida para os produtos
   $juros = Taxa de juros mensal (deixe em 0 para parcelamento sem juros)
   $moeda_da_loja = Permite especificar a moeda utilizada na loja
 
   $tipo_de_calculo = Permite escolher o tipo de calculo a ser utilizado
   0 = Juros simples (Pagamento Digital)
   1 = Tabela Price (PagSeguro e outros)
 */
 
 $qtd_parcelas = 5;
 $juros = 0;
 $moeda_da_loja = 'R$ ';
 $tipo_de_calculo = 0;
 $parcela_minima = 5.00;
 
 if (!$product['special']) {
   $preco_numero = str_replace(',','.',str_replace('.','', str_replace($moeda_da_loja,"",strip_tags($product['price']))));
 } else {
   $preco_numero = str_replace(',','.',str_replace('.','', str_replace($moeda_da_loja,"",strip_tags($product['special']))));
 }
 
 // Calcula o valor da parcela de acordo com o tipo de calculo utilizado
 if ($tipo_de_calculo == 0) {
   $valor_total = ($preco_numero * pow(1+($juros/100), $qtd_parcelas));
   $max_parcelas = intval($valor_total/$parcela_minima);
   if ($max_parcelas < $qtd_parcelas) { $qtd_parcelas = $max_parcelas; }
   $valor_parcela = $valor_total/$qtd_parcelas;
 }
 if ($tipo_de_calculo == 1) {
   $valor_total = ($preco_numero * ($juros/100));
   $max_parcelas = intval($valor_total/$parcela_minima);
   if ($max_parcelas < $qtd_parcelas) { $qtd_parcelas = $max_parcelas; }
   $valor_parcela = $valor_total/(1-(1/(pow(1+($juros/100), $qtd_parcelas))));
 }
 
 // Exibe as frases de parcelamento
   //echo '<br />ou <span style="font-size: 22px; font-weight: bold; color: #FA295C;">' . $qtd_parcelas . 'x</span> de <span style="font-size: 22px; font-weight: bold; color: #FA295C;">' . $moeda_da_loja . number_format($valor_parcela, 2, ',', '.');
 if ($juros == 0) { 
   //echo '</span> s/ juros'; 
 } else { 
   //echo '</span> com juros de ' . $juros . '% ao m&ecirc;s'; 
 }
 
 ?>