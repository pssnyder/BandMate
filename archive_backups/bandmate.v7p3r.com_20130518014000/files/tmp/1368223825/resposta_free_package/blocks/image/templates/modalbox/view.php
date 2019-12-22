<?php     defined('C5_EXECUTE') or die(_("Access Denied."));

$im = Loader::helper('image');
 
$f = File::getByID($fID); 
$fv = $f->getApprovedVersion();
$path = $fv->getURL(); 
$linkURL = $controller->getLinkURL();
$title = $fv->getTitle();
$width= $maxWidth;
$height = $maxHeight;
 ?>  

 <?php     if($width == 0):?>
   <a class="modal-trigger-<?php     echo $bID;?>" title="<?php     echo $title;?>" href="#">
   <img src="<?php     echo $path;?>" title="<?php     echo $title;?>"/>
   </a>
    
   <div class="modal-box modal-box-<?php     echo $bID;?>">
   	<div class="modal-inner">
 	<a href="#" class="modal-box-close">X</a>
    <img src="<?php     echo $path;?>" title="<?php     echo $title;?>"/>
   </div>
  
   </div>
    <?php     else:?>
    
    <a class="modal-img modal-trigger-<?php     echo $bID;?>" title="<?php     echo $title;?>" href="#">
    <img src="<?php     echo $path;?>" 
     width="<?php     echo $width;?>" 
     height="<?php     echo $height;?>" 
     title="<?php     echo $title;?>" />
    </a>
    
    <div class="modal-box modal-box-<?php     echo $bID;?>">
    <div class="modal-inner">
 	<a href="#" class="modal-box-close">X</a>
 	 <img src="<?php     echo $path;?>" 
     width="<?php     echo $width;?>" 
     height="<?php     echo $height;?>" 
     title="<?php     echo $title;?>" />
     
     </div>
     </div>
    
    <?php     endif;?>
        

<script>
$(document).ready(function(){


$(function() {
		       
		       
		        
                $('.modal-trigger-<?php     echo $bID;?>').click(function(){
                	var winH = $(window).height();
                	var winW = $(window).width();
                	
                	$(window).resize(function () { 
                	var winH = $(window).height();
                	var winW = $(window).width();
                	
                	$('.modal-box-<?php     echo $bID;?>').css('top',  winH/2-$('.modal-box-<?php     echo $bID;?>').height()/2);
                	$('.modal-box-<?php     echo $bID;?>').css('left', winW/2-$('.modal-box-<?php     echo $bID;?>').width()/2);
                	
                	
                	});
                	
                	
                	$('.modal-box-<?php     echo $bID;?>').css('top',  winH/2-$('.modal-box-<?php     echo $bID;?>').height()/2);
                	$('.modal-box-<?php     echo $bID;?>').css('left', winW/2-$('.modal-box-<?php     echo $bID;?>').width()/2);
                
                    $('.overlay').fadeIn('fast',function(){
                        $('.modal-box-<?php     echo $bID;?>').fadeIn(500);
                        $('.modal-box-close').animate({'top':'2%', 'left':'2%'},500);
                    });
                    
                });
                $('.modal-box-close').click(function(){
                    $('.modal-box-<?php     echo $bID;?>').fadeOut(500,function(){
                        $('.modal-box-close').animate({'top':'-2400px', 'left':'2%'},500);
                        $('.overlay').fadeOut('fast');
                    });
                });

   
         

});

});
</script>