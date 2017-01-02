$(document).ready(function() {
	if ($.fn.dataTable) {
		$.extend(true, $.fn.dataTable.defaults, {
			serverSide: true,
			pagingType: "full_numbers",
			language : {
				info : "显示第 _START_ - _END_ 条记录，共 _TOTAL_ 条",
				lengthMenu : "显示 _MENU_ 条记录",
				zeroRecords : "没有符合条件的记录",
				infoEmpty : " ",
				emptyTable : "没有符合条件的记录",
				search : "查询：",
				paginate : {
					first : "<<", last : ">>", previous : "<", next : ">"
				}
			}
		});
	}
		
	/**
	 * 时间对象的格式化
	 */
	Date.prototype.format = function(format) {
		/*
		 * eg:format="yyyy-MM-dd hh:mm:ss";
		 */
		var o = {
			"M+" : this.getMonth() + 1,
			"d+" : this.getDate(),
			"H+" : this.getHours(),
			"m+" : this.getMinutes(),
			"s+" : this.getSeconds(),
			"q+" : Math.floor((this.getMonth() + 3) / 3),
			"S" : this.getMilliseconds()
		};

		if (/(y+)/.test(format)) {
			format = format.replace(RegExp.$1,
					(this.getFullYear() + "")
							.substr(4 - RegExp.$1.length));
		}

		for ( var k in o) {
			if (new RegExp("(" + k + ")").test(format)) {
				format = format.replace(RegExp.$1,
						RegExp.$1.length == 1 ? o[k] : ("00" + o[k])
								.substr(("" + o[k]).length));
			}
		}
		return format;
	};
});