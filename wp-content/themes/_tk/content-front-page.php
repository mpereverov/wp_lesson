<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package _tk
 */
?>
<div class="row">
	<div class="col-md-6 col-md-offset-3 content-top-title">
		<span>Some of our <b>integraion partners</b></span>
	</div>
</div>

<div class="row content-top">
    <div class="col-md-3"><span><b>ProLaw</b></span></div>
    <div class="col-md-3"><span>Enterprise</span></div>
    <div class="col-md-3"><span><b>3E</b></span></div>
    <div class="col-md-3"><span>eBILLNGHUB</span></div>
</div>





<div class="row content-mid">
	<div class="row content-mid-title">
	    <div class="tax-title col-md-12">
            <?php
				$tax = get_term_by( 'slug', 'benefits', 'benefits' );
                $tax_name = $tax->name; 
            ?>
	      <span><?php echo $tax_name; ?></span>
		</div>
	</div>
    
    	<?php
            $query = new WP_Query( array(
            'post_type' => 'help_types',
            'meta_query' => array('key' => 'description')
            ) );

			while ( $query->have_posts() ) : $query->the_post();
                echo '<div class="col-md-4">';
        ?>
        		<span><div class="cont-img">
		        		<a href="<?php echo get_permalink($post->ID) ?>">
		        			<?php echo get_the_post_thumbnail($page->ID, array(85,85) ); ?>
		        		</a>
        		 	 </div>
        		 </span>

                <span class="cont-title">
                	<a href="<?php echo get_permalink($post->ID) ?>"><?php the_title(); ?></a>
                </span></br>

                <span class="cont"> <?php echo get_post_meta($post->ID, 'description', true); ?></span>
                <?php echo '</div>';
            endwhile;
            wp_reset_postdata();
                ?> 
</div>
