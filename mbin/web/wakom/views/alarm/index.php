<?php

use yii\helpers\Html;
use yii\grid\GridView;
use kartik\export\ExportMenu;
/* @var $this yii\web\View */
/* @var $searchModel app\models\AlarmSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Alarms';
$this->params['breadcrumbs'][] = $this->title;
?>
<?= ExportMenu::widget([
    'dataProvider' => $dataProvider,
    'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            ['class' => 'yii\grid\DataColumn',
            'attribute' => 'created_at',
            'format' => ['date', 'yyyy/MM/dd HH:mm:ss'],
            'label' => 'date',
            ],
            'alarm_code',
            'alarm_message',
        ]
]);?>
<div class="alarm-index">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            ['class' => 'yii\grid\DataColumn',
            'attribute' => 'created_at',
            'format' => ['date', 'yyyy/MM/dd HH:mm:ss'],
            'label' => 'date',
            ],
            'alarm_code',
            'alarm_message',
        ],
    ]); ?>

</div>
