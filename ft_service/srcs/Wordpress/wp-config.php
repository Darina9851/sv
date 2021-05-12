<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', '1111' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql-service' );

define('WP_HOME', 'http://192.168.99.174:5050');

define('WP_SITEURL', 'http://192.168.99.174:5050');

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'JnC97OnK_mnG}RLI.wXrC:&P<6(*%>$k|6!KT)0Sc{TB:UTX&Sw++_>{>I3Q$`/q');
define('SECURE_AUTH_KEY',  'pvs->aIVUfqhT,c8-+^EYR;U;UEiYV84nef&Km0kDNYd?[D1u]yp`$|>G-iV/ZAb');
define('LOGGED_IN_KEY',    'tXK#Nd%o:l}v0-kkXL-?T<.][B yt6Ui1V(Gu@7>iIwikE*E{h *4,@|QL54x)ZW');
define('NONCE_KEY',        '<6tO`rp![3[Kvo{7k~%?Y7Zah+-Y.`Zc27G k~_Di(3Zr1qbj8JRg3[wg8A-7];#');
define('AUTH_SALT',        '=fTH|<zwQA|y,Fsru/%2+?7P}4<J!9+qm$F-lw%8F}<}~b7@]|%,,=#/w#XcHdl[');
define('SECURE_AUTH_SALT', '-e.$?n9PN)eFH3yf3TQjSk1h?;Sb]4q#7G>q`rk[8iRJdxX|=E/^+dsCmd=t-.vT');
define('LOGGED_IN_SALT',   '5)nHQ4BEW+uJsa|B#G:HK9m.(W3i &F92kXR:/3EJJm:h`4[p|ly+RrRz|}1uoCV');
define('NONCE_SALT',       'a|@m>ZS;CdmFMZ>3{up-Qai4(6y]_V(5nuia*E(JHfp2D& OP7[3Fr+A+LwLsb_V');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';