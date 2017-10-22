<?php

namespace app\admin\controller\models;

use app\common\controller\Backend;

use think\Controller;
use think\Request;

/**
 * 模型字段管理
 *
 * @icon fa fa-circle-o
 */
class Field extends Backend
{
    
    /**
     * ModelsField模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('ModelsField');
    }

    public function index($ids = NULL)
    {
        if ($this->request->isAjax()) {
            $list = $this->model->getModelsField($ids);
            $total = count($list);
            $result = array("total" => $total, "rows" => $list);
            return json($result);
        }
        return $this->view->fetch();
    }

    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个方法
     * 因此在当前控制器中可不用编写增删改查的代码,如果需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */
    

}
