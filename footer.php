<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the id=main div and all content after
 *
 * @package _tk
 */
?>
			</div><!-- close .*-inner (main-content or sidebar, depending if sidebar is used) -->
		</div><!-- close .row -->
	</div><!-- close .container -->
</div><!-- close .main-content -->

<footer id="colophon" class="site-footer" role="contentinfo">
<?php // substitute the class "container-fluid" below if you want a wider content area ?>

		<?php if ( is_active_sidebar( 'footer-right' ) ) : ?>
		   <div class="container">
		<div class="row">
		    <div class="site-footer-inner col-sm-3" role="complementary">
		        <ul>
		            <?php dynamic_sidebar( 'footer-right' ); ?>
		        </ul>
		    </div>
		   </div>
		   </div>
		<?php endif; ?>

		
			<div class="container">
			<div class="row">
			<?php
				wp_nav_menu ( array(
				'menu_class' => 'nav navbar-nav',
				'theme_location' => 'footer-main-menu',
				'container' => 'div',
				'container_class' => 'col-sm-12',
				));
			?>
			</div>
			</div>

	<div class="container">
		<div class="row">
			<div class="site-footer-inner col-sm-12">

				<div class="site-info">
					<?php do_action( '_tk_credits' ); ?>
					<a href="http://wordpress.org/" title="<?php esc_attr_e( 'A Semantic Personal Publishing Platform', '_tk' ); ?>" rel="generator"><?php printf( __( 'Proudly powered by %s', '_tk' ), 'WordPress' ); ?></a>
					<span class="sep"> | </span>
                    <a class="credits" href="http://themekraft.com/" target="_blank" title="Themes and Plugins developed by Themekraft" alt="Themes and Plugins developed by Themekraft"><?php _e('Themes and Plugins developed by Themekraft.','_tk') ?> </a>
				</div><!-- close .site-info -->

			</div>
		</div>
	</div><!-- close .container -->
</footer><!-- close #colophon -->

<?php wp_footer(); ?>

</body>
</html>
