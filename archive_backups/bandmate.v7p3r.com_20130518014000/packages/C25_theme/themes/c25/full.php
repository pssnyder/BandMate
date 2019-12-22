<?php  defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<?php  $this->inc('elements/header.php'); ?>
	<div id="page">
		<!-- start content -->
		<div id="content">
			<div class="main2"><?php 
				$ah = new Area('Main');
				$ah->display($c);
			?>
			</div>
			
		</div>
		
		<!-- end content -->
		
		
	</div>
</div>
<!-- end page -->
<!-- start footer -->

<?php   $this->inc('elements/footer.php'); ?>