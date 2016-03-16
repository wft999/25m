<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "operation".
 *
 * @property integer $id
 * @property integer $created_at
 * @property string $user
 * @property string $tank
 * @property string $content
 */
class Operation extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'operation';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['created_at', 'user', 'tank', 'content'], 'required'],
            [['created_at'], 'integer'],
            [['user', 'tank'], 'string', 'max' => 16],
            [['content'], 'string', 'max' => 128]
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
            'user' => 'User',
            'tank' => 'Tank',
            'content' => 'Content',
        ];
    }
}
