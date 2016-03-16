<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Prod;

/**
 * ProdSearch represents the model behind the search form about `app\models\Prod`.
 */
class ProdSearch extends Prod
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'created_at', 'sn'], 'integer'],
            [['tag1', 'tag2', 'load', 'sc', 'hdiw1', 'tex1', 'tex2', 'hdiw2', 'tex3', 'tex4', 'hdiw3', 'hdiw4', 'hf', 'hdiw5', 'hdiw6', 'hdiw7', 'hdiw8', 'akf', 'dry'], 'safe'],
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
        $query = Prod::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->orderBy('created_at DESC');
        $query->andFilterWhere([
            'id' => $this->id,
            'created_at' => $this->created_at,
            'sn' => $this->sn,
        ]);

        $query->andFilterWhere(['like', 'tag1', $this->tag1])
            ->andFilterWhere(['like', 'tag2', $this->tag2])
            ->andFilterWhere(['like', 'load', $this->load])
            ->andFilterWhere(['like', 'sc', $this->sc])
            ->andFilterWhere(['like', 'hdiw1', $this->hdiw1])
            ->andFilterWhere(['like', 'tex1', $this->tex1])
            ->andFilterWhere(['like', 'tex2', $this->tex2])
            ->andFilterWhere(['like', 'hdiw2', $this->hdiw2])
            ->andFilterWhere(['like', 'tex3', $this->tex3])
            ->andFilterWhere(['like', 'tex4', $this->tex4])
            ->andFilterWhere(['like', 'hdiw3', $this->hdiw3])
            ->andFilterWhere(['like', 'hdiw4', $this->hdiw4])
            ->andFilterWhere(['like', 'hf', $this->hf])
            ->andFilterWhere(['like', 'hdiw5', $this->hdiw5])
            ->andFilterWhere(['like', 'hdiw6', $this->hdiw6])
            ->andFilterWhere(['like', 'hdiw7', $this->hdiw7])
            ->andFilterWhere(['like', 'hdiw8', $this->hdiw8])
            ->andFilterWhere(['like', 'akf', $this->akf])
            ->andFilterWhere(['like', 'dry', $this->dry]);

        return $dataProvider;
    }
}
