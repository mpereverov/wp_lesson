<?php
/**
 * _tk Theme Customizer
 *
 * @package _tk
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function _tk_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';
}
add_action( 'customize_register', '_tk_customize_register' );

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function _tk_customize_preview_js() {
	wp_enqueue_script( '_tk_customizer', get_template_directory_uri() . '/includes/js/customizer.js', array( 'customize-preview' ), '20130508', true );
}
add_action( 'customize_preview_init', '_tk_customize_preview_js' );

/**
 * Добавляет секции, параметры и элементы управления (контролы) на страницу настройки темы
 */
add_action('customize_register', function($customizer){
    $customizer->add_section(
        'phone',
        array(
            'title' => 'Телефон',
            'priority' =>200,
        )
    );

    $customizer->add_setting(
    'phone_number',
    array('default' => '+380936838500')
);
   $customizer->add_control(
    'phone_number',
    array(
        'label' => 'Номер телефона',
        'section' => 'phone',
        'type' => 'text',
    )
); 
});