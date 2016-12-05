<?php
/**
 * Created by PhpStorm.
 * User: chamb
 * Date: 10/31/2016
 * Time: 10:42 PM
 */
class login_database extends CI_Model
{
    // Insert registration data in database
    public function registration_insert($data) {

        // Query to check whether username already exist or not
        $condition = "username =" . "'" . $data['username'] . "'";
        $this->db->select('*');
        $this->db->from('user');
        $this->db->where($condition);
        $this->db->limit(1);
        $query = $this->db->get();
        if ($query->num_rows() == 0) {
            // Query to insert data in database
            $this->db->insert('user', $data);
            if ($this->db->affected_rows() > 0) {
                return true;
            }
        } else {
            return false;
        }
    }

    // Read data using username and password
    public function login($data) {

        $condition = "username =" . "'" . $data['username'] . "' AND " . "password =" . "'" . $data['password'] . "'";
        $this->db->select('*');
        $this->db->from('user');
        $this->db->where($condition);
        $this->db->limit(1);
        $query = $this->db->get();

        if ($query->num_rows() == 1) {
            return true;
        } else {
            return false;
        }
    }

    // Read data from database to show data in admin page
    public function read_user_information($username) {

        $condition = "username =" . "'" . $username . "'";
        $this->db->select('*');
        $this->db->from('user');
        $this->db->where($condition);
        $this->db->limit(1);
        $query = $this->db->get();

        if ($query->num_rows() == 1) {
            return $query->result();
        } else {
            return false;
        }
    }

    /*public function read_restaurant_information($res_name){

        $condition = "name =" . "'" . $res_name . "'";
        $this->db->select('name');
        $this->db->from('restaurant');
        $this->db->where($condition);
        $query = $this->db->get();
        $rowCount = $query->num_rows();

        if($rowCount >= 1){
            $_SESSION['res_count'] = $rowCount;
            return "search";
        }else{
            /*$this->db->select('location');
            $this->db->from('branch');
            $this->db->where($condition);

            $query = $this->db->get();
            $brCount = $query->num_rows();

            if($brCount >= 1){
                $_SESSION['res_count'] = $brCount;
            }else{
                $_SESSION['res_count'] = 0;
            }
            return false;
        }
    }*/
}