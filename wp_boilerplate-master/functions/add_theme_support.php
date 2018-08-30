<?php 

/**
 * Adds Theme Support
 * Adds menus and theme support initialization
 *
 * @return  void
 * @since   1.0
 * @version 1.2
 * @see     https://codex.wordpress.org/Function_Reference/register_nav_menus
 * @see     https://developer.wordpress.org/reference/functions/add_theme_support/
 * @see     https://codex.wordpress.org/Plugin_API/Action_Reference/after_setup_theme
 */
function dl_theme_setup() {

	add_theme_support( 'title-tag' );
	add_theme_support( 'post-thumbnails' );
	add_theme_support( 'customize-selective-refresh-widgets' );
	add_theme_support( 'automatic-feed-links' );

	/* Woocommerce */
	add_theme_support( 'woocommerce' );
	add_theme_support( 'wc-product-gallery-zoom' );
	add_theme_support( 'wc-product-gallery-lightbox' );
	add_theme_support( 'wc-product-gallery-slider' );

	add_theme_support(
		'custom-logo',
		array(
			'size'	=> 'custom_logo'
		)
	);

	register_nav_menus(
		array(
			'header-menu'	=> __( 'Header Menu' ),
			'footer-menu'	=> __( 'Footer Menu' ),
		)
	);

}

add_action( 'after_setup_theme', 'dl_theme_setup' );
