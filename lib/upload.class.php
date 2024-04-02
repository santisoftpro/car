<?php
    /**
     * Upload Class
     *
     * @package Wojo Framework
     * @author wojoscripts.com
     * @copyright 2022
     * @version $Id: upload.class.php, v1.00 2022-04-20 18:20:24 gewa Exp $
     */
    
    if (!defined("_WOJO"))
        die('Direct access to this location is not allowed.');
    
    class Upload
    {
        private $maxSize;
        private $allowedExt;
        public $fileInfo = array();
        private static $instance;
        
        /**
         * Upload::__construct()
         *
         * @param mixed $maxSize
         * @param mixed $allowedExt
         */
        private function __construct($maxSize, $allowedExt)
        {
            $this->maxSize = $maxSize;
            $this->allowedExt = $allowedExt;
        }
        
        /**
         * Upload::instance()
         *
         * @param null $maxSize
         * @param null $allowedExt
         * @return Upload
         */
        public static function instance($maxSize = null, $allowedExt = null)
        {
            if (!self::$instance) {
                self::$instance = new Upload($maxSize, $allowedExt);
            }
            
            return self::$instance;
        }
        
        /**
         * Upload::check()
         *
         * @param mixed $uploadName
         * @return bool
         */
        public function check($uploadName)
        {
            if (isset($_FILES[$uploadName])) {
                $this->fileInfo['ext'] = substr(strrchr($_FILES[$uploadName]["name"], '.'), 1);
                $this->fileInfo['name'] = basename($_FILES[$uploadName]["name"]);
                $this->fileInfo['xame'] = substr($_FILES[$uploadName]["name"], 0, strrpos($_FILES[$uploadName]["name"], "."));
                $this->fileInfo['size'] = $_FILES[$uploadName]["size"];
                $this->fileInfo['temp'] = $_FILES[$uploadName]["tmp_name"];
                $this->fileInfo['type'] = $_FILES[$uploadName]["type"];
                $type = explode("/", $_FILES[$uploadName]["type"]);
                $this->fileInfo['type_short'] = $type[0];
                
                if ($this->fileInfo['size'] > $this->maxSize) {
                    Message::$msgs['name'] = Lang::$word->FU_ERROR10 . ' ' . File::getSize($this->maxSize);
                    Debug::AddMessage("errors", '<i>Error</i>', 'Uploaded file is larger than allowed.', "session");
                    return false;
                }
                
                if (strlen($this->allowedExt) == 0) {
                    Message::$msgs['name'] = Lang::$word->FU_ERROR9; //no extension specified
                    Debug::AddMessage("errors", '<i>Error</i>', 'Invalid file extension specified.', "session");
                    return false;
                }
                
                $exts = explode(',', $this->allowedExt);
                if (!in_array(strtolower($this->fileInfo['ext']), $exts)) {
                    Message::$msgs['name'] = Lang::$word->FU_ERROR8 . $this->allowedExt; //no extension specified
                    Debug::AddMessage("errors", '<i>Error</i>', 'Invalid file extension specified.', "session");
                    return false;
                }
                
                if (in_array(strtolower($this->fileInfo['ext']), array(
                    "jpg",
                    "png",
                    "bmp",
                    "gif",
                    "jpeg"))) {
                    if (!getimagesize($this->fileInfo['temp'])) {
                        Message::$msgs['name'] = Lang::$word->FU_ERROR7; //invalid image
                        Debug::AddMessage("errors", '<i>Error</i>', 'Invalid image detected.', "session");
                        return false;
                    }
                }
                
                return true;
            }
            Message::$msgs['name'] = Lang::$word->FU_ERROR11; //Either form not submitted or file/s not found
            Debug::AddMessage("errors", '<i>Error</i>', 'Temp file could not be found.', "session");
            return false;
            
        }
        
        /**
         * Upload::process()
         *
         * @param mixed $name
         * @param mixed $dir
         * @param mixed $prefix
         * @param bool $fname
         * @param bool $replace
         * @return void
         */
        public function process($name, $dir, $prefix = 'SOURCE_', $fname = false, $replace = true)
        {
            if (!is_dir($dir)) {
                Message::$msgs['dir'] = Lang::$word->FU_ERROR12; //Directory doesn't exist!
            }
            if ($this->check($name)) {
                if (!$fname) {
                    $this->fileInfo['fname'] = $prefix . Utility::randomString(12) . '.' . $this->fileInfo['ext'];
                } else {
                    $this->fileInfo['fname'] = $fname . '.' . $this->fileInfo['ext'];
                }
                if ($replace) {
                    while (file_exists($dir . $this->fileInfo['fname'])) {
                        $this->fileInfo['fname'] = $prefix . Utility::randomString(12) . '.' . $this->fileInfo['ext'];
                    }
                }
                if (!move_uploaded_file($this->fileInfo['temp'], $dir . $this->fileInfo['fname'])) {
                    Message::$msgs['name'] = Lang::$word->FU_ERROR13; //File not moved
                    Debug::AddMessage("errors", '<i>Error</i>', 'File could not be moved from temp directory', "session");
                }
            }
        }
    }