function general_admin_menus() {
      add_menu_page('Testimonial', 'Testimonial', 8, 'testimonial', 'Testimonial_settings','', 66); 
      add_submenu_page('testimonials','testimonials', 'testimonials', 8,'testimonial_form', 'testimonial_form');
      add_submenu_page('testimonials','testimonials', 'testimonials', 8,'testimonial_edit', 'testimonial_edit');
       add_menu_page('list pagination', 'Pagination', 8, 'pagination', 'pagination_settings','', 366); 

    }
add_action("admin_menu", "general_admin_menus");

 function testimonial_settings(){
        require_once ( get_stylesheet_directory() . '/admin/testimonial/testimonial.php');  
    }
    function testimonial_form(){
        require_once ( get_stylesheet_directory() . '/admin/testimonial/testimonial_form.php');  
    }
    function testimonial_edit(){
        require_once ( get_stylesheet_directory() . '/admin/testimonial/testimonial_edit.php');  
    }
    function pagination_settings(){
        require_once ( get_stylesheet_directory() . '/admin/testimonial/testimonail_pagination.php');  
    } 
   
   function load_admin_things() {
        wp_enqueue_media();
        wp_enqueue_script('general-admin');
        wp_enqueue_script('media-upload');
        wp_enqueue_script('thickbox');
        wp_enqueue_style('thickbox');
    }
    add_action( 'admin_enqueue_scripts', 'load_admin_things' );
    
    
    
function search_ajax() {
    if ( isset($_REQUEST) ) {
        $dirName = dirname(__FILE__);
        require_once ("$dirName/admin/testimonial/ajax/search_ajax.php"); 
    }
    die();
}
add_action( 'wp_ajax_search_ajax', 'search_ajax');
add_action( 'wp_ajax_nopriv_search_ajax', 'search_ajax');

// For search on key (auto suggestion)

function livesearch_ajax() {
    if ( isset($_REQUEST) ) {
        $dirName = dirname(__FILE__);
        require_once ("$dirName/admin/testimonial/ajax/livesearch_ajax.php"); 
    }
    die();
}
add_action( 'wp_ajax_livesearch_ajax', 'livesearch_ajax');
add_action( 'wp_ajax_nopriv_livesearch_ajax', 'livesearch_ajax');
