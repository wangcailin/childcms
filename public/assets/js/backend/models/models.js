define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'models/models/index',
                    add_url: 'models/models/add',
                    edit_url: 'models/models/edit',
                    del_url: 'models/models/del',
                    multi_url: 'models/models/multi',
                    table: 'models',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'modelid',
                sortName: 'modelid',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'modelid', title: __('Modelid')},
                        {field: 'name', title: __('Name')},
                        {field: 'tablename', title: __('Tablename')},
                        {field: 'addtime', title: __('Addtime'), formatter: Table.api.formatter.datetime},
                        {field: 'items', title: __('Items')},
                        {field: 'disabled', title: __('Disabled')},
                        {field: 'sort', title: __('Sort')},
                        {field: 'operate', title: __('Operate'), table: table, buttons: [{name: 'detail', text: '字段管理', title: '字段管理', icon: 'fa fa-list', classname: 'btn btn-xs btn-primary addtabsit', url: 'models/field/index'}], events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});