package cn.han.utils;

import cn.han.mapper.SeatsMapper;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;
import java.util.Map;

@Repository
public class MapperSessionMapper extends SqlSessionDaoSupport {
    //namespace : XxxMapper.xml 中配置的地址（XxxMapper.xml的qualified name）
    //.selectXxxxNum : XxxMapper.xml 中配置的方法名称
    //this.getSqlSession().select(namespace+".selectXxxxNum", handler);

    @Resource
    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        super.setSqlSessionFactory(sqlSessionFactory);
    }

    @SuppressWarnings("unchecked")
    public Map<Integer,String> queryIdOccupiedAreaFlag(String train_number) {
        MapResultHandler handler = new MapResultHandler();
        // this.getSqlSession().select(namespace+".methodName", handler);
        // namespace: xxxdao.xml文件中mapper的namespace值
        // methodName:xxxdao.xml文件中定义的方法名queryNameAge
        this.getSqlSession().select(SeatsMapper.class.getName()+".queryIdOccupiedAreaFlag",train_number, RowBounds.DEFAULT, handler);
        Map<Integer,String> map = handler.getMappedResults();
        return map;
    }
}
