# 充电历史信息new
## 接口信息

**API Path**
/user/log/get

**请求协议**
HTTP

**请求方法**
GET

**相关人员**  
负责人:wyc2002  
创建人:wyc2002  
最后编辑人:wyc2002  
**自定义字段**  

**Query参数**：
| 参数名 | 说明 | 必填 | 类型 | 限制 | 示例 |
| :------------ | :------------ | :------------ | :------------ | :------------ | :------------ | :------------ |
|token|用户唯一识别token|是|[string]||kjahkvrtbiabytiusbytuiv|
|num|返回的个数，如果不填写则默认返回10个|是|[int]||10|

**响应内容**：

**返回结果**
>成功 (200)
Json
Object

| 参数名  | 说明 | 必填 | 类型 | 值可能性 | 限制 | 示例 |
| :------------ | :------------ | :------------ | :------------ | :------------ | :------------ | :------------ |
|code|返回的错误码|是|[number]| ||200|
|msg|提示信息|是|[string]| ||查询成功|
|log|返回的日志信息|是|[array]| ||[{"id":"订单的id","time":"2023-05-08 14:25:10","stationId":1,"quantity":100.5,"timeOfUse":"使用的总时间","startTime":"2023-05-08 14:25:10","endTime":"2023-05-08 14:25:10","costOfCharge":5.5,"costOfService":4.5,"cost":10},{"id":"订单的id","time":"2023-05-08 14:25:10","stationId":1,"quantity":100.5,"timeOfUse":"使用的总时间","startTime":"2023-05-08 14:25:10","endTime":"2023-05-08 14:25:10","costOfCharge":5.5,"costOfService":4.5,"cost":10}]|
|log>>id|订单id|是|[string]| ||订单的id|
|log>>time|订单提交时间|是|[string]| ||2023-05-08 14:25:10|
|log>>stationId|使用的充电桩id|是|[number]| ||1|
|log>>quantity|充电量|是|[number]| ||100.5|
|log>>timeOfUse|充电的总时间|是|[string]| ||使用的总时间|
|log>>startTime|充电开始时间|是|[string]| ||2023-05-08 14:25:10|
|log>>endTime|充电结束时间|是|[string]| ||2023-05-08 14:25:10|
|log>>costOfCharge|充电费用|是|[number]| ||5.5|
|log>>costOfService|服务费用|是|[number]| ||4.5|
|log>>cost|总费用|是|[number]| ||10|
