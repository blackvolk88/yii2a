<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\helpers\Url;
//use app\models\User;

/**
 * ContactForm is the model behind the contact form.
 */
class ContactForm extends Model
{
//    public $name;
    public $email;
    public $role;
//    public $body;
//    public $verifyCode;


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            // name, email, subject and body are required
            [['email', 'role'], 'required'],
            // email has to be a valid email address
            ['email', 'email'],
            // verifyCode needs to be entered correctly
//            ['verifyCode', 'captcha'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'verifyCode' => 'Verification Code',
        ];
    }

    /**
     * Sends an email to the specified email address using the information collected by this model.
     *
     * @param string $email the target email address
     * @return bool whether the email was sent
     */
    public function sendEmail($email)
    {
//        return Yii::$app->mailer->compose()
//            ->setTo($email)
//            ->setFrom([$this->email => $this->name])
//            ->setSubject($this->subject)
//            ->setTextBody($this->body)
//            ->send();
 //      $user = new User();
//        $authToken = $user->generateAuthToken();



        $resetLink = Yii::$app->urlManager->createAbsoluteUrl(
            [
                '/site/signup',
                'key' => Yii::$app->getSecurity()->generateRandomString(32),
                'roleName' => $this->role
            ]
        );

        return Yii::$app
            ->mailer
            ->compose(
                ['@app/modules/user/mails/emailConfirm']
            )
            ->setFrom([Yii::$app->params['supportEmail'] => Yii::$app->name . ' robot'])
            ->setTo($this->email)
            ->setHtmlBody($resetLink)
            ->setSubject('Do u want to join us? ' . Yii::$app->name)
            ->send();

    }
}
