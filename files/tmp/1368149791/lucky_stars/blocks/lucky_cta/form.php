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
$formPageSelector = Loader::helper('form/page_selector');
?>

<div style="margin: 20px 0;">
<?php   echo $form->label('luckyText', 'CTA Title:');?>
<?php   echo $form->text('luckyText', $luckyText, array('style' => 'width: 220px'));?>
</div>

<div style="margin: 20px 0;">
<?php   echo $form->label('luckyDesc', 'Description:');?>
<?php   echo $form->text('luckyDesc', $luckyDesc, array('style' => 'width: 320px'));?>
</div>

<div style="margin: 20px 0;">
<?php   echo("<label>Select a page to link to:</label>");
echo $formPageSelector->selectPage('pageID',$pageID); ?>
</div>

<div style="margin: 20px 0;">
<?php   echo $form->label('luckyLinkText', 'Link Text (ex: click here to learn more):');?>
<?php   echo $form->text('luckyLinkText', $luckyLinkText, array('style' => 'width: 250px'));?>
</div>

<div style="margin: 20px 0;">
<?php   echo("<br><label>Choose an Image:</label>");
echo $al->image('ccm-b-image', 'fID', t('Choose Image'), $bf);?>
</div>

<div style="margin: 20px 0;">
<?php   echo $form->label('laltText', 'Image alt text:');?>
<?php   echo  $form->text('altText', $altText, array('style' => 'width: 250px')); ?>
</div>
