<?php
// Heading 
$_['heading_title']        = 'Mercadolivre'; 
$_['text_module']         = 'Módulo'; 

// Text

$_['text_app_id']         = 'App ID';
$_['text_app_secret']         = 'App Secret';
$_['text_status']         = 'Status';
$_['text_enabled']         = 'Habilitado';
$_['text_disabled']         = 'Desabilitado';
$_['text_help']         = 'Ajuda';

$_['text_auth_pending']         = 'Autenticar Mercadolivre';
$_['text_auth_done']         = 'Autenticação Feita.';

$_['syn_done']        = 'Sincronização feita!'; 
$_['unsyn_done']        = 'Desvinculação feita!!'; 

$_['text_oc_status']         = 'Opencart Status';
$_['text_ml_status']         = 'Mercadolivre Status';

$_['tab_setting']          = 'APP Setting';
$_['tab_listing']          = 'Listagem Configuração';
$_['tab_order']          = 'Ordem Configuração';
$_['listing_default']          = 'Essa configuração só irá funcionar se nenhum ajuste encontrado para um determinado produto';

$_['entry_mercadolivre_currency']        = 'Listagem de Moedas'; 
$_['entry_mercadolivre_buying_mode']        = 'Modo de Venda'; 
$_['entry_mercadolivre_listing_type']        = 'Tipo de anúncio'; 
$_['entry_mercadolivre_condition']        = 'Condição do item';   
$_['entry_mercadolivre_category']        = 'Mercadolivre Categoria'; 
$_['entry_mercadolivre_template']        = 'Produto Template: <br />(Template do produto deve ter um espaço reservado \'__CONTENT__\' para que os detalhes do produto seja Adicionado.)'; 
$_['tab_template']        = 'Produto Template';
$_['entry_mercadolivre_price_adjustment']        = 'Ajuste de Preço do Produto: <br />(Ele irá ajustar o preço do produto antes de postar para Mercado Livre. Porcentagem é Permitido)';
$_['entry_mercadolivre_warranty']        = 'Produto Garantia';
$_['entry_mercadolivre_subtitle']        = 'Produtos Sub-Título';
$_['entry_mercadolivre_video']        = 'Produto Video: <br />(Youtube Video ID)';


$_['need_auth']          = 'Autenticação com mecadolivre ainda não foi feita. Por favor autenticar <a target="_blank" href="%smercadolivre_auth">%smercadolivre_auth</a>';

$_['text_instruction']        = '<li>Por favor, instale Mercadolivre Módulo em Extensões -> Módulos -> Mercadolivre </li>
                                 <li>Criar um aplicativo em Mercadolivre <a target="_blank" href="http://applications.mercadolibre.com/">http://applications.mercadolibre.com/ </a></li>
								 <li>Definir Redirecionamento URL para <a target="_blank" href="%smercadolivre_auth">%smercadolivre_auth</a> </li>
								 <li>Definir URL Notificação para <a target="_blank" href="'.HTTP_CATALOG.'mercadolivre_callback">'.HTTP_CATALOG.'mercadolivre_callback</a></li>
								 <li>Em seguida autenticar opencart com a sua conta Mercadolivre</li>
								 <li>Por favor, crie uma árvore de categoria para o seu db local clicando em <a target="_blank" href="'.HTTP_CATALOG.'index.php?route=mercadolivre/mercadolivre/syncat">'.HTTP_CATALOG.'index.php?route=mercadolivre/mercadolivre/syncat</a></li>
								 <li><span style="color:#FF0000;font-weight:bold;">Muito Importante:</span> Como o Mercadolivre não suporta opencart URL padrão, você tem que habilitar SEF URL em configuração do opencart.</li>
								 <li><strong>CronJob:</strong> CronJob is optional. If you want to fetch ML order data without logging to store admin. Please add this URL '.HTTP_CATALOG.'mercadolivre_cron in your cronjob in every
few hours.</li>'; 
								 
