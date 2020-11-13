package com.hiyamu.controller;

import com.hiyamu.service.SearchService;
import com.hiyamu.vo.TagVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class SearchController
{
    @Autowired
    private SearchService searchService;
//  사용시 @RestController 사용 불
//    @RequestMapping("/search2")
//    public String boardList(Model model) throws Exception {
//
//        List<TagVO> list = searchService.selectTagList("");
//        model.addAttribute("list", list);
//        return "search/search";
//    }\

    @RequestMapping(value = "/search")
    public List<TagVO> test(@RequestParam( value = "searchData") String searchData) throws Exception
    {
        List<TagVO> list = searchService.selectTagList(searchData);
        System.out.println(list);
        return list;
    }
}