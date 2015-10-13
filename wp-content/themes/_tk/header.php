<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package _tk
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title><?php wp_title( '|', true, 'right' ); ?></title>

	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

	<?php wp_head(); ?>
</head>

<body <?php body_class(container); ?>>
	
<!-- Top -->
<div class="container">
  <div id="top" class="row">
    <div class="container">
	    <div class="nav-logo col-md-3">
	    	<?php $header_image = get_header_image();
					if ( ! empty( $header_image ) ) { ?>
						<a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home">
							<img src="<?php header_image(); ?>" width="<?php echo get_custom_header()->width; ?>" height="<?php echo get_custom_header()->height; ?>" alt="">
						</a>
			<?php } // end if ( ! empty( $header_image ) ) ?>
	    </div>
	    
	    <div class="nav-menu col-md-7">
	    						<!-- The WordPress Menu goes here -->
						<?php wp_nav_menu(
							array(
								'theme_location' 	=> 'primary',
								'depth'             => 2,
								'container'         => 'div',
								'container_class'   => 'collapse navbar-collapse',
								'menu_class' 		=> 'nav navbar-nav',
								'menu_id'			=> 'main-menu',
								'before'			=> '<div class="nav-li">',
								'after'				=> '</div>'
							)
						); ?>

	    </div>
	    <div class="nav-tel col-md-2"><i class="fa fa-phone fa-lg"></i><span>
<?php echo get_theme_mod('phone_number', '+380123456789'); ?></span></div>
  	</div>
  </div>
</div>
<!-- End of Top -->


<!-- Header -->
<div class="container">
  <div id="header" class="row">
    <div class="col-md-6"></div>
    <div class="col-md-6"></div>
  </div>
</div>
<!-- End of Header -->



<div class="main-content">
<?php // substitute the class "container-fluid" below if you want a wider content area ?>
	<div class="container">
		<div class="row">
			<div id="content" class="main-content-inner col-sm-12 col-md-12 col-lg-12 ">

