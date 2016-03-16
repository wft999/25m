<?php

use yii\helpers\Html;
use yii\grid\GridView;
use kartik\export\ExportMenu;
/* @var $this yii\web\View */
/* @var $searchModel app\models\ProdSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Prods';
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
            'sn',
            'tag1',
            'tag2',
             'load',
             'sc',
             'hdiw1',
             'tex1',
             'tex2',
             'hdiw2',
             'tex3',
             'tex4',
             'hdiw3',
             'hdiw4',
             'hf',
             'hdiw5',
             'hdiw6',
             'hdiw7',
             'hdiw8',
             'akf',
             'dry',
        ]
]);?>
<div class="prod-index">
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
