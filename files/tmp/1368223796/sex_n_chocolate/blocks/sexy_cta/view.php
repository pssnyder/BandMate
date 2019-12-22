<?php  

$theLink = Page::getCollectionPathFromID($pageID);
$theLink = DIR_REL . $theLink;
 
?> 
<div class="five columns scta_wrap">    
	<a href="<?php   echo $theLink ?>" class="scta">
        	<span class="sctaTitle"><?php   echo $sctaText?></span>
            <p>
            <?php   echo $sctaDesc?>
            </p>
            <button><?php   echo $sctaLinkText?></button>
            
            <div class="sctaImg">
            
            	<?php   echo($controller->getContentAndGenerate()); ?>
                
            </div>		
        
    </a><!-- .scta -->
</div>