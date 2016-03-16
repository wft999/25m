<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "prod".
 *
 * @property integer $id
 * @property integer $created_at
 * @property integer $sn
 * @property string $tag1
 * @property string $tag2
 * @property string $load
 * @property string $sc
 * @property string $hdiw1
 * @property string $tex1
 * @property string $tex2
 * @property string $hdiw2
 * @property string $tex3
 * @property string $tex4
 * @property string $hdiw3
 * @property string $hdiw4
 * @property string $hf
 * @property string $hdiw5
 * @property string $hdiw6
 * @property string $hdiw7
 * @property string $hdiw8
 * @property string $akf
 * @property string $dry
 */
class Prod extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'prod';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['created_at', 'sn', 'tag1', 'tag2', 'load', 'sc', 'hdiw1', 'tex1', 'tex2', 'hdiw2', 'tex3', 'tex4', 'hdiw3', 'hdiw4', 'hf', 'hdiw5', 'hdiw6', 'hdiw7', 'hdiw8', 'akf', 'dry'], 'required'],
            [['created_at', 'sn'], 'integer'],
            [['tag1', 'tag2', 'load', 'sc', 'hdiw1', 'tex1', 'tex2', 'hdiw2', 'tex3', 'tex4', 'hdiw3', 'hdiw4', 'hf', 'hdiw5', 'hdiw6', 'hdiw7', 'hdiw8', 'akf', 'dry'], 'string', 'max' => 128]
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
            'sn' => 'Sn',
            'tag1' => 'Tag1',
            'tag2' => 'Tag2',
            'load' => 'Load',
            'sc' => 'Sc',
            'hdiw1' => 'Hdiw1',
            'tex1' => 'Tex1',
            'tex2' => 'Tex2',
            'hdiw2' => 'Hdiw2',
            'tex3' => 'Tex3',
            'tex4' => 'Tex4',
            'hdiw3' => 'Hdiw3',
            'hdiw4' => 'Hdiw4',
            'hf' => 'Hf',
            'hdiw5' => 'Hdiw5',
            'hdiw6' => 'Hdiw6',
            'hdiw7' => 'Hdiw7',
            'hdiw8' => 'Hdiw8',
            'akf' => 'Akf',
            'dry' => 'Dry',
        ];
    }
}
