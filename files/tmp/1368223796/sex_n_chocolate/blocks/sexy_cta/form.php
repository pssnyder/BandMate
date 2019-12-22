<?php   $formPageSelector = Loader::helper('form/page_selector'); ?>
<?php     

defined('C5_EXECUTE') or die(_("Access Denied."));
$includeAssetLibrary = true;
$assetLibraryPassThru = array(
	'type' => 'image'
);
$al = Loader::helper('concrete/asset_library');
$bf = null;
	if ($controller->getFileID() > 0) { 
		$bf = $controller->getFileObject();
	}

?>

<div style="margin: 20px 0;">
<?php   echo $form->label('sctaText', 'CTA Title:');?>
<?php   echo $form->text('sctaText', $sctaText, array('style' => 'width: 320px'));?>
</div>

<div style="margin: 20px 0;">
<?php   echo $form->label('sctaDesc', 'Description:');?>
<?php   echo $form->text('sctaDesc', $sctaDesc, array('style' => 'width: 320px'));?>
</div>

<div style="margin: 20px 0;">
<?php   echo("<label>Select a page to link to:</label>");
echo $formPageSelector->selectPage('pageID',$cID); ?>
</div>

<div style="margin: 20px 0;">
<?php   echo $form->label('sctaLinkText', 'Link Text (ex: click here to learn more):');?>
<?php   echo $form->text('sctaLinkText', $sctaLinkText, array('style' => 'width: 320px'));?>
</div>

<div style="margin: 20px 0;">
<?php   echo("<br><label>Choose an Image:</label>");
echo $al->image('ccm-b-image', 'fID', t('Choose Image'), $bf);?>
</div>

<div style="margin: 20px 0;">
<?php   echo $form->label('altText', 'Image alt text:');?>
<?php   echo  $form->text('altText', $altText, array('style' => 'width: 250px')); ?>
</div>
