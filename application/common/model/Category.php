<?php

namespace app\common\model;

use think\Model;
use think\Db;

/**
 * 分类模型
 */
class Category Extends Model
{

    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    // 追加属性
    protected $append = [
        'type_text',
        //'flag_text',
    ];

    /**
     * 读取分类类型
     * @return array
     */
    public static function getTypeList()
    {
        $typeList = config('site.categorytype');
        foreach ($typeList as $k => &$v)
        {
            $v = __($v);
        }
        return $typeList;
    }

    public function getTypeTextAttr($value, $data)
    {
        $value = $value ? $value : $data['type'];
        $list = $this->getTypeList();
        return isset($list[$value]) ? $list[$value] : '';
    }

//    public function getFlagList()
//    {
//        return ['hot' => __('Hot'), 'index' => __('Index'), 'recommend' => __('Recommend')];
//    }

//    public function getFlagTextAttr($value, $data)
//    {
//        $value = $value ? $value : $data['flag'];
//        $valueArr = explode(',', $value);
//        $list = $this->getFlagList();
//        return implode(',', array_intersect_key($list, array_flip($valueArr)));
//    }

    /**
     * 获取模型列表
     */
    public static function getModelList()
    {
        $modelList = Db::table(config('database.prefix').'models')
                        ->field('modelid, name')
                        ->where('disabled', '1')
                        ->select();
        return $modelList;
    }

    /**
     * 读取分类列表
     * @param string $type 指定类型
     * @param string $status 指定状态
     * @return array
     */
    public static function getCategoryArray($type = NULL, $status = NULL)
    {
        $list = collection(self::where(function($query) use($type, $status) {
                    if (!is_null($type))
                    {
                        $query->where('type', '=', $type);
                    }
                    if (!is_null($status))
                    {
                        $query->where('status', '=', $status);
                    }
                })->order('id', 'desc')->select())->toArray();
        return $list;
    }

    /**
     * 读取栏目关联模型数据
     * @return false|\PDOStatement|string|\think\Collection
     */
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
