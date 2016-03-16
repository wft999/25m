<?php

use yii\helpers\Html;
use yii\grid\GridView;
use kartik\export\ExportMenu;
/* @var $this yii\web\View */
/* @var $searchModel app\models\OperationSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Operations';
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
            'user',
            'tank',
            'content',
        ]
]);?>
<div class="operation-index">
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
            'user',
            'tank',
            'content',
        ],
    ]); ?>

</div>
