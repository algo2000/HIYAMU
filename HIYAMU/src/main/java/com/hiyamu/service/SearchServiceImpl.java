package com.hiyamu.service;

import com.hiyamu.dao.SearchDAO;
import com.hiyamu.vo.TagVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class SearchServiceImpl implements SearchService
{
    @Autowired
    private SearchDAO searchDAO;

    @Override
    public List<TagVO> selectTagList(String searchData) throws Exception
    {
        return searchDAO.selectTagList(searchData);
    }
}
