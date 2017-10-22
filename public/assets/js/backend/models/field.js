define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: window.location.href,
                    add_url: 'models/field/add',
                    edit_url: 'models/field/edit',
                    del_url: 'models/field/del',
                    multi_url: 'models/field/multi',
                    table: 'models_field',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'fieldid',
                sortName: 'fieldid',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'fieldid', title: __('Fieldid')},
                        {field: 'modelid', title: __('Modelid')},
                        {field: 'field', title: __('Field')},
                        {field: 'name', title: __('Name')},
                        {field: 'formtype', title: __('Formtype')},
                        {field: 'listorder', title: __('Listorder')},
                        {field: 'disabled', title: __('Disabled')},
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