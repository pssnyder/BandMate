<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); 
$pkg = Package::getByHandle('surf_blue'); ?>
<!-- BEGIN FOOTER AREA -->
<br class="clear" />
	<div class="footer-wrap">
		<div class="one-third column footer">
			<?php   $a = new GlobalArea('Footer Left'); $a->display($c); ?>
		</div>
		<div class="one-third column footer">
			<?php   $a = new GlobalArea('Footer Middle'); $a->display($c); ?>
		</div>
		<div class="one-third column footer">
			<?php   $a = new GlobalArea('Footer Right'); $a->display($c); ?>
			<p>&copy; <?php   echo date('Y')?> <?php   echo SITE?>.&nbsp;<?php   echo t('All rights reserved.')?>
			<?php  $u = new User();
			if ($u->isRegistered()) { ?>
				<?php    
				if (Config::get("ENABLE_USER_PROFILES")) {
					$userName = '<a href="' . $this->url('/profile') . '">' . $u->getUserName() . '</a>';
				} else {
					$userName = $u->getUserName();
				}
				?>
				<br /><?php   echo t('Logged in as <b>%s</b>.', $userName)?>&nbsp;<a href="<?php   echo $this->url('/login', 'logout')?>"><?php   echo t('Sign Out')?></a>
			<?php    } else { ?>
				<a href="<?php   echo $this->url('/login')?>"><?php   echo t('Sign In')?></a></p>
			<?php    } ?>
			</p>
		</div>
		<br class="clear" />
	</div>
<!-- End Footer -->
</div><!-- End container --> 
<script>
	//$(".columns").fitVids();
	$(".container").fitVids();
</script>
<?php   Loader::element('footer_required'); ?>
</body>
</html>