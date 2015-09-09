package com.scau.beyondboy.controller;
import com.scau.beyondboy.model.CityEntity;
import com.scau.beyondboy.services.CityServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/4
 * Time: 13:40
 */
@Controller
public class CityController
{
    @Qualifier("cityServices")
    @Autowired
    CityServices cityServices;
    @RequestMapping(value = "/city",method = RequestMethod.GET)
    @ResponseBody
    public  List<CityEntity> getAllCity()
    {
        return cityServices.getAllCity();
    }
}
