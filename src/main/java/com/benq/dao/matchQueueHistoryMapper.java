package com.benq.dao;

import com.benq.model.matchQueueHistory;

public interface matchQueueHistoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(matchQueueHistory record);

    int insertSelective(matchQueueHistory record);

    matchQueueHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(matchQueueHistory record);

    int updateByPrimaryKey(matchQueueHistory record);
}