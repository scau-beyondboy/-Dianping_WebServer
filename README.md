#Dianping_WebServer
**服务器端是采用springmvc4和hibernate4框架来实现，主要实现用户操作，商品操作，店铺操作，商品查询等基本功能，所有返回数据都是json格式，具体请求可以看控制层的控制类。**
**商品分类操作：**
```
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/9
 * Time: 10:26
 */
@Controller
public class CategoryController
{
    @Qualifier("categoryServices")
    @Autowired
    CategoryServices categoryServices;
    @RequestMapping(value = "/category/list",method = RequestMethod.GET)
    @ResponseBody
    public List<Category> getCategoryList()
    {
        return categoryServices.getCategoryList();
    }
    @RequestMapping(value = "/category/total",method = RequestMethod.GET)
    @ResponseBody
    public long getCategoryTotal()
    {
        return categoryServices.getCategoryTotal();
    }
    @RequestMapping(value = "/category",method = RequestMethod.GET)
    @ResponseBody
    public List<Category> getCategoryData()
    {
        return categoryServices.getCategoryData();
    }
}

```
**对应返回数据：**
**http://localhost:8080/category/list**
```
[
  {
    "categoryId": 1,
    "categoryNumber": 6
  },
  {
    "categoryId": 3,
    "categoryNumber": 2
  }
 ]
```
**http://localhost:8080/category/total**
```
30
```
**http://localhost:8080/category**
```
[
  {
    "categoryId": 0,
    "categoryNumber": 30
  }
]
```
**用户操作：**
```
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/28
 * Time: 0:06
 */
@Controller
public class UserController
{
    @Autowired
    UserServices userServices;
    @RequestMapping(value = "/user",method = RequestMethod.GET)
    @ResponseBody
    public ResponseObject user(@RequestParam(value = "username") String username, @RequestParam(value = "password") String password, @RequestParam(value = "flag") String flag)
    {
        return userServices.user(username, password, flag);
    }
}
```
**http://localhost:8080/user?username=beyondboy&password=080808&flag=login**
```
{
  "msg": "登录成功！",
  "state": 1,
  "datas": {
    "userId": 1,
    "userName": "beyondboy",
    "userLoginPwd": "080808",
    "userPayPwd": "",
    "userTel": ""
  },
  "page": 0,
  "size": 0,
  "count": 0
}```