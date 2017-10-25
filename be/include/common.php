<?php

class Common{
    
    private $commonObj = null;
            
    function __construct() {
        require_once dirname(__FILE__) . '/Config.php';
    }
    
    public function getProductDataFromSolr($params = []){
        $header = array();        
        
        $protocol = 'http://';
        $queryString = '?q=*:*&wt=json';
        $url = SOLR_HOST.":".SOLR_PORT."/solr/".SOLR_PRODUCT_CORE."/select".$queryString;
        $postdata =  array('url' => $protocol.$url);
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        //curl_setopt($ch, CURLOPT_POST,1);
        //curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
        $result = curl_exec($ch); 
        curl_close($ch);
        return $result;
        
    }
}


