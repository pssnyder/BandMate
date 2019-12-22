<?php     defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php'); // get header file ?>
</head>

<body>

<div class="wrapper"><!-- not needed? up to you: http://camendesign.com/code/developpeurs_sans_frontieres -->

    <a id="logo" href="<?php  echo DIR_REL?>"><?php  echo SITE ?></a>

	<header>
            <?php  $this->inc('elements/nav.php'); // get nav.php ?>
    </header>

    <article>
        <?php       
            $a = new Area('Main');
            $a->display($c); // main editable region
        ?>
    </article> <!-- close 1st article -->

    <aside>
        <?php       
            $a = new Area('Sidebar');
            $a->display($c); // sidebar editable region
        ?>
    </aside> <!-- close aside -->

<?php  $this->inc('elements/footer.php'); // get footer.php ?>