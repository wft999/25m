<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Dosing;

/**
 * DosingSearch represents the model behind the search form about `app\models\Dosing`.
 */
class DosingSearch extends Dosing
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'create_at', 'car_amount'], 'integer'],
            [['tank', 'chemical', 'type'], 'safe'],
            [['volume'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Dosing::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }
        $query->orderBy('create_at DESC');
        $query->andFilterWhere([
            'id' => $this->id,
            'create_at' => $this->create_at,
            'volume' => $this->volume,
            'car_amount' => $this->car_amount,
        ]);

        $query->andFilterWhere(['like', 'tank', $this->tank])
            ->andFilterWhere(['like', 'chemical', $this->chemical])
            ->andFilterWhere(['like', 'type', $this->type]);

        return $dataProvider;
    }
}
