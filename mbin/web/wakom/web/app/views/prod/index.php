<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ProdSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Prods';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="prod-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Prod', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'created_at',
            'sn',
            'tag1',
            'tag2',
            // 'load',
            // 'sc',
            // 'hdiw1',
            // 'tex1',
            // 'tex2',
            // 'hdiw2',
            // 'tex3',
            // 'tex4',
            // 'hdiw3',
            // 'hdiw4',
            // 'hf',
            // 'hdiw5',
            // 'hdiw6',
            // 'hdiw7',
            // 'hdiw8',
            // 'akf',
            // 'dry',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
