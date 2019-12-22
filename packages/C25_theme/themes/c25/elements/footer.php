<?php   defined('C5_EXECUTE') or die(_("Access Denied.")); ?>

	<!-- footer starts here -->	
	<div id="footer-outer">
	<div id="footer">
			<div class="footer_col1"><?php 
				$ah = new Area('Footer Column One');
				$ah->display($c);
			?>
			</div>
			<div class="footer_col2"><?php 
				$ah = new Area('Footer Column Two');
				$ah->display($c);
			?>
			</div>
		
				<div id="footer-bottom">
				<p class="bottom-left">			
				&copy; 2007-<?php  echo date('Y')?> <a href="<?php  echo DIR_REL?>/"><?php  echo SITE?></a>
				</p>	

				<!--<p class="bottom-right" >
				 <a href="<?php  echo DIR_REL?>/">Home</a> |
				<a href="<?php  echo $this->url('/login')?>"><?php  echo t('Admin')?></a> 
				</p>  -->
	</div>	
	</div>
	</div>
	<!-- footer ends here -->
        
	<!-- page ends here -->
</body>
<?php   require(DIR_FILES_ELEMENTS_CORE . '/footer_required.php'); ?> 
</html>
