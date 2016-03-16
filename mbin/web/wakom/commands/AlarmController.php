<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\commands;

use yii\console\Controller;
use app\models\Alarm;
/**
 * This command echoes the first argument that you have entered.
 *
 * This command is provided as an example for you to learn how to create console commands.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AlarmController extends Controller
{
    /**
     * This command echoes what you have entered as the message.
     * @param string $message the message to be echoed.
     */
    public function actionIndex($message = 'hello world')
    {
        echo base64_decode('sdKwyrB0vNE=') . "\n";
    }
    
    public function actionInsert($code,$message)
    {
    	$modle = new Alarm();
    	$modle->alarm_code = $code;
    	$modle->alarm_message = base64_decode($message);
	//$modle->alarm_message = $message;
    	$modle->created_at = time();
    	$modle->save();

    	echo  "code:" . $code . "msg:".$message." \n";
    }
}
