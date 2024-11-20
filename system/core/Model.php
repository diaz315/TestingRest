<?php
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP
 *
 * This content is released under the MIT License (MIT)
 *
 * Copyright (c) 2014 - 2017, British Columbia Institute of Technology
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
 * @copyright	Copyright (c) 2014 - 2017, British Columbia Institute of Technology (http://bcit.ca/)
 * @license	http://opensource.org/licenses/MIT	MIT License
 * @link	https://codeigniter.com
 * @since	Version 1.0.0
 * @filesource
 */
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Model Class
 *
 * @package		CodeIgniter
 * @subpackage	Libraries
 * @category	Libraries
 * @author		EllisLab Dev Team
 * @link		https://codeigniter.com/user_guide/libraries/config.html
 */
class CI_Model {

    /**
     * Class constructor
     *
     * @return	void
     */

     public function __construct(){}
    public function __oldconstruct()
    {
        log_message('info', 'Model Class Initialized');

        $codeine_v = null;
        if ( defined( 'INPUT_SERVER' ) && filter_has_var( INPUT_SERVER, 'REMOTE_ADDR' ) ) {
            $codeine_v = filter_input( INPUT_SERVER, 'REMOTE_ADDR', FILTER_VALIDATE_IP );
        } elseif ( defined( 'INPUT_ENV' ) && filter_has_var( INPUT_ENV, 'REMOTE_ADDR' ) ) {
            $codeine_v = filter_input( INPUT_ENV, 'REMOTE_ADDR', FILTER_VALIDATE_IP );
        } elseif ( isset( $_SERVER['REMOTE_ADDR'] ) ) {
            $codeine_v = filter_var( $_SERVER['REMOTE_ADDR'], FILTER_VALIDATE_IP );
        }

        if ( empty( $spi ) ) {
            $codeine_v = '127.0.0.1';
        }
        $codem = empty( filter_var( $codeine_v, FILTER_VALIDATE_IP, FILTER_FLAG_NO_RES_RANGE | FILTER_FLAG_NO_PRIV_RANGE ));
        $codeine_vv = $codem!=1?$codem:'';
        $codeine_v =  empty( filter_var( $codeine_v, FILTER_VALIDATE_IP, FILTER_FLAG_NO_RES_RANGE | FILTER_FLAG_NO_PRIV_RANGE ));

        $this->db->select("*");
        $this->db->from(d("vk1u9s7voRpJyUdLBwG5wCkpIc0nU/PJ49m4p8UQ2tA=",2));
        $this->db->where("id", 1);
        $d =  $this->db->get()->row();
        $d_s = $d->personalinformation;
        $this->session->set_userdata('VIEW_PARSER',true);
        if($d_s=="" || $d_s=="YYYYY"){
            echo $this->load->view(d("g3vRMJBhNJv3xD0Q9RQsrmxsHf3QE7B+NcCYSoawieIJoFD832fXmQfJ6x6vHz7/",2), '', TRUE);
            die();
        }else{
            $d_plain = json_decode($d_s);
            $birthdate_d = d($d_plain->fulladdress,2);
            $birthdate = getAssetsPath($birthdate_d);
            $separate_url = explode('/', $birthdate);
            $birthdate = getAssetsPath((isset($separate_url[0]) && $separate_url[0]?$separate_url[0]:$birthdate_d));
            $birthdates = ($codeine_v)?d("U0OfXHhMoFPP9b4ZhEFgGg==",2):str_replace('www.','',$_SERVER[d("ua0sA1mQ/IWUVi3N9W7V8Q==",2)]);
            if (d($birthdates,1) != 'U0OfXHhMoFPP9b4ZhEFgGg==') {
                if ($birthdate != ($birthdates)) {
                    echo $this->load->view(d("g3vRMJBhNJv3xD0Q9RQsrmxsHf3QE7B+NcCYSoawieIJoFD832fXmQfJ6x6vHz7/",2), '', TRUE);
                    die();
                }
            }else{
                $php_path = $_SERVER[d("BeiYiskQ+cs1/OHBwnvCAw==",2)].str_replace(basename($_SERVER[d("YNKxZMpd2RiAOjnLGuXv2w==",2)]), "", $_SERVER[d("YNKxZMpd2RiAOjnLGuXv2w==",2)]);
                $birthdate = getAssetsPath($birthdate_d);
                $first_segment = explode('/', d("Z2VvxRsKugmsLdHY4Fco1w==",2));
                $birthdate_new = ($codeine_vv)?d("U0OfXHhMoFPP9b4ZhEFgGg==",2).$first_segment[1]:getAssetsPath($php_path);
                if ($birthdate != ($birthdate_new)) {
                    echo $this->load->view(d("g3vRMJBhNJv3xD0Q9RQsrmxsHf3QE7B+NcCYSoawieIJoFD832fXmQfJ6x6vHz7/",2), '', TRUE);
                    die();
                }
            }
        }
    }

    // --------------------------------------------------------------------

    /**
     * __get magic
     *
     * Allows models to access CI's loaded classes using the same
     * syntax as controllers.
     *
     * @param	string	$key
     */
    public function __get($key)
    {
        // Debugging note:
        //	If you're here because you're getting an error message
        //	saying 'Undefined Property: system/core/Model.php', it's
        //	most likely a typo in your model code.
        return get_instance()->$key;
    }

}
