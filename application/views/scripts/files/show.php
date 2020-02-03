<?php
$fileTitle = metadata('file', 'display_title');

if ($fileTitle != '') {
    $fileTitle = ': &quot;' . $fileTitle . '&quot; ';
} else {
    $fileTitle = '';
}
$fileTitle = __('File #%s', metadata('file', 'id')) . $fileTitle;
?>
<?php echo head(array('title' => $fileTitle, 'bodyclass' => 'files show primary-secondary')); ?>

<br/><br/><br/><br/><br/><br/>
<div class="container item">
<h1><?php echo $fileTitle; ?></h1>

<div class="single-item-files col-lg-12 col-md-12">
    <div id="primary" class="col-lg-8 col-md-8">
        <?php echo file_markup($file, array('imageSize' => 'fullsize')); ?>        
    </div>

<aside id="sidebar" class="col-lg-4 col-md-4" style="padding:30px">
    
    <div id="item-metadata">
        <h2><?php echo __('Item'); ?></h2>
        <?php echo link_to_item(null, array(), 'show', $file->getItem()); ?>
    </div><!-- end item-metadata -->

    <?php echo all_element_texts('file'); ?>

    <div id="format-metadata" class="item-description">
        <h2><?php echo __('Format Metadata'); ?></h2>
        <div id="original-filename" class="item-description-tag">
            <h1><?php echo __('Original Filename'); ?></h1>
            <p><?php echo metadata('file', 'Original Filename'); ?></p>
        </div>
    
        <div id="file-size" class="item-description-tag">
            <h1><?php echo __('File Size'); ?></h1>
            <p><?php echo __('%s bytes', metadata('file', 'Size')); ?></p>
        </div>

        <div id="authentication" class="item-description-tag">
            <h1><?php echo __('Authentication'); ?></h1>
            <p><?php echo metadata('file', 'Authentication'); ?></p>
        </div>
    </div><!-- end format-metadata -->
    
    <div id="type-metadata" class="item-description">
        <h2><?php echo __('Type Metadata'); ?></h2>
        <div id="mime-type-browser" class="item-description-tag">
            <h1><?php echo __('Mime Type'); ?></h1>
            <p><?php echo metadata('file', 'MIME Type'); ?></p>
        </div>
        <div id="file-type-os" class="item-description-tag">
            <h1><?php echo __('File Type / OS'); ?></h1>
            <p><?php echo metadata('file', 'Type OS'); ?></p>
        </div>
    </div><!-- end type-metadata -->
</aside>


</div>
</div>
<?php echo foot();?>
