<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Dosing */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="dosing-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'create_at')->textInput() ?>

    <?= $form->field($model, 'tank')->textInput(['maxlength' => 8]) ?>

    <?= $form->field($model, 'chemical')->textInput(['maxlength' => 8]) ?>

    <?= $form->field($model, 'volume')->textInput() ?>

    <?= $form->field($model, 'type')->textInput(['maxlength' => 8]) ?>

    <?= $form->field($model, 'car_amount')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
