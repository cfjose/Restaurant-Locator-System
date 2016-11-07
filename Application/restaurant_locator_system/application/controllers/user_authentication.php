<?php
    class user_authentication extends CI_Controller
    {
        public function __construct()
        {
            parent::__construct();

            $this->load->helper('form');

            $this->load->library('form_validation');

            $this->load->library('session');

            $this->load->model('login_database');

            $this->load->helper('security');
        }

        public function index(){
            $this->load->view('login');
        }

        public function new_user_registration(){
            $this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
            $this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean');
            $this->form_validation->set_rules('email', 'Email', 'trim|required|xss_clean');

            if($this->form_validation->run() == FALSE){
                $this->load->view('signup');
            }else{
                $data = array('username' => $this->input->post('username'),
                                'email' => $this->input->post('email'),
                                'password' => $this->input->post('password'));

                $result = $this->login_database->registration_insert($data);

                if($result == TRUE){
                    $data['message_display'] = 'Registration Successful';
                    $this->load->view('login', $data);
                }else{
                    $data['message_display'] = 'Account already exists';
                    $this->load->view('signup', $data);
                }
            }
        }

        public function user_login_process(){
            $this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
            $this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean');

            if($this->form_validation->run() == FALSE){
                if(isset($this->session->userdata['logged_in'])){
                    $this->load->view('main');
                }else{
                    $this->load->view('login');
                }
            }else{
                $data = array(
                    'username' => $this->input->post('username'),
                    'password' => $this->input->post('password'));

                $result = $this->login_database->login($data);

                if($result == TRUE){
                    $username = $this->input->post('username');
                    $result = $this->login_database->read_user_information($username);

                    if($result != FALSE){
                        $session_data = array(
                            'username' => $result[0]->username,
                            'email' => $result[0]->email,
                            );

                        $this->session->set_userdata('logged_in', $session_data);
                        $this->load->view('main');
                    }
                }else{
                    $data = array('error_message' => 'Invalid Username or Password');
                    $this->load->view('login', $data);
                }
            }
        }

        public function logout(){
            $sess_array = array('username' => '');
            $this->session->unset_userdata('logged_in', $sess_array);
            $this->load->view('login');
        }

        public function search(){
            $this->load->view('search');
        }
    }
?>