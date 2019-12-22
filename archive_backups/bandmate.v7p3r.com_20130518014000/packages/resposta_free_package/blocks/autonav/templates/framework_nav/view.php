<?php     
	defined('C5_EXECUTE') or die("Access Denied.");
	$aBlocks = $controller->generateNav();
	$c = Page::getCurrentPage();
	$containsPages = false;
	
	$nh = Loader::helper('navigation');
	
	//this will create an array of parent cIDs 
	$inspectC=$c;
	$selectedPathCIDs=array( $inspectC->getCollectionID() );
	$parentCIDnotZero=true;	
	while($parentCIDnotZero){
		$cParentID=$inspectC->cParentID;
		if(!intval($cParentID)){
			$parentCIDnotZero=false;
		}else{
			$selectedPathCIDs[]=$cParentID;
			$inspectC=Page::getById($cParentID);
		}
	} 	
	
	foreach($aBlocks as $ni) {
	  
	
		$_c = $ni->getCollectionObject();
		if (!$_c->getCollectionAttributeValue('exclude_nav')) {
			
			
			$target = $ni->getTarget();
			if ($target != '') {
				$target = 'target="' . $target . '"';
			}
			
			if (!$containsPages) {
				// this is the first time we've entered the loop so we print out the UL tag
			echo("<div class=\"tooglenav\">Navigation</div>");
			echo("<a class=\"box-close\">X</a>");
			echo("<ul class=\"nav\">");
			
				
			}
			
			$containsPages = true;
			
			$thisLevel = $ni->getLevel();
			if ($thisLevel > $lastLevel) {
				echo("<ul>");
			} else if ($thisLevel < $lastLevel) {
				for ($j = $thisLevel; $j < $lastLevel; $j++) {
					if ($lastLevel - $j > 1) {
						echo("</li></ul>");
					} else {
						echo("</li></ul></li>");
					}
				}
			} else if ($i > 0) {
				echo("</li>");
			}

			$pageLink = false;
			
			if ($_c->getCollectionAttributeValue('replace_link_with_first_in_nav')) {
				$subPage = $_c->getFirstChild();
				if ($subPage instanceof Page) {
					$pageLink = $nh->getLinkToCollection($subPage);
				}
			}
			
			if (!$pageLink) {
				$pageLink = $ni->getURL();
			}
			
			$navItemClasses = array();
			
			        $navItemClasses[] = 'nav-item-'.$_c->getCollectionID();
			
			        //if it's the first li in this ul, we add the class nav-first
			        if($firstNavLi) {
			           $navItemClasses[] = 'nav-first';
			           $firstNavLi = false;
			        }
			
			        //If a custom attribute with the handle nav_item_class has been defined for this nav item
			        if($navItemClass = $_c->getCollectionAttributeValue('nav_item_class')) {
			           $navItemClasses[] = $navItemClass;
			        }
			
			        //Add nav-path-selected and nav-selected
			        if ($c->getCollectionID() == $_c->getCollectionID()) {
			           $navItemClasses[] = 'nav-selected';
			           $navItemClasses[] = 'nav-path-selected';
			        } else if ( in_array($_c->getCollectionID(),$selectedPathCIDs) && ($_c->getCollectionID() != HOME_CID) ) {
			           $navItemClasses[] = 'nav-path-selected';
			        }
			
			        $navItemClassStr = implode(" ", $navItemClasses);
			        echo('<li class="'. $navItemClassStr .'"><a class="'. $navItemClassStr .'" href="' . $pageLink . '" ' . $target . '>' . $ni->getName() . '</a>');
			
			        $lastLevel = $thisLevel;
			        $i++;
			
			
			
			
		}
	}	
	$thisLevel = 0;
	if ($containsPages) {
		for ($i = $thisLevel; $i <= $lastLevel; $i++) {
			echo("</li></ul>");
		}
		
	}
	
?>
<script>

$(document).ready(function(){



$(function() {
                $('.tooglenav').click(function(){
                var winH = $(window).height();
                var winW = $(window).width();
                //$('.nav').css('top',  winH/2-$('.nav').height()/2);
                $('.nav').css('left', winW/2-$('.nav').width()/2);
                
                    $('.overlay').fadeIn('fast',function(){
                        $('.nav').animate({'top':'10%'},500);
                         $('.box-close').animate({'top':'1%'},500);
                    });
                });
                $('.box-close').click(function(){
                    $('.nav').animate({'top':'-1200px'},500,function(){
                     $('.box-close').animate({'top':'-2400px'},500);
                        $('.overlay').fadeOut('fast');
                    });
                });

            });



  });
</script>