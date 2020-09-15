<?php
/**
 * Komentar:
 * File ini mendefinisikan fungsi-fungsi global.
 * [1]Terlebih dulu apakah fungsi itu ada? jika tidak ada maka langsung dibuat, jika ada maka tidak dibuat.
 */


/**
 * CodeIgniter
 *
 * An open source application development framework for PHP
 *
 * This content is released under the MIT License (MIT)
 *
 * Copyright (c) 2014 - 2018, British Columbia Institute of Technology
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 * @package	CodeIgniter
 * @author	EllisLab Dev Team
 * @copyright	Copyright (c) 2008 - 2014, EllisLab, Inc. (https://ellislab.com/)
 * @copyright	Copyright (c) 2014 - 2018, British Columbia Institute of Technology (http://bcit.ca/)
 * @license	http://opensource.org/licenses/MIT	MIT License
 * @link	https://codeigniter.com
 * @since	Version 1.0.0
 * @filesource
 */
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Common Functions
 *
 * Loads the base classes and executes the request.
 *
 * @package		CodeIgniter
 * @subpackage	CodeIgniter
 * @category	Common Functions
 * @author		EllisLab Dev Team
 * @link		https://codeigniter.com/user_guide/
 */

// ------------------------------------------------------------------------

if ( ! function_exists('is_php'))
{
	/**
	 * Determines if the current version of PHP is equal to or greater than the supplied value
	 * fungsi untuk cek versi php yang current lebih besar atau sama dari yang ditulis dalam $version
	 * @param	string
	 * @return	bool	TRUE if the current version is $version or higher
	 */
	function is_php($version)
	{
		static $_is_php; //static agara $_is_php tetap nilainya walaupun eksekusi fungsi selesai.
		$version = (string) $version;

		if ( ! isset($_is_php[$version])) //bagian ini menguji eksistensi $_is_php karena sebelumnya didefiniskan static sehingga bisa tetap ada walaupun fungsi selesai dieksekusi ditempat lain.
		{
			$_is_php[$version] = version_compare(PHP_VERSION, $version, '>=');
		}

		return $_is_php[$version];
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('is_really_writable'))
{
	/**
	 * Tests for file writability//OK
	 *
	 * is_writable() returns TRUE on Windows servers when you really can't write to
	 * the file, based on the read-only attribute. is_writable() is also unreliable
	 * on Unix servers if safe_mode is on.
	 *
	 * @link	https://bugs.php.net/bug.php?id=54709
	 * @param	string
	 * @return	bool
	 */
	function is_really_writable($file)
	{
		// If we're on a Unix server with safe_mode off we call is_writable
		// untuk menandai mengetahui bahwa kita berada di dalam OS Unix, cek DIRECTORY_SEPARATOR === '/'
		// jika versi php di Unix >= 5.4 maka setingan di php.ini untuk safe_mode adalah on
		// jika bukan maka secara default safe_mode adalah off, sehingga perlu dicek dengan (is_php('5.4') OR ! ini_get('safe_mode'))
		if (DIRECTORY_SEPARATOR === '/' && (is_php('5.4') OR ! ini_get('safe_mode')))
		{
			return is_writable($file);
		}

		/* For Windows servers and safe_mode "on" installations we'll actually
		 * write a file then read it. Bah...
		 */
		if (is_dir($file))
		{
			$file = rtrim($file, '/').'/'.md5(mt_rand()); //buat nama file sembarang untuk menguji apakah direktori di windows ($file) dalam mode baca-tulis atau tidak
			if (($fp = @fopen($file, 'ab')) === FALSE)//jika ternyata dalam mode bukan baca-tulis 
			{
				return FALSE;
			}

			fclose($fp);
			@chmod($file, 0777);
			@unlink($file);
			return TRUE;
		}
		elseif ( ! is_file($file) OR ($fp = @fopen($file, 'ab')) === FALSE) //jika ternyata bukan dalam mode baca-tulis atau nama file tidak standar
		{
			return FALSE;
		}

		fclose($fp);
		return TRUE;
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('load_class'))
{
	/**
	 * Class registry //Fungsi untuk mendaftarkan kelas, fungsi ini dinamakan me-load kelas, akan tetapi pada dasarnya hanya
	 * 
	 *
	 * This function acts as a singleton. If the requested class does not
	 * exist it is instantiated and set to a static variable. If it has
	 * previously been instantiated the variable is returned.
	 * 
	 * Arti: Jika kelas yang mau di-load tidak ada, maka variabel dinyatakan sebagai static, artinya bahwa dia tetap ada
	 * dan diharapkan nantinya bisa memberi nilai, ini karena definisi static ke variabel menyebabkan nilainya tetap ada walaupun 
	 * blok kode dan scope kode yang melahirkannya telah usai.
	 *
	 * @param	string	the class name being requested
	 * @param	string	the directory where the class should be found
	 * @param	mixed	an optional argument to pass to the class constructor
	 * @return	object
	 */
	function &load_class($class, $directory = 'libraries', $param = NULL)
	//Simbol & digunakan untuk ketika fungsi digunakan, maka dia hanya digunakan sebagai reference, bukan hard copynya yang digunakan
	//hanya ada satu tempat dimana fungsi itu menempati memory, penyebutannya berulangkali hanya menyebut referensi ke satu tempat memory tersebut.
	//jika tidak, penyebutan berulang kali di dalam kode juga berarti hard copy memory yang berisi kode fungsi tersebut ke lokasi memory lain.
	{
		static $_classes = array();//static sehingga ketika pertama kali fungsi ini jalan, dia tetap reside di memory dan bisa digunakan berulang kali oleh fungsi yang sama ketika fungsi yang sama dipanggil ulang.
		//Karena sraric maka dia menampung selamanya selama aplikasi ada di memori, menampung semua kelas yang di load.

		// Does the class exist? If so, we're done...
		if (isset($_classes[$class]))
		{
			return $_classes[$class];
		}

		$name = FALSE;

		// Look for the class first in the local application/libraries folder, yaitu di APPPATH
		// then in the native system/libraries folder, yaitu di BASEPATH
		foreach (array(APPPATH, BASEPATH) as $path)
		{
			if (file_exists($path.$directory.'/'.$class.'.php'))//cek dulu apakah file yang memuat kelas ($class) eksis?
			{
				$name = 'CI_'.$class; //jika eksis maka cek kelas di dalam file tersebut, sudah standar untuk CI bahwa nama kelas di awali CI, untuk milik CI.

				if (class_exists($name, FALSE) === FALSE)//jika kelas belum diautoload dan atau belum dimuat 
				{
					require_once($path.$directory.'/'.$class.'.php'); //maka muat kelas, yang berarti muat filenya, yang berarti gabung file ke dalam semua file yang sudah di memori
				}

				break;
			}
		}

		// Is the request a class extension? If so we load it too // OK
		if (file_exists(APPPATH.$directory.'/'.config_item('subclass_prefix').$class.'.php'))
		{
			$name = config_item('subclass_prefix').$class;

			if (class_exists($name, FALSE) === FALSE)
			{
				require_once(APPPATH.$directory.'/'.$name.'.php');
			}
		}

		// Did we find the class? Cukup memeriksa $name, apakah sudah dirubah atau belum.
		if ($name === FALSE)
		{
			// Note: We use exit() rather than show_error() in order to avoid a
			// self-referencing loop with the Exceptions class
			set_status_header(503);
			echo 'Unable to locate the specified class: '.$class.'.php';
			exit(5); // EXIT_UNK_CLASS
		}

		// Keep track of what we just loaded
		// memastikan bahwa kelas memang telah di load
		is_loaded($class);

		//mendaftar ke array $_classes, dimana $class sebagai key, dan $param yaitu parameter2nya sebagai value, yaitu key=>value
		$_classes[$class] = isset($param)
			? new $name($param) //inisiasi objek untuk $class yang sudah di daftar, tetapi $param (parameter/argumen untuk constructor) ada. 
			: new $name(); //inisiasi objek untuk $class yang sudah di daftar, tetapi $param (parameter/argumen untuk constructor) tidak ada.
		return $_classes[$class];//hasilnya adalah sebuah objek, yaitu instan dari kelas tersebut.
	}
}

// --------------------------------------------------------------------

//Juga meregister, tetapi hanya untuk mencatat memastikan bahwa kelas itu telah diload oleh fungsi load_class sebelumnya.
//hasilnyapun sebuah array yang berisi nama kelas tersebut, bukan instan kelas atau objek dari kelas.
if ( ! function_exists('is_loaded'))
{
	/**
	 * Keeps track of which libraries have been loaded. This function is
	 * called by the load_class() function above
	 *
	 * @param	string
	 * @return	array
	 */
	function &is_loaded($class = '')
	{
		static $_is_loaded = array();

		if ($class !== '')
		{
			$_is_loaded[strtolower($class)] = $class;
		}

		return $_is_loaded;
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('get_config'))
{
	/**
	 * Loads the main config.php file
	 * fungsi ini meload file config.php ke memori bergabung dengan halaman2 php lain
	 * kemudian mengambil nilainya dan disimpan pada sebuah array config.
	 * karena itu fungsi ini kembaliannya adalah array config.
	 * array ini nantinya dapat digunakan untuk mengganti nilai-nilai config di config.php atau menambahnya.
	 * secara umum:
	 * fungsi ini mengambil nilai-nilai di config.php dan menyediakan penggantinya atau penambahnya.
	 *
	 * This function lets us grab the config file even if the Config class
	 * hasn't been instantiated yet
	 *
	 * @param	array
	 * @return	array
	 */
	function &get_config(Array $replace = array())
	{
		static $config;

		if (empty($config))
		{
			$file_path = APPPATH.'config/config.php';
			$found = FALSE;
			if (file_exists($file_path))
			{
				$found = TRUE;
				require($file_path);
			}

			// Is the config file in the environment folder?
			if (file_exists($file_path = APPPATH.'config/'.ENVIRONMENT.'/config.php'))
			{
				require($file_path);
			}
			elseif ( ! $found)
			{
				set_status_header(503);
				echo 'The configuration file does not exist.';
				exit(3); // EXIT_CONFIG
			}

			// Does the $config array exist in the file?
			if ( ! isset($config) OR ! is_array($config))
			{
				set_status_header(503);
				echo 'Your config file does not appear to be formatted correctly.';
				exit(3); // EXIT_CONFIG
			}
		}

		// Are any values being dynamically added or replaced?
		//kemudian lakukan grab, pergantian nilai-nilai config atau penambahan nilai-nilai config baru
		foreach ($replace as $key => $val)
		{
			$config[$key] = $val;
		}

		return $config;
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('config_item'))
{
	/**
	 * Returns the specified config item
	 *
	 * @param	string
	 * @return	mixed
	 */
	function config_item($item)
	{
		static $_config;

		if (empty($_config))
		{
			// references cannot be directly assigned to static variables, so we use an array
			// variabel static tidak bisa menerima nilai referensi
			$_config[0] =& get_config();//karena argumennya tidak ada maka get_config hanya mengambil semua nilai config.php dan menyimpannya disuatu lokasi memori, kemudian memberikan alamat memori itu ke $_config[0]
		}

		return isset($_config[0][$item]) ? $_config[0][$item] : NULL; 
		//$_config[0] adalah $config, sehingga $_config[0][$item] = $config[$item] dimana $item menyatakan item konfigurasi di config.php dan $config[$item] menyatakan nilai konfigurasi  
		//return ini memeriksa lebih dulu apakah item itu ada di $config? kalau ada maka diberikan, kalau tidak maka NULL.
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('get_mimes'))
{
	/**
	 * Returns the MIME types array from config/mimes.php
	 * fungsi ini hanya mengambil semua nilai mime sebagai array, itu saja. 
	 *
	 * @return	array
	 */
	function &get_mimes()
	{
		static $_mimes;

		if (empty($_mimes))
		{
			$_mimes = file_exists(APPPATH.'config/mimes.php')
				? include(APPPATH.'config/mimes.php')
				: array();

			if (file_exists(APPPATH.'config/'.ENVIRONMENT.'/mimes.php'))
			{
				$_mimes = array_merge($_mimes, include(APPPATH.'config/'.ENVIRONMENT.'/mimes.php'));
			}
		}

		return $_mimes;
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('is_https'))
{
	/**
	 * Is HTTPS?
	 *
	 * Determines if the application is accessed via an encrypted
	 * (HTTPS) connection.
	 *
	 * @return	bool
	 */
	function is_https()
	{
		if ( ! empty($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) !== 'off')//cek apakah slot https pada $_SERVER kosong atau off? jika ya maka orang mengaksesnya tidak menggunakan https.
		{
			return TRUE;
		}
		elseif (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && strtolower($_SERVER['HTTP_X_FORWARDED_PROTO']) === 'https')//cek berdasarkan hubungan client ke proxy
		{
			return TRUE;
		}
		elseif ( ! empty($_SERVER['HTTP_FRONT_END_HTTPS']) && strtolower($_SERVER['HTTP_FRONT_END_HTTPS']) !== 'off')//cek berdasarkan standar https lain
		{
			return TRUE;
		}

		return FALSE;
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('is_cli'))
{

	/**
	 * Is CLI?
	 *
	 * Test to see if a request was made from the command line.
	 * untuk mengecek php berjalan dimana cukup cek PHP_SAPI dan tambahn lain yaitu apakah STDIN telah didefinisikan?
	 *
	 * @return 	bool
	 */
	function is_cli()
	{
		return (PHP_SAPI === 'cli' OR defined('STDIN'));//PHP_SAPI adalah core predefined constant, jika isinya 'cli' maka php dijalankan lewat konsol jika isinya 'apache' maka dijalankan lewat server apache dan setersunya.
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('show_error'))
{
	/**
	 * Error Handler
	 *
	 * This function lets us invoke the exception class and
	 * display errors using the standard error template located
	 * in application/views/errors/error_general.php
	 * This function will send the error page directly to the
	 * browser and exit.
	 * 
	 * Tugas fungsi ini ada dua:
	 * Memanggil kelas Exception (Exception.php)
	 * Menampilkan pesan error sesuai template error standar (error_general.php)
	 * 
	 * Secara umum:
	 * Ini adalah fungsi antarmuka untuk Exception.php dan error_general.php
	 * ini sebenarnya hanya memangil ulang fungsi show_error() di Exception Class.
	 * But why? kenapa dia membuat ulang fungsi ini? 
	 * Ini karena deklarasi di Exception.php adalah deklarasi di dalam method di dalam kelas.
	 * Sedang deklarasi di dalam common.php adalah deklarasi prosedural atau fungsi biasa.
	 * Tampaknya penulis framework CI berusaha menyajikan dua versi, versi sebagai objek untuk fungsi-fungsi itu dan versi sebagai fungsi biasa.
	 * dalam hal ini, deklarasi sebagai fungsi biasa menyebabkan dia adalah interface untuk secara global tanpa harys menginisisi objeknya secara langsung
	 * sehingga maksud dari pernyataan "interface" adalah sebagai interface antara objek/kelas dengan koding prosedural atau juga OOP.
	 * 
	 * Secara umum:
	 * fungsi show_error() dan show_404() adalah interface untuk kelas Exception (Exception.php)
	 * 
	 * Pertanyaan berikut:
	 * Dimanakah dan kapanakh fungsi ini ditulis di dalam kode?
	 * 
	 * @param	string
	 * @param	int
	 * @param	string
	 * @return	void
	 */
	function show_error($message, $status_code = 500, $heading = 'An Error Was Encountered')
	{
		$status_code = abs($status_code);
		if ($status_code < 100)
		{
			$exit_status = $status_code + 9; // 9 is EXIT__AUTO_MIN 
			//$exit_status dipakai begitu saja di dalam scope ini, tidak dideklarasikan
			//EXIT__AUTO_MIN, EXIT_ERROR dst sudah didefinisikan di constant.php
			$status_code = 500;
		}
		else
		{
			$exit_status = 1; // EXIT_ERROR
		}

		$_error =& load_class('Exceptions', 'core');
		echo $_error->show_error($heading, $message, 'error_general', $status_code);
		exit($exit_status); //fungsi exit() adalah general, dalam artian $exit_status sebagai argumen, mulai dari 0-255, jika $exit_status = 0, maka eksekusi berhenti secara alami (kode dieksekusi normal dan selesai atau sukses)
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('show_404'))
{
	/**
	 * 404 Page Handler
	 *
	 * This function is similar to the show_error() function above
	 * However, instead of the standard error template it displays
	 * 404 errors.
	 *
	 * @param	string
	 * @param	bool
	 * @return	void
	 */
	function show_404($page = '', $log_error = TRUE) //OK hanya menyatakan ulang fungsi di exception.php sehingga dia sebagai fungsi biasa, bukan method objek.
	{
		$_error =& load_class('Exceptions', 'core');
		//Mengapa $_error tidak didefinisikan static? seperti pendefinisian fungsi2 lain dalam menggunakan variabel di dalam scope-nya?
		//Ini karena penulis framework CI ini sepertinya tidak merencanakan untuk menggunakan berulangkali variabel tersebut atau merekam nilai sebelumnya
		//karena ini hanyalah pelaporan error sekali jalan.

		$_error->show_404($page, $log_error);
		exit(4); // EXIT_UNKNOWN_FILE
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('log_message'))
{
	/**
	 * Error Logging Interface
	 *
	 * We use this as a simple mechanism to access the logging
	 * class and send messages to be logged.
	 * 
	 * Bagian ini adalah interface untuk kelas Log.php
	 *
	 * @param	string	the error level: 'error', 'debug' or 'info'
	 * @param	string	the error message
	 * @return	void
	 */
	function log_message($level, $message)
	{
		static $_log; //disini didefinisikan static karena untuk digunakan berulangkali dan merekam log sebelumnya.

		if ($_log === NULL)
		{
			// references cannot be directly assigned to static variables, so we use an array
			$_log[0] =& load_class('Log', 'core');
		}

		$_log[0]->write_log($level, $message);
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('set_status_header'))
{
	/**
	 * Set HTTP Status Header
	 * Penulis CI menyediakan fungsi untuk untuk mengeset sendiri status header dan mendefinisikan ulang status header yang sudah menjadi konvensional, tetapi hanya dengan memberi arti dalam string
	 * untuk menjelaskan kode error saja. Juga menyediakan set status heade untuk cgi dan protokol lain.
	 * tetapi bukan php dari yang dijalanakn lewat cli.
	 *
	 * @param	int	the status code
	 * @param	string
	 * @return	void
	 */
	function set_status_header($code = 200, $text = '')
	{
		if (is_cli())
		{
			return;
		}

		if (empty($code) OR ! is_numeric($code))
		{
			show_error('Status codes must be numeric', 500);
		}

		if (empty($text))
		{
			is_int($code) OR $code = (int) $code;
			$stati = array(
				100	=> 'Continue',
				101	=> 'Switching Protocols',

				200	=> 'OK',
				201	=> 'Created',
				202	=> 'Accepted',
				203	=> 'Non-Authoritative Information',
				204	=> 'No Content',
				205	=> 'Reset Content',
				206	=> 'Partial Content',

				300	=> 'Multiple Choices',
				301	=> 'Moved Permanently',
				302	=> 'Found',
				303	=> 'See Other',
				304	=> 'Not Modified',
				305	=> 'Use Proxy',
				307	=> 'Temporary Redirect',

				400	=> 'Bad Request',
				401	=> 'Unauthorized',
				402	=> 'Payment Required',
				403	=> 'Forbidden',
				404	=> 'Not Found',
				405	=> 'Method Not Allowed',
				406	=> 'Not Acceptable',
				407	=> 'Proxy Authentication Required',
				408	=> 'Request Timeout',
				409	=> 'Conflict',
				410	=> 'Gone',
				411	=> 'Length Required',
				412	=> 'Precondition Failed',
				413	=> 'Request Entity Too Large',
				414	=> 'Request-URI Too Long',
				415	=> 'Unsupported Media Type',
				416	=> 'Requested Range Not Satisfiable',
				417	=> 'Expectation Failed',
				422	=> 'Unprocessable Entity',
				426	=> 'Upgrade Required',
				428	=> 'Precondition Required',
				429	=> 'Too Many Requests',
				431	=> 'Request Header Fields Too Large',

				500	=> 'Internal Server Error',
				501	=> 'Not Implemented',
				502	=> 'Bad Gateway',
				503	=> 'Service Unavailable',
				504	=> 'Gateway Timeout',
				505	=> 'HTTP Version Not Supported',
				511	=> 'Network Authentication Required',
			);

			if (isset($stati[$code]))
			{
				$text = $stati[$code];
			}
			else
			{
				show_error('No status text available. Please check your status code number or supply your own message text.', 500);
			}
		}

		if (strpos(PHP_SAPI, 'cgi') === 0)
		{
			header('Status: '.$code.' '.$text, TRUE);
			return;
		}

		$server_protocol = (isset($_SERVER['SERVER_PROTOCOL']) && in_array($_SERVER['SERVER_PROTOCOL'], array('HTTP/1.0', 'HTTP/1.1', 'HTTP/2'), TRUE))
			? $_SERVER['SERVER_PROTOCOL'] : 'HTTP/1.1';
		header($server_protocol.' '.$code.' '.$text, TRUE, $code);
	}
}

// --------------------------------------------------------------------

if ( ! function_exists('_error_handler'))
{
	/**
	 * Error Handler
	 *
	 * This is the custom error handler that is declared at the (relative)
	 * top of CodeIgniter.php. The main reason we use this is to permit
	 * PHP errors to be logged in our own log files since the user may
	 * not have access to server logs. Since this function effectively
	 * intercepts PHP errors, however, we also need to display errors
	 * based on the current error_reporting level.
	 * We do that with the use of a PHP error template.
	 * 
	 * Alasan utama kenapa penulis CI menulis ini adalah karena log php error ditulis di server, sedang hostingan tidak menyediakan akses ke cpanel atau penulis aplikasi.
	 * sehingga penulis CI membuat fungsi error handler lain yang mengintercept error handler php dan menjadikan pesan error php bisa diakses penulis aplikasi
	 * tanpa harus mengakses server.
	 * 
	 * Bagaimanakah sebenarnya konsep Error php?
	 *
	 * @param	int	$severity
	 * @param	string	$message
	 * @param	string	$filepath
	 * @param	int	$line
	 * @return	void
	 */
	function _error_handler($severity, $message, $filepath, $line) //ini adalah format fungsi eeror_handler untuk user atau programer, ada di buku manual php.
	{
		$is_error = (((E_ERROR | E_PARSE | E_COMPILE_ERROR | E_CORE_ERROR | E_USER_ERROR) & $severity) === $severity);
		//operator "|" adalah operator bitwise, (E_ERROR | E_PARSE | E_COMPILE_ERROR | E_CORE_ERROR | E_USER_ERROR) artinya semua jenis error yang salah satunya benar atau yang disebut di dalam kurung
		//
		
		// When an error occurred, set the status header to '500 Internal Server Error'
		// to indicate to the client something went wrong.
		// This can't be done within the $_error->show_php_error method because
		// it is only called when the display_errors flag is set (which isn't usually
		// the case in a production environment) or when errors are ignored because
		// they are above the error_reporting threshold.
		//
		// contoh ngeset flag di kode php untuk display_errors flag = ini_set('display_errors','On');
		// contoh penentuan treshold error: error_reporting(E_ALL);, artinya bahwa treshold/batas E_ALL menyatakan semua jenis error
		// tetapi bisa juga bukan E_ALL tetapi hanya terbatas beberapa jenis error saja.
		// treshold ini dapat sebuah ekspresi logik menggunakan operator bitwise, misal error_reporting(E_ERROR | E_PARSE | E_COMPILE_ERROR)
		// artinya hanya error E_ERROR, E_PARSE, E_COMPILE_ERROR yang dilaporkan, yang lain diabaikan.
		// sebenarnya error_handler adalah sudah merupakan konsep alami dalam php, yaitu membuat error handler sendiri (custom) sehingga programer bisa
		// menulis di log sendiri dimana saja. membuat error_handler sendiri menggunakan perintah bawaan php: set_error_handler()
		//
		// $severity adalah pesan konstanta error, $severity bisa dibuat sendiri oleh programer untuk menadai error versi dia.
		// error versi programer sendiri dibuat menggunakan fungsi trigger_error()
		// akan tetapi php sendiri menampilakn pesan error ini. fungsi apakah untuk mengetahui pesan error built ini? gunakan fungsi error_get_last()
		// fungsi error_get_last() mengambil semua pesan error yang dibangkitkan mesin php, bukan versi user tau programer.
		//
		// #Bagaimana kita bisa mencatat error ke server log, baik itu error versi user atau versi mesin php sendiri?
		// gunakan fungsi error_log()
		//
		// #Bagaimana error_handler() user, bakhan dengan error handler nama sembarang dapat menangkap pesan error baik dari 
		// engine php (menangkap nomor error level, pesan error mesin php, nama file yang error, line yang error, bahkan konteksnya(deskripsi variabel) semua dari mesin php)
		// atau dari user error yang dibuat menggunakan trigger_error()?
		// Kuncinya adalah ketika kita men-set fungsi error handler yang kita buat sendiri menggunakan perintah set_error_handler().
		// tetapi dengan syarat, fungsi yang kita buat harus memuat parameter-parameter (argumen fungsi) dan dalam susunan yang sesuai dengan 
		// contoh error handler yang diberikan di manual php. yaitu:
		// function error_handler_buatan_sendiri(parameter_error_number, parameter_pesan_error, parameter_jejak_file, parameter_line, parameter_konteks)
		// nama boleh bebas, nama variabel argumen boleh bebas tetapi urutan sesuai/konsisten dan kode didalam fungsi bebas.
		// terakhir! fungsi harus di-set sebagai error handler menggunakan set_error_handler(nama_fungsi_error_handler_kita) agar semua parameter2 argumennya 
		// dapat menampung/menangkap pesan2 dari mesin php ketika terjadi error.
		//
		// #Bagaimana membuat file log error secara manual bikinan sendiri atau mencatat di file error mesin server?
		// Gunakan fungsi error_log(). Fungsi ini mencatat di file yang kita inginkan atau ke mesin server.
		//
		//  
		if ($is_error)
		{
			set_status_header(500);
		}

		// Should we ignore the error? We'll get the current error_reporting
		// level and add its bits with the severity bits to find out.
		if (($severity & error_reporting()) !== $severity)
		{
			return;
		}

		$_error =& load_class('Exceptions', 'core');
		$_error->log_exception($severity, $message, $filepath, $line);

		// Should we display the error?
		if (str_ireplace(array('off', 'none', 'no', 'false', 'null'), '', ini_get('display_errors')))
		{
			$_error->show_php_error($severity, $message, $filepath, $line);
		}

		// If the error is fatal, the execution of the script should be stopped because
		// errors can't be recovered from. Halting the script conforms with PHP's
		// default error handling. See http://www.php.net/manual/en/errorfunc.constants.php
		if ($is_error)
		{
			exit(1); // EXIT_ERROR
		}
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('_exception_handler'))
{
	/**
	 * Exception Handler
	 *
	 * Sends uncaught exceptions to the logger and displays them
	 * only if display_errors is On so that they don't show up in
	 * production environments.
	 *
	 * @param	Exception	$exception
	 * @return	void
	 */
	function _exception_handler($exception)
	{
		$_error =& load_class('Exceptions', 'core');
		$_error->log_exception('error', 'Exception: '.$exception->getMessage(), $exception->getFile(), $exception->getLine());

		is_cli() OR set_status_header(500);
		// Should we display the error?
		if (str_ireplace(array('off', 'none', 'no', 'false', 'null'), '', ini_get('display_errors')))
		//cek apakah settingan display_error = 'off', 'none', 'no', 'false', 'null'?
		//cara mencari string ini unik karena menggunakan perintah mencari dan menhgganti, walaupun sebenarnya dia tidka bermaksud mengganti akan tetapi
		//hanya untuk mengetahui apakah yang dicara ada atau tidak, itu saja.
		{
			$_error->show_exception($exception); 
			//kalau display_error = on
		}

		exit(1); // EXIT_ERROR
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('_shutdown_handler'))
{
	/**
	 * Shutdown Handler
	 *
	 * This is the shutdown handler that is declared at the top
	 * of CodeIgniter.php. The main reason we use this is to simulate
	 * a complete custom exception handler.
	 *
	 * E_STRICT is purposively neglected because such events may have
	 * been caught. Duplication or none? None is preferred for now.
	 *
	 * @link	http://insomanic.me.uk/post/229851073/php-trick-catching-fatal-errors-e-error-with-a
	 * @return	void
	 */
	function _shutdown_handler()//OK
	{
		$last_error = error_get_last();
		if (isset($last_error) &&
			($last_error['type'] & (E_ERROR | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING)))
		{
			_error_handler($last_error['type'], $last_error['message'], $last_error['file'], $last_error['line']);
		}
	}
}

// --------------------------------------------------------------------

if ( ! function_exists('remove_invisible_characters'))
{
	/**
	 * Remove Invisible Characters
	 *
	 * This prevents sandwiching null characters
	 * between ascii characters, like Java\0script.
	 * 
	 *
	 * @param	string
	 * @param	bool
	 * @return	string
	 */
	function remove_invisible_characters($str, $url_encoded = TRUE) //OK
	{
		$non_displayables = array();

		// every control character except newline (dec 10),
		// carriage return (dec 13) and horizontal tab (dec 09)
		if ($url_encoded)
		//jika terenkode sebagaimana jika ditampilkan pada url, biasanya pada url didahului dengan tanda %, misal %00 untuk 00
		{
			$non_displayables[] = '/%0[0-8bcef]/i';	// url encoded 00-08, 11, 12, 14, 15
			$non_displayables[] = '/%1[0-9a-f]/i';	// url encoded 16-31
			$non_displayables[] = '/%7f/i';	// url encoded 127
		}

		//bila tidak terenkode url, maka menjadi biasa, misal \x00 untuk 00
		$non_displayables[] = '/[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]+/S';	// 00-08, 11, 12, 14-31, 127

		do
		{
			$str = preg_replace($non_displayables, '', $str, -1, $count);//hapus semua karakter tersebut
		}
		while ($count);

		return $str;
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('html_escape'))
{
	/**
	 * Returns HTML escaped variable.
	 *
	 * @param	mixed	$var		The input string or array of strings to be escaped.
	 * @param	bool	$double_encode	$double_encode set to FALSE prevents escaping twice.
	 * @return	mixed			The escaped string or array of strings as a result.
	 */
	function html_escape($var, $double_encode = TRUE)
	{
		if (empty($var))
		{
			return $var;
		}

		if (is_array($var))
		{
			foreach (array_keys($var) as $key)
			{
				$var[$key] = html_escape($var[$key], $double_encode);
			}

			return $var;
		}

		return htmlspecialchars($var, ENT_QUOTES, config_item('charset'), $double_encode);
		//ENT_QUOTES Will convert both double and single quotes. 
		//config_item('charset') artinya mengambil charset dari file config.php.
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('_stringify_attributes'))
{
	/**
	 * Stringify attributes for use in HTML tags.
	 *
	 * Helper function used to convert a string, array, or object
	 * of attributes to a string.
	 * 
	 * Fungsi ini untuk meletakkan atribut atau properti ke tag html.
	 * atribut2 mungkin hanya sebuah string yang tinggal diletakkan atau sebuah array atau objek yang perlu ditata peletakkanya.
	 * jika atribut berupa array atau objek, mestilah key adalah nama atribut dan value adalah nilai atribut, sehingga array dalam susunan
	 * key => value, ini juga berlaku untuk objek (objek dimaksud semacam objek json).
	 *
	 * @param	mixed	string, array, object
	 * @param	bool
	 * @return	string
	 */
	function _stringify_attributes($attributes, $js = FALSE)
	{
		$atts = NULL;

		if (empty($attributes))
		{
			return $atts;
		}

		if (is_string($attributes))
		{
			return ' '.$attributes;
		}

		$attributes = (array) $attributes;

		foreach ($attributes as $key => $val)
		{
			$atts .= ($js) ? $key.'='.$val.',' : ' '.$key.'="'.$val.'"';
		}

		return rtrim($atts, ',');
	}
}

// ------------------------------------------------------------------------

if ( ! function_exists('function_usable'))
{
	/**
	 * Function usable
	 *
	 * Executes a function_exists() check, and if the Suhosin PHP
	 * extension is loaded - checks whether the function that is
	 * checked might be disabled in there as well.
	 *
	 * This is useful as function_exists() will return FALSE for
	 * functions disabled via the *disable_functions* php.ini
	 * setting, but not for *suhosin.executor.func.blacklist* and
	 * *suhosin.executor.disable_eval*. These settings will just
	 * terminate script execution if a disabled function is executed.
	 *
	 * The above described behavior turned out to be a bug in Suhosin,
	 * but even though a fix was committed for 0.9.34 on 2012-02-12,
	 * that version is yet to be released. This function will therefore
	 * be just temporary, but would probably be kept for a few years.
	 * 
	 * Fungsi perpanjangan dari pengecekan apakah sebuah fungsi eksis.
	 * ketika fungsi di disable di php.ini, maka fungsi function_exists() menghasilkan false.
	 * sehingga cukup sampe disitu, fungsi tidak ada atau fungsi disable, sudah bisa diketahui lewat function_exists().
	 * Akan tetapi terkadang fungsi ada dan tidak didisable di php.ini, sehingga function_exists() bernilai true.
	 * Akan tetapi kita tidak menginginkan dia digunakan (tidak usable).
	 * modul suhosin bisa membuat sebuah fungsi disable dalam cara ini (menjadi unusable) dengan menjadikannya sebagai
	 * fungsi yang masuk dalam daftar blacklist.
	 * Karena itu fungsi_usable() ini dibuat, untuk selain mengecek bahwa dia ada, juga mengecek apakah dia usable atau tidak.
	 *
	 * @link	http://www.hardened-php.net/suhosin/
	 * @param	string	$function_name	Function to check for
	 * @return	bool	TRUE if the function exists and is safe to call,
	 *			FALSE otherwise.
	 */
	function function_usable($function_name)//OK
	{
		static $_suhosin_func_blacklist;

		if (function_exists($function_name))
		{
			if ( ! isset($_suhosin_func_blacklist))
			{
				$_suhosin_func_blacklist = extension_loaded('suhosin')
					? explode(',', trim(ini_get('suhosin.executor.func.blacklist')))
					: array();
			}

			return ! in_array($function_name, $_suhosin_func_blacklist, TRUE);
		}

		return FALSE;
	}
}
