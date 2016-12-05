<?php

/**
 * Created by PhpStorm.
 * User: chamb
 * Date: 11/17/2016
 * Time: 1:43 PM
 */
class Restaurant extends CI_Controller
{
    public function index(){
        $this->load->view('restaurant');
    }
}