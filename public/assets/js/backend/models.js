define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'models/index',
                    add_url: 'models/add',
                    edit_url: 'models/edit',
                    del_url: 'models/del',
                    multi_url: 'models/multi',
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
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
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