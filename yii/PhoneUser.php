<?php

namespace app\models;

use yii\db\ActiveRecord;

class PhoneUser extends ActiveRecord
{
    public $phones = [];

    public static function tableName()
    {
        return 'phone_user';
    }

    public function attributes()
    {
        $attributes = parent::attributes();
        $attributes[] = 'phones';
        return $attributes;
    }

    public function fields()
    {
        return $this->attributes();
    }


    public function rules()
    {
        return [
            [['name', 'surname', 'midname'], 'required'],
            [['name', 'surname', 'midname', 'phones'], 'safe'],
        ];
    }

    public function afterFind()
    {
        parent::afterFind();
        foreach (PhoneItem::findAll(['user_id' => $this->id]) as $phoneItem) {
            $this->phones[] = $phoneItem->number;
        }
    }

    public function beforeSave($insert)
    {
        $this->edit_date = date('Y-m-d H:i:s');
        return parent::beforeSave($insert);
    }


    public function afterSave($insert, $changedAttributes)
    {
        parent::afterSave($insert, $changedAttributes);
        PhoneItem::deleteAll('[[user_id]] = :id', ['id' => $this->id]);
        if ($this->phones) {
            PhoneItem::deleteAll('[[user_id]] = :id', ['id' => $this->id]);
            foreach ($this->phones as $phone) {
                $phone_item = new PhoneItem();
                $phone_item->user_id = $this->id;
                $phone_item->number = (int)$phone;
                $phone_item->save();
            }
        }
    }


    public function afterDelete()
    {
        parent::afterDelete();
        PhoneItem::deleteAll('[[user_id]] = :id', ['id' => $this->id]);
    }

    public function toArray(array $fields = [], array $expand = [], $recursive = true)
    {
        $result = parent::toArray($fields, $expand, $recursive);

        return $result;
    }
}
