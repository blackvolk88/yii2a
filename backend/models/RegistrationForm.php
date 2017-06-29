<?php

namespace app\models;

use dektrium\user\models\RegistrationForm as BaseRegistrationForm;
use dektrium\user\models\User;

class RegistrationForm extends BaseRegistrationForm
{
    public $name;
    public $sname;
    public $sex;

    public function rules()
    {
        $rules = parent::rules();
        $rules[] = ['name', 'required'];
        $rules[] = ['sname', 'required'];
        $rules[] = ['sex', 'required'];
        return $rules;
    }

    public function attributeLabels()
    {
        $labels = parent::attributeLabels();
        $labels['name'] = \Yii::t('user', 'Name');
        $labels['sname'] = \Yii::t('user', 'Surname');
        $labels['sex'] = \Yii::t('user', 'Sex');
        return $labels;
    }

//    public function loadAttributes(User $user)
//    {
//        $user->setAttributes($this->attributes);
//    }
}