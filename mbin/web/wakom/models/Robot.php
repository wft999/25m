<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "robot".
 *
 * @property integer $id
 * @property integer $created_at
 * @property string $robot_name
 * @property string $tank_name
 * @property string $command
 * @property string $status
 */
class Robot extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'robot';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['created_at', 'robot_name', 'tank_name', 'command', 'status'], 'required'],
            [['created_at'], 'integer'],
            [['robot_name', 'tank_name', 'command', 'status'], 'string', 'max' => 16]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'created_at' => 'Created At',
            'robot_name' => 'Robot Name',
            'tank_name' => 'Tank Name',
            'command' => 'Command',
            'status' => 'Status',
        ];
    }
}
