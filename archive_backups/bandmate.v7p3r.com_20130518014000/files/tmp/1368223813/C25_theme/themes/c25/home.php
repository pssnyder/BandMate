<?php  defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<?php  $this->inc('elements/header.php'); ?>
	<div id="page">
		<!-- start content -->
		<div id="content">
			<div class="home_cell"><?php 
				$ah = new Area('Main');
				$ah->display($c);
			?>
			</div>
			<div class="home_cell"><?php 
				$ah = new Area('Main2');
				$ah->display($c);
			?>
			</div>
			<div class="home_cell"><?php 
				$ah = new Area('Main3');
				$ah->display($c);
			?>
			</div>
			<div class="home_cell"><?php 
				$ah = new Area('Main4');
				$ah->display($c);
			?>
			</div>
			<div class="home_cell"><?php 
				$ah = new Area('Main5');
				$ah->display($c);
			?>
			</div>
			<div class="home_cell"><?php 
				$ah = new Area('Main6');
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