<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Dosing */

$this->title = 'Create Dosing';
$this->params['breadcrumbs'][] = ['label' => 'Dosings', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dosing-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
