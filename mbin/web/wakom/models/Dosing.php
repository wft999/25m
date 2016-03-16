<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "dosing".
 *
 * @property integer $id
 * @property integer $create_at
 * @property string $tank
 * @property string $chemical
 * @property double $volume
 * @property string $type
 * @property integer $car_amount
 */
class Dosing extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'dosing';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['create_at', 'tank', 'chemical', 'volume', 'type', 'car_amount'], 'required'],
            [['create_at', 'car_amount'], 'integer'],
            [['volume'], 'number'],
            [['tank', 'chemical', 'type'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'create_at' => 'Create At',
            'tank' => 'Tank',
            'chemical' => 'Chemical',
            'volume' => 'Volume',
            'type' => 'Type',
            'car_amount' => 'Car Amount',
        ];
    }
}
