package cn.han.utils;

import org.apache.ibatis.session.ResultContext;
import org.apache.ibatis.session.ResultHandler;

import java.util.HashMap;
import java.util.Map;

public class MapResultHandler implements ResultHandler {

    @SuppressWarnings("rawtypes")
    private final Map mappedResults = new HashMap();

    @SuppressWarnings("unchecked")
    @Override
    public void handleResult(ResultContext resultContext) {
        @SuppressWarnings("rawtypes")
        Map map = (Map) resultContext.getResultObject();
        mappedResults.put(map.get("key"),map.get("value"));
    }

    @SuppressWarnings("rawtypes")
    public Map getMappedResults(){
        return mappedResults;
    }
}
