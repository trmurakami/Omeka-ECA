<?php echo head(array('title' => metadata('item', array('Dublin Core', 'Title')),'bodyclass' => 'item show')); ?>

<?php
  /* I can remove data here by commenting out. Also need to add in a few fields.*/
  $title = metadata('item', array('Dublin Core', 'Title'));  
  $subject = metadata('item', array('Dublin Core', 'Subject'));
  $description = metadata('item', array('Dublin Core', 'Description'));
  $creators = metadata('item', array('Dublin Core', 'Creator'));
  $source = metadata('item', array('Dublin Core', 'Source'));
  $publisher = metadata('item', array('Dublin Core', 'Publisher'));
  $date = metadata('item', array('Dublin Core', 'Date'));
  $contributors = metadata('item', array('Dublin Core', 'Contributor'));
  $rights = metadata('item', array('Dublin Core', 'Rights'));
  $relation = metadata('item', array('Dublin Core', 'Relation'));
  $format = metadata('item', array('Dublin Core', 'Format'));
  $language = metadata('item', array('Dublin Core', 'Language'));
  $type = metadata('item', array('Dublin Core', 'Type'));
  $identifier = metadata('item', array('Dublin Core', 'Identifier'));
  $coverage = metadata('item', array('Dublin Core', 'Coverage'));
  $tags = tag_string('item', 'items/browse', '');
  $citation = metadata('item', 'citation', array('no_escape' => true));
  $collection = link_to_collection_for_item();
  $outputFormat = output_format_list(false, '');

  // VRA CORE

  $agente = metadata('item', array('VRA Core', 'Agente'));
  $medidas = metadata('item', array('VRA Core', 'Medidas'));
  $contextoCultural = metadata('item', array('VRA Core', 'Contexto Cultural'));
  $estiloOuPeriodo = metadata('item', array('VRA Core', 'Estilo ou Período'));
  $localizacao = metadata('item', array('VRA Core', 'Localização'));
  $descricao = metadata('item', array('VRA Core', 'Descrição'));
  $textref = metadata('item', array('VRA Core', 'Textref'));
  $assunto = metadata('item', array('VRA Core', 'Subject'));
  $tipodetrabalho = metadata('item', array('VRA Core','Tipo de Trabalho'));
  $material = metadata('item', array('VRA Core','Material'));
  $tecnica = metadata('item', array('VRA Core','Técnica'));

  function showItemDescriptionTag($tagName, $tagVal) {
    echo __('<div class="item-description-tag">');
    echo __('  <h1>'.$tagName.'</h1>');
    if ($tagName == 'TITLE') {
      echo __('  <b>'.$tagVal.'</b>');
    } else {
      echo __('  <p>'.$tagVal.'</p>');
    }
    echo __('</div>');
  }
?>
<div class="container item">
  <div class="section-header col-md-8 col-md-offset-2">
    <small><?php echo $tipodetrabalho ?></small>
    <h1><?php echo $title ?></h1>
    <?php if (metadata('item', 'Collection Name')): ?>
      <br/>
      <small style="font-size:10px">-COLEÇÃO-</small>
      <h4><?php echo link_to_collection_for_item(); ?></h4>
    <?php endif; ?>  

  </div><!-- end of section-header -->

  <?php 
    if (get_theme_option('Item FileGallery') == 0 && metadata('item', 'has files')) {
      if (metadata('item', 'file_count') > 1) {
        echo __('<div class="multi-item-files col-lg-8 col-md-12">');
        echo files_for_item(array('imageSize' => 'square_thumbnail'), array('class' => 'item-file col-md-6'));
      } else {
        echo __('<div class="single-item-files col-lg-8 col-md-12">');
        echo files_for_item(array('imageSize' => 'fullsize'));
      }
      echo __('</div><!-- end of item-files -->'); 
    }
  
  ?>

  <!-- Items metadata -->
  <div id="item-metadata" class="item-description col-lg-4">
    <?php echo all_element_texts('item'); ?>
  </div>

  <!--
  <div class="item-description col-lg-4">
    <div>
      < ?php 
        showItemDescriptionTag('TÍTULO', $title);
        showItemDescriptionTag('AUTOR', $agente);
        showItemDescriptionTag('DESCRIÇÃO', $descricao);
        showItemDescriptionTag('MEDIDAS', $medidas);
        showItemDescriptionTag('TIPO DE TRABALHO', $tipodetrabalho);
        
      ?>
    </div>
    
    <div>
      < ?php 
        showItemDescriptionTag('CONTEXTO CULTURAL', $contextoCultural);
        showItemDescriptionTag('ESTILO OU PERÍODO', $estiloOuPeriodo);
        showItemDescriptionTag('ASSUNTOS', $assunto);
        showItemDescriptionTag('MATERIAL', $material);
        showItemDescriptionTag('TÉCNICA', $tecnica);
      ?>
    </div>

    <div>
      < ?php 
        
        showItemDescriptionTag('LOCALIZAÇÃO', $localizacao);
        showItemDescriptionTag('TEXTO DE REFERÊNCIA', $textref);
      ?>  
    </div>  
    
  </div>
  -->

  <div class="col-lg-12">  
    <!-- The following prints a citation for this item. -->
    <!--
    <div id="item-citation" class="element">
        <h3>< ?php //echo __('Citation'); ?></h3>
        <div class="element-text">< ?php //echo metadata('item', 'citation', array('no_escape' => true)); ?></div>
    </div>
    -->

    <!-- The following prints a list of all tags associated with the item -->
    <?php if (metadata('item', 'has tags')): ?>
      <div id="item-tags" class="element">
          <h3><?php echo __('Tags'); ?></h3>
          <div class="element-text"><?php echo tag_string('item'); ?></div>
      </div>
    <?php endif;?>

    <!--
    <div id="item-output-formats" class="element">
        <h3>< ?php //echo __('Output Formats'); ?></h3>
        <div class="element-text">< ?php //echo output_format_list(); ?></div>
    </div>
    -->
                  


  </div>
  
  <?php fire_plugin_hook('public_items_show', array('view' => $this, 'item' => $item)); ?>
        <!--
        <nav>
          <ul class="item-pagination navigation">
              <li id="previous-item" class="previous">< ?php echo link_to_previous_item_show(); ?></li>
              <li id="next-item" class="next">< ?php echo link_to_next_item_show(); ?></li>
          </ul>
        </nav>
        -->
        
        
        <div class="item-metadata-content"> 
        

        
          
        </div>

  


</div><!-- end of item container -->




<?php echo foot(); ?>
