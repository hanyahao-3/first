package cn.han.controller;

import cn.han.entity.Announcements;
import cn.han.service.AnnouncementsService;
import cn.han.utils.Consts;
import cn.han.utils.test1.SystemContext;
import cn.han.utils.test1.UUIDUtils;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/mOperationA")
public class mOperation_announcements {
    @Autowired
    private AnnouncementsService announcementsService;


    /*增加公告*/
    @RequestMapping("/addAnnouncements")
    public String addAnnouncements(Announcements announcements){
        announcements.setAdd_time(new Date());
        announcementsService.insertEntity(announcements);
        return "/manager/AnnouncementsOperation/announcements-add";
    }

    /*修改公告*//*
    @RequestMapping("/updateAnnouncements")
    public String updateAnnouncements(Announcements announcements){

    }*/

    /*删除公告*/
    @ResponseBody
    @RequestMapping("/deleteAnnouncement")
    private Object deleteAnnouncement(Integer id){
        int i = announcementsService.deleteById(id);
        JSONObject jsonObject = new JSONObject();
        if (i>0){
            jsonObject.put(Consts.RES,1);
            return jsonObject;
        }else{
            jsonObject.put(Consts.RES,0);
            return jsonObject;
        }
    }


}

