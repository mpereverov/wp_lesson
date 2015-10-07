<?php
/**
 * Custom Taxonomies
 * includes in function.php
 */


//Функция создания таксономии Жанры
function create_topics_hierarchical_taxonomy() {
    $labels = array(
        'name' => __( 'Жанры', 'Жанры' ),
        'singular_name' => __( 'Жанр', 'Жанр' ),
        'search_items' =>  __( 'Поиск Жанров' ),
        'all_items' => __( 'Все жанры' ),
        'parent_item' => __( 'Родительский Жанр' ),
        'parent_item_colon' => __( 'Родительский Жанр:' ),
        'edit_item' => __( 'Редактировать' ),
        'update_item' => __( 'Обновить' ),
        'add_new_item' => __( 'Добавить новый' ),
        'new_item_name' => __( 'Новое имя' ),
        'menu_name' => __( 'Жанры' ),
    );
     
    // Регистрация таксономии
      register_taxonomy('topics',array('reviews'), array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => 'genre' ),
      ));
}

add_action( 'init', 'create_topics_hierarchical_taxonomy', 0 );

?>