/*Feedback*/
$_['lang_auto_feedback']        = 'O feedback automáticamente?';
$_['lang_auto_feedback_status']        = 'Enviar resposta quando o status do pedido Mercadolivre é?';
$_['lang_feedback_rating']        = 'Avaliação do feedback.';
$_['lang_feedback_message']        = 'Feedback Messagem';
$_['tab_feedback']        = 'Feedback Setting';
$_['text_edit']        = 'Mercadolivre Module';

$_['lang_order_status1']        = 'Confirmado';
$_['lang_order_status2']        = 'Aguardando Pagamento';
$_['lang_order_status3']        = 'Pagamento em Processos';
$_['lang_order_status4']        = 'Pago';
$_['lang_order_status5']        = 'Cancelado';
$_['lang_purchase_no']        = 'Your Opencart.com Order#: <br />(<a target="_blank" href="https://www.opencart.com/index.php?route=account/order">Click here</a> to find your order# )';


/*Shipping*/
$_['tab_shipping']        = 'Personalizado o Envio';
$_['lang_shipping_name']        = 'Nome do transporte';
$_['lang_shipping_cost']        = 'Custo de envio';
$_['lang_shipping_alter']        = 'Selecione método alternativo, Se personalizado Envio não está disponível <br /> (<i> Nota: Produto dimensional é necessário para me1 / me2 </ i>.)';
$_['lang_shipping_me10']        = 'MercadoEnvios 1 (me1) com coletor local';
$_['lang_shipping_me11']        = 'MercadoEnvios 1 (me1) sem o recolhimento local';
$_['lang_shipping_me20']        = 'MercadoEnvios 2 (me2) com coletor local';
$_['lang_shipping_me21']        = 'MercadoEnvios 2 (me2) sem o recolhimento local';
$_['lang_shipping_00']        = 'Não precisa';


// Column
$_['text_setting']          = 'Configurações';
$_['lang_column_status']        = 'Status';
$_['lang_column_action']        = 'Ação';

//New
$_['order_status_hints']          = 'Por favor, mapear Mercadolivre status do pedido para o status do pedido opencart. Por favor, selecione também o transporte e método de pagamento. Ele será usado quando uma ordem ML sincronizar com OpenCart.';
$_['lang_new_user']        = 'Criar um novo cliente se ML-mail do cliente não existe no opencart ';
$_['text_yes']         = 'Sim';
$_['text_no']         = 'Não';
$_['text_shipping_method']         = 'Método de Envio';
$_['text_payment_method']         = 'Método de Pagamento';
$_['text_add_images_in_desc']         = 'Adicionar Imagens em Descrição do Produto';
$_['text_order_status_rule']         = 'Não Sincronizar Ordem Quando opencart Status do pedido é';
$_['text_always_sync']         = 'sempre sincronização';
$_['text_import_old']         = 'Period of Old Order Importing';
$_['text_import_all']         = 'All Orders';
$_['text_import_three_days']         = 'Orders of the last three days';
$_['text_import_week_days']         = 'Orders of the last week';
$_['text_import_two_week_days']         = 'Orders of the last two weeks';
$_['text_import_one_month']         = 'Orders of the last month';
$_['text_dont_import']         = 'Don\'t import';

// Error
$_['error_permission']          = 'Atenção: Você não tem permissão para modificar extensões MercadoLivre!';
$_['update_success']                    = 'O Módulo MercadoLivre foi atualizado com Sucesso !';
$_['error_app_id']        = 'App ID Requerido!';
$_['error_app_secret']          = 'App Secret Requerido!';
$_['ml_text_category_hint']        = '(Texto verde significa lista permitida. Texto vermelho significa listagem não é permitido)';
$_['debug_status']          = 'Debug Status:';
$_['upgrade_done']        = 'Módulo foi atualizado.';
$_['text_upgrade']        = 'Atualizar';
$_['ml_text_reposting']        = 'Depois de repassar automaticamente perto';