<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Prod */

$this->title = 'Update Prod: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Prods', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="prod-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
