package com.hiyamu.dao;

import com.hiyamu.vo.TagVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface SearchDAO
{
    List<TagVO> selectTagList(
            @Param("searchData") String searchData
    ) throws Exception;
}
