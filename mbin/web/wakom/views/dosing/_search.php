<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\DosingSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="dosing-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'create_at') ?>

    <?= $form->field($model, 'tank') ?>

    <?= $form->field($model, 'chemical') ?>

    <?= $form->field($model, 'volume') ?>

    <?php // echo $form->field($model, 'type') ?>

    <?php // echo $form->field($model, 'car_amount') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
