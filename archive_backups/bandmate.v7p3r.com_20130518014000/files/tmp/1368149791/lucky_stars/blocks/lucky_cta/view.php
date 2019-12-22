<?php  defined('C5_EXECUTE') or die(_("Access Denied."));
$theLink = Page::getCollectionPathFromID($pageID);
$theLink = DIR_REL . $theLink;
?> 
<div class="lcta_wrap">    
        <h3 class="luckyTitle"><?php   echo $luckyText?></h3>
        <p class="lcta-img"><?php   echo($controller->getContentAndGenerate()); ?></p>
        <p><?php   echo $luckyDesc?></p>  
		<p><a href="<?php   echo $theLink ?>" class="button"><?php   echo $luckyLinkText?></a></p>
	<!-- .cta -->
</div>