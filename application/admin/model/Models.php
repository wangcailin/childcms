<?php

namespace app\admin\model;

use think\Model;
use think\Db;

class Models extends Model
{
    // 表名
    protected $name = 'models';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;
    
    // 追加属性
    protected $append = [
        'addtime_text'
    ];
    

    



    public function getAddtimeTextAttr($value, $data)
    {
        $value = $value ? $value : $data['addtime'];
        return is_numeric($value) ? date("Y-m-d H:i:s", $value) : $value;
    }

    protected function setAddtimeAttr($value)
    {
        return $value && !is_numeric($value) ? strtotime($value) : $value;
    }

    /**
     * 添加模型
     */
    public function addModels($data)
    {
        $row = [
            'name'      => $data['name'],
            'tablename' => $data['tablename'],
            'addtime'   => time(),
            'disabled'  => $data['disabled'],
            'sort'      => $data['sort']
        ];
        $this->save($row);

        return $modelid = $this->modelid;
    }


}
