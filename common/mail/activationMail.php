<?php
use yii\helpers\Html;
use yii\helpers\Url;


$resetLink = Yii::$app->urlManager->createAbsoluteUrl(
    [
        '/controllerAssign/activateAccount',
        'key' => Yii::$app->getSecurity()->generateRandomString(32)
    ]
);


?>
<p><?= Html::a(Html::encode($resetLink), $resetLink) ?></p>