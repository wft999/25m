<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ProdSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="prod-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'created_at') ?>

    <?= $form->field($model, 'sn') ?>

    <?= $form->field($model, 'tag1') ?>

    <?= $form->field($model, 'tag2') ?>

    <?php // echo $form->field($model, 'load') ?>

    <?php // echo $form->field($model, 'sc') ?>

    <?php // echo $form->field($model, 'hdiw1') ?>

    <?php // echo $form->field($model, 'tex1') ?>

    <?php // echo $form->field($model, 'tex2') ?>

    <?php // echo $form->field($model, 'hdiw2') ?>

    <?php // echo $form->field($model, 'tex3') ?>

    <?php // echo $form->field($model, 'tex4') ?>

    <?php // echo $form->field($model, 'hdiw3') ?>

    <?php // echo $form->field($model, 'hdiw4') ?>

    <?php // echo $form->field($model, 'hf') ?>

    <?php // echo $form->field($model, 'hdiw5') ?>

    <?php // echo $form->field($model, 'hdiw6') ?>

    <?php // echo $form->field($model, 'hdiw7') ?>

    <?php // echo $form->field($model, 'hdiw8') ?>

    <?php // echo $form->field($model, 'akf') ?>

    <?php // echo $form->field($model, 'dry') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
