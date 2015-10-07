<?php
/**
 * Custom MetaBoxes
 * includes in function.php
 */


	//Добавление мета бокса
function review_meta_box() {  
    add_meta_box(  
        'review_meta_box', // id
        ' ', // title
        'show_review_metabox', // callback
        'reviews',
        'normal',
        'high'
    );
}  
add_action('add_meta_boxes', 'review_meta_box');

// Создание дополнительных полей
$review_meta_fields = array(  
    array(  
        'label' => 'Страна',  
        'desc'  => '',  
        'id'    => 'review_country',
        'type'  => 'text'
    ),  
    array(  
        'label' => 'Режисер',  
        'desc'  => '',  
        'id'    => 'review_director',
        'type'  => 'text'
    ),  
    array(  
        'label' => 'Год выпуска',  
        'desc'  => '',  
        'id'    => 'review_date',
        'type'  => 'date'
    )
);



// Вызов метаполей 
function show_review_metabox() {  
global $review_meta_fields;
global $post;


// Верификация
echo '<input type="hidden" name="custom_meta_box_nonce" value="'.wp_create_nonce(basename(__FILE__)).'" />';  
 
    echo '<table class="form-table">';  
    foreach ($review_meta_fields as $field) {
        $meta = get_post_meta($post->ID, $field['id'], true);  
        echo '<tr> 
                <th><label for="'.$field['id'].'">'.$field['label'].'</label></th> 
                <td>';  
                switch($field['type']) {  
					case 'text':  
					    echo '<input type="text" name="'.$field['id'].'" id="'.$field['id'].'" value="'.$meta.'" size="30" /> 
					        <br /><span class="title">'.$field['desc'].'</span>';  
					break;
                    case 'text':  
                        echo '<input type="text" name="'.$field['id'].'" id="'.$field['id'].'" value="'.$meta.'" size="30" /> 
                            <br /><span class="title">'.$field['desc'].'</span>';  
                    break;
                    case 'date':
                        echo '<input type="text" name="'.$field['id'].'" id="'.$field['id'].'" value="'.$meta.'" ';
                        

if(is_admin()) {
    wp_enqueue_script('jquery-ui-datepicker','','','',true);
    wp_enqueue_style('jquery-ui-custom', get_template_directory_uri().'/includes/css/jquery-ui.css');
}
?> 
                        <script type="text/javascript">
                                    jQuery(document).ready jQuery(function() {
                                    jQuery(".datepicker").datepicker()
                                    })
                            </script>
                        <?php
                    break;
                }
        echo '</td></tr>';  
    }  
    echo '</table>'; 
}




//Сохраняем введенные данные
function save_review_meta_fields($post_id) {  
    global $review_meta_fields;
 
    if (!wp_verify_nonce($_POST['custom_meta_box_nonce'], basename(__FILE__)))   
        return $post_id;  
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE)  
        return $post_id;  
    if ('page' == $_POST['post_type']) {  
        if (!current_user_can('edit_page', $post_id))  
            return $post_id;  
        } elseif (!current_user_can('edit_post', $post_id)) {  
            return $post_id;  
    }  
 
    foreach ($review_meta_fields as $field) {  
        $old = get_post_meta($post_id, $field['id'], true);
        $new = $_POST[$field['id']];  
        if ($new && $new != $old) {
            update_post_meta($post_id, $field['id'], $new);
        } elseif ('' == $new && $old) {  
            delete_post_meta($post_id, $field['id'], $old);
        }  
    } 
}  
add_action('save_post', 'save_review_meta_fields');

?>