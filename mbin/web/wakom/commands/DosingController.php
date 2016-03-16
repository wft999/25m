<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\commands;

use yii\console\Controller;
use app\models\Dosing;
/**
 * This command echoes the first argument that you have entered.
 *
 * This command is provided as an example for you to learn how to create console commands.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class DosingController extends Controller
{
    /**
     * This command echoes what you have entered as the message.
     * @param string $message the message to be echoed.
     */
    public function actionIndex($message = 'hello world')
    {
        echo base64_decode('sdKwyrB0vNE=') . "\n";
    }
    
    public function actionInsert($tank,$chemical,$type,$volume,$car_amount)
    {
    	$modle = new Dosing();
    	$modle->car_amount = $car_amount;
    	$modle->tank = $tank;
    	$modle->chemical = $chemical;
    	$modle->type = $type;
    	$modle->volume = $volume;
    	$modle->create_at = time();
    	$modle->save();
    	echo "succeed \n";
    }
}
