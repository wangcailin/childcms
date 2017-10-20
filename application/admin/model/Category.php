<?php

namespace app\admin\model;

use think\Model;
use think\Db;

class Category extends Model
{
    // 表名
    protected $name = 'category';

    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;


    public function getAddtimeTextAttr($value, $data)
    {
        $value = $value ? $value : $data['addtime'];
        return is_numeric($value) ? date("Y-m-d H:i:s", $value) : $value;
    }

    protected function setAddtimeAttr($value)
    {
        return $value && !is_numeric($value) ? strtotime($value) : $value;
    }

    public function getCategoyModels()
    {
        $result = Db::table(config('database.prefix').$this->name)
            ->alias('a')
            ->join(config('database.prefix').'models b', 'a.modelid = b.modelid', 'LEFT')
            ->field('a.*, b.name as modelid')
            ->order('listorder desc,id desc')
            ->select();
        return $result;
    }
}
