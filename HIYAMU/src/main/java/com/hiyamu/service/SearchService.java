package com.hiyamu.service;

import com.hiyamu.vo.TagVO;

import java.util.List;

public interface SearchService
{
    List<TagVO> selectTagList(String searchData) throws Exception;
}
