<?php
    /**
     * Class Debug
     *
     * package Wojo Framework
     * @author wojoscripts.com
     * @copyright 2022
     * @version $Id: debug.class.php, v1.00 2022-02-20 18:20:24 gewa Exp $
     */
    
    if (!defined("_WOJO"))
        die('Direct access to this location is not allowed.');
    
    class Debug
    {
        private static $_startTime;
        private static $_endTime;
        private static $_arrGeneral = array();
        private static $_arrParams = array();
        private static $_arrWarnings = array();
        private static $_arrErrors = array();
        private static $_arrQueries = array();
        
        
        /**
         * Debug::init()
         *
         * @return false|void
         */
        public static function run()
        {
            if (!DEBUG)
                return false;
            
            self::$_startTime = self::_getFormattedMicrotime();
        }
        
        /**
         * Debug::addMessage()
         *
         * @param string $type
         * @param string $key
         * @param string $val
         * @param string $storeType
         * @return false|void
         */
        public static function addMessage($type = 'params', $key = '', $val = '', $storeType = '')
        {
            if (!DEBUG)
                return false;
            
            if ($storeType == 'session') {
                App::Session()->setKey('debug-' . $type, $key, $val);
            }
            
            switch ($type) {
                case "general" :
                    self::$_arrGeneral[$key][] = $val;
                    break;
                
                case "params" :
                    self::$_arrParams[$key] = $val;
                    break;
                
                case "errors" :
                    self::$_arrErrors[$key][] = $val;
                    break;
                
                case "warnings" :
                    self::$_arrWarnings[$key][] = $val;
                    break;
                
                case "queries" :
                    self::$_arrQueries[$key][] = $val;
                    break;
            }
            
        }
        
        /**
         * Debug::getMessage()
         *
         * @param string $type
         * @param string $key
         * @return mixed|string
         */
        public static function getMessage($type = 'params', $key = '')
        {
            $output = '';
            
            if ($type == 'errors')
                $output = self::$_arrErrors[$key] ?? '';
            
            return $output;
        }
        
        /**
         * Debug::displayInfo()
         *
         * @return false|void
         */
        public static function displayInfo()
        {
            if (!DEBUG)
                return false;
            
            self::$_endTime = self::_getFormattedMicrotime();
            $session = App::Session();
            $core = App::Core();
            
            $nl = "\n";
            if ($session->isExists('debug-warnings')) {
                $warncount = count($session->get('debug-warnings'));
                $warnings = count(self::$_arrWarnings);
                $twarn = ($warncount + $warnings);
            } else {
                $twarn = count(self::$_arrWarnings);
            }
            if ($session->isExists('debug-errors')) {
                $errcount = count($session->get('debug-errors'));
                $errors = count(self::$_arrErrors);
                $terr = ($errcount + $errors);
            } else {
                $terr = count(self::$_arrErrors);
            }
            
            echo $nl . '
		  <div id="debug-panel">
		    <div class="debug-wrapper">
			<div id="debug-panel-legend" class="legend">
				<span>Debug</span>
				<div class="arrow">
				<a id="debugArrowExpand" class="debugArrow" href="javascript:void(0)" title="Expand" onclick="javascript:appTabsMiddle()"><i class="icon small chevron up"></i></a>
				<a id="debugArrowCollapse" class="debugArrow" href="javascript:void(0)" title="Collapse" onclick="javascript:appTabsMinimize()"><i class="icon small chevron down"></i></a>
				<a id="debugArrowMaximize" class="debugArrow" href="javascript:void(0)" title="Maximize" onclick="javascript:appTabsMaximize()"><i class="icon small checkbox empty"></i></a>
				<a id="debugArrowMinimize" class="debugArrow" href="javascript:void(0)" title="Minimize" onclick="javascript:appTabsMiddle()"><i class="icon small checkbox checked"></i></a>
                </div>
			  <a id="tabGeneral" href="javascript:void(\'General\')" onclick="javascript:appExpandTabs(\'auto\', \'General\')">General</a>
			  <a id="tabParams" href="javascript:void(\'Params\')" onclick="javascript:appExpandTabs(\'auto\', \'Params\')">Params (' . count(self::$_arrParams) . ')</a>
			  <a id="tabWarnings" href="javascript:void(\'Warnings\')" onclick="javascript:appExpandTabs(\'auto\', \'Warnings\')">Warnings (' . $twarn . ')</a>
			  <a id="tabErrors" href="javascript:void(\'Errors\')" onclick="javascript:appExpandTabs(\'auto\', \'Errors\')">Errors (' . $terr . ')</a>
			  <a id="tabQueries" href="javascript:void(\'Queries\')" onclick="javascript:appExpandTabs(\'auto\', \'Queries\')">SQL Queries (' . count(self::$_arrQueries) . ')</a>
			  <a data-variation="mini" data-tooltip="Clear Log" class="clear_session"><i class="icon x alt"></i></a>
		  </div>
			<div id="contentGeneral" class="items" style="display:none;">
				Total execution time: ' . round((float)self::$_endTime - (float)self::$_startTime, 6) . ' sec.<br>
				Framework ' . $core->wojon . ' v' . $core->wojov . '<br>';
            if (function_exists('memory_get_usage') && ($usage = memory_get_usage()) != '') {
                echo "Memory Usage " . File::getSize($usage) . '<br>';
            }
            
            if (count(self::$_arrGeneral) > 0) {
                echo '<pre>';
                print_r(self::$_arrGeneral);
                echo '</pre>';
            }
            echo 'POST:';
            echo '<pre style="white-space:pre-wrap">';
            if (isset($_POST))
                print_r($_POST);
            echo '</pre>';
            
            echo 'GET:';
            echo '<pre style="white-space:pre-wrap">';
            if (isset($_GET))
                print_r($_GET);
            echo '</pre>';
            
            echo '</div>
			  
			  <div id="contentParams" class="items" style="display:none;">';
            if (count(self::$_arrParams) > 0) {
                echo '<pre>';
                print_r(self::$_arrParams);
                echo '</pre><br>';
            }
            echo '</div>
		  
			  <div id="contentWarnings" class="items" style="display:none;">';
            if (count(self::$_arrWarnings) > 0) {
                echo '<pre>';
                print_r(self::$_arrWarnings);
                echo '</pre>';
            }
            if ($session->isExists('debug-warnings')) {
                echo '<pre>';
                print_r($session->get('debug-warnings'));
                echo '</pre>';
            }
            echo '</div>

			  <div id="contentErrors" class="items" style="display:none;">';
            if (count(self::$_arrErrors) > 0) {
                echo '<pre>';
                print_r(self::$_arrErrors);
                echo '</pre>';
            }
            if ($session->isExists('debug-errors')) {
                echo '<pre>';
                print_r($session->get('debug-errors'));
                echo '</pre>';
            }
            echo '</div>
		  
			  <div id="contentQueries" class="items" style="display:none;">';
            if (count(self::$_arrQueries) > 0) {
                foreach (self::$_arrQueries as $msgKey => $msgVal) {
                    echo $msgKey . '<br>';
                    echo $msgVal[0] . '<br><br>';
                }
            }
            
            if ($session->isExists('debug-queries')) {
                foreach ($session->get('debug-queries') as $k => $line) {
                    $k++;
                    echo '<pre>';
                    print_r($k . '. ' . $line);
                    echo '</pre>';
                }
            }
            
            echo '</div>
		    </div>
		  </div>';
            
            $debugBarState = $_COOKIE['debugBarState'] ?? 'min';
            if ($debugBarState == 'max') {
                print '<script>appTabsMaximize();</script>';
            } elseif ($debugBarState == 'middle') {
                print '<script>appTabsMiddle();</script>';
            } else {
                print '<script>appTabsMinimize();</script>';
            }
        }
        
        /**
         * Debug::pre()
         *
         * @param string $data
         * @return void
         */
        public static function pre($data)
        {
            print '<pre>' . print_r($data, true) . '</pre>';
        }
        
        /**
         * Debug::_getFormattedMicrotime()
         *
         * @return false|float
         */
        private static function _getFormattedMicrotime()
        {
            if (!DEBUG)
                return false;
            
            list($usec, $sec) = explode(' ', microtime());
            return ((float)$usec + (float)$sec);
        }
        
    }