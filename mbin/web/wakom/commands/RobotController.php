<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\commands;

use yii\console\Controller;
use app\models\Robot;
/**
 * This command echoes the first argument that you have entered.
 *
 * This command is provided as an example for you to learn how to create console commands.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class RobotController extends Controller
{
    /**
     * This command echoes what you have entered as the message.
     * @param string $message the message to be echoed.
     */
    public function actionIndex($message = 'hello world')
    {
        echo base64_decode('sdKwyrB0vNE=') . "\n";
    }
    
    public function actionInsert($robot_name,$tank_name,$command,$status)
    {
    	$modle = new Robot();
    	$modle->robot_name = $robot_name;
    	$modle->tank_name = $tank_name;
    	$modle->status = $status;
    	$modle->command = $command;
    	$modle->created_at = time();
    	$modle->save();
    	echo "succeed \n";
    }
}
