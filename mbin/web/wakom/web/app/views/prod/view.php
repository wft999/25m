<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Prod */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Prods', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="prod-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'created_at',
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
        ],
    ]) ?>

</div>
