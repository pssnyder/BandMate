<?php   
defined('C5_EXECUTE') or die("Access Denied.");
$rssUrl = $showRss ? $controller->getRssUrl($b) : '';
$th = Loader::helper('text');
$ih = Loader::helper('image'); 
$page = Page::getCurrentPage();
$categories = $page->getCollectionAttributeValue('filterable_categories');


?>
<div class="filterable">
	
	<ul id="portfolio-filter">
	

	<li><a href="#all" title="">All</a></li>
	
	<?php   foreach($categories as $cat):?>
	<?php       $mynewurl=strtolower(str_replace(" ","-",$cat));?>	
		<li>
	
		<a href="#<?php  echo  $mynewurl ?>" title="" rel="<?php  echo  $mynewurl ?>">
		<?php  echo  $cat ?>
		</a>
		
		</li>
	<?php   endforeach;?>
 
</ul>
	 
	 <ul id="portfolio-list">

<?php    foreach ($pages as $page):

		// Prepare data for each page being listed...
		$title = $th->entities($page->getCollectionName());
		$url = $nh->getLinkToCollection($page);
		$target = ($page->getCollectionPointerExternalLink() != '' && $page->openCollectionPointerExternalLinkInNewWindow()) ? '_blank' : $page->getAttribute('nav_target');
		$target = empty($target) ? '_self' : $target;
		$description = $page->getCollectionDescription();
		$categories = $page->getCollectionAttributeValue('filterable_categories');
		$description = $controller->truncateSummaries ? $th->shorten($description, $controller->truncateChars) : $description;
		$description = $th->entities($description);	
		$img= $img = $page->getAttribute('filterable_image');
		$thumb = $ih->getThumbnail($img, 300, 9999, false);
		
		?>
		
		
		
		<li class="
		<?php   foreach($categories as $cat):?>
		
		<?php       $mynewurl=strtolower(str_replace(" ","-",$cat));?>
		
		<?php   echo $mynewurl;?>
		
		<?php   endforeach;?>
		">
		<a href="<?php   echo $url;?>" title=""><img src="<?php   echo $thumb->src;?>" alt=""></a>
			<p>
				<?php   echo $title;?>
			</p>
		</li>
		
		
		
		
		
<?php    endforeach; ?>
 
</ul>
</div>