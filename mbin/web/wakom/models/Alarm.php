<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "alarm".
 *
 * @property integer $id
 * @property integer $created_at
 * @property string $alarm_code
 * @property string $alarm_message
 */
class Alarm extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'alarm';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['created_at', 'alarm_code', 'alarm_message'], 'required'],
            [['created_at'], 'integer'],
            [['alarm_code'], 'string', 'max' => 32],
            [['alarm_message'], 'string', 'max' => 512]
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
            'alarm_code' => 'Alarm Code',
            'alarm_message' => 'Alarm Message',
        ];
    }
}
