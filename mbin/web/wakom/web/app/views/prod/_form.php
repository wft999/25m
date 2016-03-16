<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Prod */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="prod-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'sn')->textInput() ?>

    <?= $form->field($model, 'tag1')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'tag2')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'load')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'sc')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'hdiw1')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'tex1')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'tex2')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'hdiw2')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'tex3')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'tex4')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'hdiw3')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'hdiw4')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'hf')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'hdiw5')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'hdiw6')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'hdiw7')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'hdiw8')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'akf')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'dry')->textInput(['maxlength' => 32]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
