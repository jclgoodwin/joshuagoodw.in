<?php

$query = new WP_Query( [ 'posts_per_page' => -1, 'post_status' => [ 'publish', 'draft' ] ] );

while ( $query->have_posts() ) {
    $query->the_post();

    $output = "---\nlayout: post\ntitle: " . get_the_title() . "\n";

    if ( get_post_status() !== 'publish' ) {
        $output .= "publshed: false\n";
    }

    $output .= "---\n\n";
    $output .= apply_filters( 'the_content', get_the_content() );

    global $post;
    $file_name = get_the_date( 'Y-m-d-' ) . $post->post_name . '.html';

    $file = fopen( $file_name, 'w' );
    fwrite( $file, $output );
    fclose( $file );
}

