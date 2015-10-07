<?php
/*
Template Name: Обзоры
*/

get_header(); ?>

	<?php $args = array(
                   'post_type' => 'reviews',
                   'publish' => true,
                   'paged' => get_query_var('paged'),
               );
            
            query_posts($args); ?>

	<?php while ( have_posts() ) : the_post(); ?>

		<?php get_template_part( 'content', 'reviews' ); ?>

		<?php
			// If comments are open or we have at least one comment, load up the comment template
			if ( comments_open() || '0' != get_comments_number() )
				comments_template();
		?>

	<?php endwhile; // end of the loop. ?>

<?php get_footer(); ?>