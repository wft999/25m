<?php

use yii\helpers\Html;
use yii\grid\GridView;
use kartik\export\ExportMenu;
/* @var $this yii\web\View */
/* @var $searchModel app\models\DosingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Dosings';
$this->params['breadcrumbs'][] = $this->title;
?>
<?= ExportMenu::widget([
    'dataProvider' => $dataProvider,
    'columns' =>  [
            ['class' => 'yii\grid\SerialColumn'],
            ['class' => 'yii\grid\DataColumn',
            'attribute' => 'create_at',
            'format' => ['date', 'yyyy/MM/dd HH:mm:ss'],
            'label' => 'date',
            ],
            'tank',
            'chemical',
            'volume',
            'type',
            'car_amount',
        ]
]);?>
<div class="dosing-index">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            ['class' => 'yii\grid\DataColumn',
            'attribute' => 'create_at',
            'format' => ['date', 'yyyy/MM/dd HH:mm:ss'],
            'label' => 'date',
            ],
            'tank',
            'chemical',
            'volume',
            'type',
            'car_amount',
        ],
    ]); ?>

</div>
