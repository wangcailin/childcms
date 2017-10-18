<?php

namespace app\admin\model;

use think\Model;

class ModelsField extends Model
{
    // 表名
    protected $name = 'models_field';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;
    
    // 追加属性
    protected $append = [

    ];
    

    public function addModelsField($modelid)
    {
        $row = [
            [
                'modelid'       => $modelid,
                'field'         => 'title',
                'name'          => "标题",
                'formtype'      => "text",
                'listorder'     => 0
            ],
            [
                'modelid'       => $modelid,
                'field'         => 'description',
                'name'          => "摘要",
                'formtype'      => "textarea",
                'listorder'     => 0
            ],
            [
                'modelid'       => $modelid,
                'field'         => 'image',
                'name'          => "图片",
                'formtype'      => "image",
                'listorder'     => 0
            ],
            [
                'modelid'       => $modelid,
                'field'         => 'content',
                'name'          => "内容",
                'formtype'      => "edit",
                'listorder'     => 0
            ],
            [
                'modelid'       => $modelid,
                'field'         => 'posids',
                'name'          => "推荐位",
                'formtype'      => "posid",
                'listorder'     => 0
            ],
        ];
        return $this->saveAll($row);
    }







}
