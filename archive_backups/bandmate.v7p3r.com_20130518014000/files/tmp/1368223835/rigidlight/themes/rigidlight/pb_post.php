<?php   
$html = Loader::helper('html');
$this->addHeaderItem($html->css('page_types/pb_post.css', 'problog'));
Loader::model('blogify','problog');
$blog_settings = blogify::getBlogSettings();
extract($blog_settings);
?>
<?php   $this->inc('inc/top.php'); ?>

<body class="subpage rightColumn" id="pageid<?php  print $c->getCollectionID(); ?>">

	<?php   $this->inc('inc/header.php'); ?>
           
    <section id="mainShell">
    
    	<div id="headerShadow"></div>
        
        <div class="container">
                            
            <article id="main">
            
                <?php   
					$a = new Area('Main');
					$a->display($c);
				?>
				<?php   
				if($trackback>0){
					$a = new Area('Blog Post Trackback');
					$a->display($c);
				}
				?>
				<?php   
				if($comments>0){
					if($disqus){
						Loader::PackageElement('disqus','problog',array('discus'=>$disqus));
					}else{
						$a = new Area('Blog Post More');
						$a->display($c);
					}
				}
				?>
				<?php   
					$a = new Area('Blog Post Footer');
					$a->display($c);
				?>
                        
            </article><!-- #main -->
            
            <section id="sidebar">
            
                <?php  $a = new Area('Sidebar'); $a->display($c); ?>
            
            </section><!-- #sidebar -->
            
            <div class="clear"></div>
            
            <section id="ctaShell">
            
                <?php  $a = new Area('CTA Area'); $a->display($c); ?>
            
            </section><!-- #ctaShell -->
        
        </div><!-- .container -->
    
    </section><!-- #mainShell -->
    
    <?php   $this->inc('inc/footer.php'); ?>