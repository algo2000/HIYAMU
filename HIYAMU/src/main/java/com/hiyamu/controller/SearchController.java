package com.hiyamu.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hiyamu.service.SearchService;
import com.hiyamu.vo.TagVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@RestController
public class SearchController
{
    @Autowired
    private SearchService searchService;

    @RequestMapping(value = "/search2")
    public List<TagVO> test(@RequestParam( value = "searchData") String searchData) throws Exception
    {
        List<TagVO> list = searchService.selectTagList(searchData);
        return list;
    }

    @RequestMapping(value = "/search", produces = MediaType.APPLICATION_JSON_VALUE)
    public Object search2() throws Exception
    {
        Resource resource = new PathMatchingResourcePatternResolver().getResource("classpath:/json/tags.json");
        try
        {
            ObjectMapper mapper = new ObjectMapper();
            return mapper.readValue(resource.getInputStream(),Object.class);
        }catch (IOException e)
        {
            e.printStackTrace();;
        }
        return null;
    }
}