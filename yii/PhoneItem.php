<?php

namespace app\models;

use yii\db\ActiveRecord;

class PhoneItem extends ActiveRecord
{
    public static function tableName()
    {
        return 'phone_item';
    }

    public function rules()
    {
        return [
            ['number', 'integer'],
        ];
    }
}
