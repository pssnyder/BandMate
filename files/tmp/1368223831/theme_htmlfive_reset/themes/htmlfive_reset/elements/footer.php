<?php     defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
    <footer>
    
		<?php        
            $a = new Area('Footer Content');
            $a->display($c); // footer editable region
        ?> 
    
            <p class="footer-sign-in">
            <?php   
            $u = new User();
            if ($u->isRegistered()) { ?>
                <?php    
                if (Config::get("ENABLE_USER_PROFILES")) {
                    $userName = '<a href="' . $this->url('/profile') . '">' . $u->getUserName() . '</a>';
                } else {
                    $userName = $u->getUserName();
                }
                ?>
                <span class="sign-in"><?php   echo t('Currently logged in as <b>%s</b>.', $userName)?> <a href="<?php   echo $this->url('/login', 'logout')?>"><?php   echo t('Sign Out')?></a></span>
            <?php    } else { ?>
                <span class="sign-in"><a href="<?php   echo $this->url('/login')?>"><?php   echo t('Sign In to Edit this Site')?></a></span>
            <?php    } ?>
            </p>
            
            <div class="clear"></div>
            <p class="footer-copyright">&copy;<?php   echo date('Y')?> <?php   echo SITE?>.</p>
            <p class="footer-tag-line"><?php  echo t('Built with <a href="http://www.concrete5.org/" target="_blank">concrete5 - an open source CMS')?></a></p>
    
    </footer> <!-- close footer -->
</div> <!-- close .wrapper -->

<!-- this is where we put our custom functions -->
<script src="<?php     echo $this->getThemePath(); ?>/_/js/functions.js"></script>

<?php     Loader::element('footer_required'); // Adds Google Analytics & gives the opportunity to output items into the footer ?>

</body>
</html>