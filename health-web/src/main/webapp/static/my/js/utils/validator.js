jQuery.extend(jQuery.validator.messages, {
	required: "必填字段",
	remote: "请修正此字段",
	email: "电子邮件格式不正确",
	url: "网址格式不正确",
	date: "日期不合法",
	dateISO: "日期 (ISO)不合法",
	number: "只能输入数字",
	digits: "只能输入整数",
	creditcard: "信用卡号不合法",
	equalTo: "请再次输入相同的值",
	accept: "请输入拥有合法后缀名的字符串",
	maxlength: jQuery.validator.format("请输入一个长度最多是 {0} 的字符串"),
	minlength: jQuery.validator.format("请输入一个长度最少是 {0} 的字符串"),
	rangelength: jQuery.validator.format("请输入一个长度介于 {0} 和 {1} 之间的字符串"),
	range: jQuery.validator.format("请输入一个介于 {0} 和 {1} 之间的值"),
	max: jQuery.validator.format("请输入一个最大为{0} 的值"),
	min: jQuery.validator.format("请输入一个最小为{0} 的值")
});

/* 自定义校验 */
$.validator.addMethod("zipCode", function(value, element, param) {
	var tel = /^[0-9]{6}$/;
	return this.optional(element) || (tel.test(value));
}, "邮政编码为6位数字");