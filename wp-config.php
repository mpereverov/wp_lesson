<?php
/**
 * Основные параметры WordPress.
 *
 * Этот файл содержит следующие параметры: настройки MySQL, префикс таблиц,
 * секретные ключи и ABSPATH. Дополнительную информацию можно найти на странице
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Кодекса. Настройки MySQL можно узнать у хостинг-провайдера.
 *
 * Этот файл используется скриптом для создания wp-config.php в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать этот файл
 * с именем "wp-config.php" и заполнить значения вручную.
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'clientpay');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'i[66]YS-FDg$}Dkc!Qub1/8df%8xBc+I$*1wX4^nG^;4~|=d-atp)J|fXB!qAZjL');
define('SECURE_AUTH_KEY',  'UD3*st|1Y,SG?+nGVCcY5SYb`sm{zuYiSft=*-g0*+pG^Qu<TV_U9/([d^lv{T%7');
define('LOGGED_IN_KEY',    '8!O8f|dqS~-%`n[Y&G;PpN4Zt,^}r^PRb6s[mO}#LfHjg8w) @TN3GQhIQ5Uy-8H');
define('NONCE_KEY',        '>ted`)LrK7eO2Io<Sw;FK~C`jL{rd -w&2Fi;3*%H75=;.E-(/U`#3n>p+9k45*F');
define('AUTH_SALT',        'lmO2:pt-U-h!].aqmQ;n3&EzX$b#PB!^|9v~h.Ak`,^v7>QsHnKcB3+*;i1ct56z');
define('SECURE_AUTH_SALT', 'FFNT/L3TuLE$pGO|h:~_+lE7wM5!-kkMdeMV.Xvrvu-8?zE_*ztpuE%lWR5I)XLY');
define('LOGGED_IN_SALT',   'ZXgu<O0-J)w^LjF^t+M@FqkN#(PvI8+Pd3JUQP/do>1xqi^DJ=SH/a{tt8tz}cns');
define('NONCE_SALT',       'x|AV`P6lou6[?7<jR[?AD1TLo=+W 9cd6[4-Fh``2b%OXs.oaP5/pW!hV=RM|o:O');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
