<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\RobotSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Robots';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="robot-index">
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
            'robot_name',
            'tank_name',
            'command',
            'status',
        ],
    ]); ?>

</div>
