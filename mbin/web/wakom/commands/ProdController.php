<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\commands;

use yii\console\Controller;
use app\models\Prod;
/**
 * This command echoes the first argument that you have entered.
 *
 * This command is provided as an example for you to learn how to create console commands.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class ProdController extends Controller
{
    /**
     * This command echoes what you have entered as the message.
     * @param string $message the message to be echoed.
     */
    public function actionIndex($message = 'hello world')
    {
        echo base64_decode('sdKwyrB0vNE=') . "\n";
    }
    
    public function actionInsert($message)
    {
    	$val = explode(',', $message);
    	
    	$modle = new Prod();
    	$modle->sn = $val[0];
    	$modle->tag1 = $val[1];
    	$modle->tag2 = $val[2];
    	
    	$modle->load = $val[3];
    	$modle->sc = $val[4];
    	$modle->hdiw1 = $val[5];
    	$modle->tex1 = $val[6];
    	$modle->tex2 = $val[7];
    	$modle->hdiw2 = $val[8];
    	$modle->tex3 = $val[9];
    	$modle->tex4 = $val[10];
    	$modle->hdiw3 = $val[11];
    	$modle->hdiw4 = $val[12];
    	$modle->hf = $val[13];
    	$modle->hdiw5 = $val[14];
    	$modle->hdiw6 = $val[15];
    	$modle->hdiw7 = $val[16];
    	$modle->hdiw8 = $val[17];
    	$modle->akf = $val[18];
    	$modle->dry = $val[19];
    	
    	$modle->created_at = time();
    	$modle->save();
    	echo "succeedProd \n";
    }
}
