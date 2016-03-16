<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\DosingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Dosings';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dosing-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Dosing', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'create_at',
            'tank',
            'chemical',
            'volume',
            // 'type',
            // 'car_amount',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
