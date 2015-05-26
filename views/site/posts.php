<?php

/* @var $posts Post[] */
use app\models\Post;
use yii\helpers\Html;

?>
<?php foreach ($posts as $post) { ?>
    <div class="panel">
        <div class="panel-heading">
            <?= Html::encode($post->title) ?>
        </div>
        <div class="panel-body">
            <?= Html::encode($post->desc) ?>
        </div>
    </div>
<?php } ?>
