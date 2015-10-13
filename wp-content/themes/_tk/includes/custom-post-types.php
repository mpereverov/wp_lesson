<?php
if ( ! function_exists( 'create_helps_post_type' ) ) {
/* Создаем custom post type */
    function create_helps_post_type() {
            register_post_type ( 'help_types', 
        array ( 
            'labels'             => array ( 
            'name'               => __( 'Преимущества' ), 
            'singular_name'      => __( 'Преимущества' ), 
            'add_new'            => __('Добавить'), 
            'add_new_item'       => __('Добавить новое'), 
            'menu_name'          => __('Преимущества') ),
             
            'public'             => true, 
            'menu_position'      => 5, 
            'rewrite'            => array ( 'slug' => 'help_types' ), 
            'supports'           => array ('title', 'editor', 'thumbnail', 'revisions') 
        ) 
    );
}

 // Не рабочий код
    //     $labels = array (
    //         'name'                => __( 'Help Types' ),
    //         'singular_name'       => __( 'Helps Type' ),
    //         'all_items'           => __( 'All Types' ),
    //         'view_item'           => __( 'View'),
    //     );
    //     $args = array (
    //         'labels'              => '$labels',
    //         'supports'            => array ( 'title', 'editor', 'excerpt', ),
    //         'taxonomies'          => array  ( 'help_types_tax' ),
    //         'register_meta_box_cb' => array( 'help_types_metabox' ), 
    //         'public'              => true,
    //         'menu_position'       => 5,
    //         'rewrite'			  => array ('slug' => 'helps'),
    //         'supports'            => array ('title', 'editor', 'thumbnail', 'revisions')
    //     );
    // register_post_type( 'help_types', $args );

    // }
    add_action( 'init', 'create_helps_post_type' );
}

/* Добавление таксономии */
if ( ! function_exists( 'help_types_tax' ) ) {
 
function help_types_tax() {
    $labels = array (
        'name' => __( 'Преимущества', 'Преимущества' ),
        'singular_name' => __( 'Преимущества', 'Преимущества' ),
        'all_items' => __( 'Все преимущества' ),
        'add_new_item' => __( 'Добавить новое' ),
        'menu_name' => __( 'Преимущества' ),
    );
     
    // Регистрация таксономии
      register_taxonomy( 'benefits', array ('help_types'), 
        array (
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'query_var' => true,
        'rewrite' => array ( 'slug' => 'benefits' ),
        )
      );
}

    // function help_types_tax() {
    //     $labels = array (
    //         'name'                       => __( 'Тип помощи' ),
    //         'singular_name'              => __( 'Тип помощи' ),
    //         'menu_name'                  => __( 'Тип помощи' ),
    //         'all_items'                  => __( 'All Types' ),
    //     );
    //     $args = array (
    //         'labels'                     => $labels,
    //         'hierarchical'               => true,
    //         'public'                     => true,
    //     );
    // register_taxonomy( 'help_types_tax', $args );
    // }
    add_action( 'init', 'help_types_tax', 0 );
}



/* Добавление metabox */
function helps_type_meta_box() {  
    add_meta_box(  
        'helps_type_meta_box', // Идентификатор(id)
        'Краткое описание', // Заголовок области с мета-полями(title)
        'show_helps_type_meta_box', // Вызов(callback)
        'help_types', // Где будет отображаться наше поле, в нашем случае в разделе Красная Книга
        'normal',
        'high'
    );
}  
add_action('add_meta_boxes', 'helps_type_meta_box');

/* Создание полей metabox */
$helps_type_meta_fields = array(
    array(
        'label' => 'Текстовое поле',  
        'desc'  => 'Описание',  
        'id'    => 'description', 
        'type'  => 'textarea'
    )
);

/* Вывод metabox */
function show_helps_type_meta_box() {  
global $helps_type_meta_fields; // Обозначим наш массив с полями глобальным
global $post;  // Глобальный $post для получения id создаваемого/редактируемого поста
echo '<input type="hidden" name="custom_meta_box_nonce" value="'.wp_create_nonce(basename(__FILE__)).'" />';  
 
    echo '<table class="form-table">';  
    foreach ($helps_type_meta_fields as $field) {  
        // Получаем значение если оно есть для этого поля
        $meta = get_post_meta($post->ID, $field['id'], true);  

        echo '<tr>
                <th><label for="'.$field['id'].'">'.$field['label'].'</label></th>
                <td>';  
                switch($field['type']) {  
 // Текстовое поле
 case 'text':  
     echo '<input type="text" name="'.$field['id'].'" id="'.$field['id'].'" value="'.$meta.'" size="30" />
         <br /><span class="description">'.$field['desc'].'</span>';  
 break;
 // Список
 case 'select':  
     echo '<select name="'.$field['id'].'" id="'.$field['id'].'">';  
     foreach ($field['options'] as $option) {  
         echo '<option', $meta == $option['value'] ? ' selected="selected"' : '', ' value="'.$option['value'].'">'.$option['label'].'</option>';  
     }  
     echo '</select><br /><span class="description">'.$field['desc'].'</span>';  
 break;
 case 'textarea':  
    echo '<textarea name="'.$field['id'].'" id="'.$field['id'].'" cols="60" rows="4">'.$meta.'</textarea> 
        <br /><span class="description">'.$field['desc'].'</span>';  
break;
                }
        echo '</td></tr>';  
    }  
    echo '</table>';
}


/* Сохранение metabox */
function save_help_types_meta_fields($post_id) {  
    global $helps_type_meta_fields;  // Массив с нашими полями
 
    // проверяем наш проверочный код
    if (!wp_verify_nonce($_POST['custom_meta_box_nonce'], basename(__FILE__)))  
        return $post_id;  
    // Проверяем авто-сохранение
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE)  
        return $post_id;  
    // Проверяем права доступа  
    if ('helps_type' == $_POST['post_type']) {  
        if (!current_user_can('edit_page', $post_id))  
            return $post_id;  
        } elseif (!current_user_can('edit_post', $post_id)) {  
            return $post_id;  
    }

	foreach ($helps_type_meta_fields as $field) {  
        $old = get_post_meta($post_id, $field['id'], true); // Получаем старые данные (если они есть), для сверки
        $new = $_POST[$field['id']];  
        if ($new && $new != $old) {  // Если данные новые
            update_post_meta($post_id, $field['id'], $new); // Обновляем данные
        } elseif ('' == $new && $old) {  
            delete_post_meta($post_id, $field['id'], $old); // Если данных нету, удаляем мету.
        }  
    } // end foreach
}
add_action('save_post', 'save_help_types_meta_fields');



?>

