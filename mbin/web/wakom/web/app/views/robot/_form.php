<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Robot */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="robot-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'craeted_at')->textInput() ?>

    <?= $form->field($model, 'robot_name')->textInput(['maxlength' => 8]) ?>

    <?= $form->field($model, 'tank_name')->textInput(['maxlength' => 8]) ?>

    <?= $form->field($model, 'command')->textInput(['maxlength' => 8]) ?>

    <?= $form->field($model, 'status')->textInput(['maxlength' => 8]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
