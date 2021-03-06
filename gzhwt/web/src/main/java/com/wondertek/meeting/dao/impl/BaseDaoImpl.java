package com.wondertek.meeting.dao.impl;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.wondertek.meeting.common.Constants;
import com.wondertek.meeting.common.Pager;
import com.wondertek.meeting.common.Validity;
import com.wondertek.meeting.dao.BaseDao;
import com.wondertek.meeting.exception.HibernateDaoSupportException;
import com.wondertek.meeting.model.GroupPlan;

/**
 * 
 * @param <T>
 *            your inject object's type
 * @param <PK>
 *            prime key
 */
public abstract class BaseDaoImpl<T, PK extends Serializable> extends
        HibernateDaoSupport implements BaseDao<T, PK> {

    protected Logger log = LoggerFactory.getLogger(this.getClass());
    
    
    private boolean isCacheQueries = true;

    public boolean isCacheQueries() {
        return isCacheQueries;
    }

    public void setCacheQueries(boolean isCacheQueries) {
        this.isCacheQueries = isCacheQueries;
    }

    /**
     * The <code>add(T entity)</code> method is add object to database.
     * 
     * @param entity
     *            if you want to add entity.
     * 
     * @throws HibernateDaoSupportException
     *             Throws HibernateDaoSupportException when accessing and
     *             manipulating database happen exception.
     */
    @Transactional(rollbackFor = Exception.class)
    public PK add(T entity) throws HibernateDaoSupportException {
        if (null == entity) {
            throw new HibernateDaoSupportException("Param(#"
                    + this.getClass().getName() + ") with value null");
        }

        try {
            PK pk = (PK)this.getHibernateTemplate().save(entity);
            log.debug("Executing save method is successful!");
            return pk;
        } catch (DataAccessException e) {
            log.error("Error saving entity:{}", e);
            throw new HibernateDaoSupportException("Error saving (#"
                    + this.getClass().getName() + "#):" + e);
        }
    }
    
    
    /**
     * 更新或保存实体
     * @param entity
     */
    public void saveOrUpdateEntity(T entity){
    	this.getHibernateTemplate().saveOrUpdate(entity);
    }

    /**
     * The <code>delete(T entity)</code> method is delete object to database.
     * 
     * @param entity
     *            if you want to delete entity.
     * 
     * @throws HibernateDaoSupportException
     *             Throws HibernateDaoSupportException when accessing and
     *             manipulating database happen exception.
     */
    @Transactional(rollbackFor = Exception.class)
    public void delete(T entity) throws HibernateDaoSupportException {
        if (null == entity) {
            throw new HibernateDaoSupportException("Param(#"
                    + this.getClass().getName() + ") with value null");
        }

        try {
            this.getHibernateTemplate().delete(entity);
            log.debug("Execute delete method is successful!");
        } catch (DataAccessException e) {
            log.error("Error deleting entity:{}", e);
            throw new HibernateDaoSupportException("Error deleting (#"
                    + this.getClass().getName() + "#):" + e);
        }
    }

    /**
     * The <code>find(T entity)</code> method is find object according object
     * type.
     * 
     * @param entity
     *            if you want to find class condition.
     * @return List<T> according entity to find object's connection.
     * @throws HibernateDaoSupportException
     *             Throws HibernateDaoSupportException when accessing and
     *             manipulating database happen exception.
     * 
     */
    @SuppressWarnings("unchecked")
    public List<T> find(T entity) throws HibernateDaoSupportException {
        if (null == entity) {
            throw new HibernateDaoSupportException("Param(#"
                    + this.getClass().getName() + ") with value null");
        }

        List lists = null;
        try {
            if (isCacheQueries) {
                this.getHibernateTemplate().setCacheQueries(true);
            } else {
                isCacheQueries = true;
                this.getHibernateTemplate().setCacheQueries(false);
            }
            lists = (List<T>) this.getHibernateTemplate().findByExample(entity);
            log.debug("Execute find method is successful!");
        } catch (DataAccessException e) {
            log.error("Error finding entity: {}", e);
            throw new HibernateDaoSupportException("Error finding (#"
                    + this.getClass().getName() + "#):" + e);
        }

        return lists;
    }

    /**
     * find object's collection with class
     * 
     * @param clazz
     *            according class
     * @return Object's connection
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    @SuppressWarnings("unchecked")
    public List<T> find(Class<T> clazz) throws HibernateDaoSupportException {
        if (null == clazz) {
            throw new HibernateDaoSupportException(
                    "Param(#clazz) with value null");
        }
        String hql = "FROM " + clazz.getName();

        List<T> lists = null;
        try {
            if (isCacheQueries) {
                this.getHibernateTemplate().setCacheQueries(true);
            } else {
                isCacheQueries = true;
                this.getHibernateTemplate().setCacheQueries(false);
            }
            lists = (List<T>) this.getHibernateTemplate().find(hql);
            log.debug("Execute find method is successful!");
        } catch (DataAccessException e) {
            log.error("Error finding entity:{}", e);
            throw new HibernateDaoSupportException("Error finding (#"
                    + this.getClass().getName() + "#):" + e);
        }
        return lists;
    }

    /**
     * The <code>findById(PK id)</code> method is find object according
     * primary key.
     * 
     * @param id
     *            if you want to find object's primary key
     * @return T insject object
     * @throws HibernateDaoSupportException
     *             Throws HibernateDaoSupportException when accessing and
     *             manipulating database happen exception.
     */
    @SuppressWarnings("unchecked")
    public T findById(PK id, Class<T> clazz)
            throws HibernateDaoSupportException {
        if (null == id) {
            throw new HibernateDaoSupportException("PK with value null");
        }

        T entity = null;
        String hql = "FROM " + clazz.getName() + " n where n.id = ";
        
        if(id instanceof String){
        	hql +=  "'"+id+"'";
        }else{
        	hql += id;
        }
        try {
            //use 2 leave cache
            entity = (T) this.getUniqueBeanResult(hql);
            log.debug("Execute findById method is successful!");
        } catch (DataAccessException e) {
            log.error("Error finding entity:{}", e);
            throw new HibernateDaoSupportException("Error finding ("
                    + this.getClass().getName() + "):" + e);
        }
        return entity;

    }

    /**
     * The <code>queryList(PK startRecord, PK pageSize)</code> method is query
     * objects according startRecord and pagesize're number, object type is
     * according your implements this method's define type, and implements this
     * interface abstract class must be override all method and inject entity
     * type.
     * 
     * @param startRecord
     *            Where from the beginning to show this record
     * @param pageSize
     *            The number of records per page
     * @param clazz
     *            according class
     * @return List<T> T is your inject object's type, List is query all object
     *         connection
     * 
     * @throws HibernateDaoSupportException
     *             Throws HibernateDaoSupportException when accessing and
     *             manipulating database happen exception.
     */
    public List<T> queryList(int startRecord, int pageSize, Class<T> clazz)
            throws HibernateDaoSupportException {
        return queryList(null, startRecord, pageSize, clazz, null);
    }

    /**
     * find object's connection with hql class and param map
     * 
     * @param hql
     *            according hql if class param is null
     * @param startRecord
     *            Where from the beginning to show this record
     * @param pageSize
     *            the number of records per page
     * @param clazz
     *            according class
     * @param properties
     *            according param map
     * @return Object's connection
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    @SuppressWarnings("unchecked")
    public List<T> queryList(String hql, final int startRecord,
            final int pageSize, Class<T> clazz,
            final Map<String, Object> properties)
            throws HibernateDaoSupportException {
        if (hql == null && clazz == null) {
            throw new HibernateDaoSupportException(
                    "Param(#hql#) and param(#clazz#) is null");
        }
        if (clazz != null) {
            hql = "FROM " + clazz.getName();
        }
        final String queryHql = hql;
        try {
            return getHibernateTemplate().executeFind(new HibernateCallback() {
                public Object doInHibernate(Session session) {
                    Query query = session.createQuery(queryHql);
                    if (isCacheQueries) {
                        query.setCacheable(true);
                    } else {
                        isCacheQueries = true;
                        query.setCacheable(false);
                    }
                    if (!Validity.isEmpty(properties)) {
                        query.setProperties(properties);
                    }
                    if (startRecord >= 0 && pageSize >= 0) {
                        query.setFirstResult(startRecord).setMaxResults(
                                pageSize);
                    }
                    return query.list();
                }
            });
        } catch (DataAccessException e) {
            log.error("Error executing queryList ({}):{}", hql, e);
            throw new HibernateDaoSupportException(
                    "Error executing queryList (" + hql + "):" + e);
        }
    }

    /**
     * The <code>getRecordCount()</code> method is used for getting the total
     * count of records.
     * 
     * @return PK return total of record counts
     * @throws HibernateDaoSupportException
     *             Throws HibernateDaoSupportException when accessing and
     *             manipulating database happen exception.
     */
    public long getRecordCount(Class<T> clazz)
            throws HibernateDaoSupportException {
        String hql = "SELECT COUNT(*) FROM " + clazz.getName();
        Integer count = null;

        try {
            if (isCacheQueries) {
                this.getHibernateTemplate().setCacheQueries(true);
            } else {
                isCacheQueries = true;
                this.getHibernateTemplate().setCacheQueries(false);
            }
            count = ((Long) this.getHibernateTemplate().find(hql).iterator()
                    .next()).intValue();
            log.debug("Execute getRecordCount method is successful!");
        } catch (DataAccessException e) {
            log.error("Error getting count:{}", e);
            throw new HibernateDaoSupportException("Error getting count for ("
                    + this.getClass().getName() + "):" + e);
        }

        return count;
    }

    /**
     * get count with select hql and param map
     * 
     * @param selectHql
     *            according select hql
     * @param properties
     *            according param map
     * @return count of hql
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    public int getRecordCount(String selectHql, Map<String, Object> properties)
            throws HibernateDaoSupportException {
        String countHql = getCountHql(selectHql);
        return ((Long) getUniqueBeanResult(countHql, properties)).intValue();
    }

    /**
     * The <code>modifty(T entity)</code> method is update object to database.
     * 
     * @param entity
     *            if you want to update entity.
     * @throws HibernateDaoSupportException
     *             Throws HibernateDaoSupportException when accessing and
     *             manipulating database happen exception.
     */
    @Transactional(rollbackFor = Exception.class)
    public void modify(T entity) throws HibernateDaoSupportException {
        if (null == entity) {
            throw new HibernateDaoSupportException("Param(#"
                    + this.getClass().getName() + ") with value null");
        }
        try {
            this.getHibernateTemplate().update(entity);
            log.debug("Execute update method is successful!");
        } catch (DataAccessException e) {
            log.error("Error updating entity:{}", e);
            throw new HibernateDaoSupportException("Error updating (#"
                    + this.getClass().getName() + "#):" + e);
        }
    }

    /**
     * find page object's connection with class
     * 
     * @param clazz
     *            according class
     * @param currentPage
     *            current page
     * @param pageSize
     *            the number of records per page
     * @return Object's connection
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    public Pager<T> findPager(int currentPage, int pageSize, Class<T> clazz)
            throws HibernateDaoSupportException {
        return findPager(null, currentPage, pageSize, clazz, null);
    }

    /**
     * find page object's connection with hql and param map
     * 
     * @param hql
     *            according hql if class param is null
     * @param currentPage
     *            current page
     * @param pageSize
     *            the number of records per page
     * @param properties
     *            according param map
     * @return Object's connection
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    public Pager<T> findPager(String hql, int currentPage, int pageSize,
            Map<String, Object> properties) throws HibernateDaoSupportException {
        return findPager(hql, currentPage, pageSize, null, properties);
    }

    /**
     * find page object's connection with sql and param map
     * 
     * @param sql
     *            according sql if class param is null
     * @param currentPage
     *            current page
     * @param pageSize
     *            the number of records per page
     * @param properties
     *            according param map
     * @return Object's connection
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    @SuppressWarnings("unchecked")
    public Pager findPagerBySql(String sql, int currentPage,
            int pageSize, Map<String, Object> properties)
            throws HibernateDaoSupportException {
        log.debug("sql:{},currentPage:{},pageSize:{},propertie:{}",
                new Object[] { sql, currentPage, pageSize, properties });

        if (currentPage <= 0) {
//            throw new HibernateDaoSupportException(
//                    "Param(#currentPage#) value : { " + currentPage + " }");
        	currentPage = 1;
        }
        int totalRecords = 0;
        String countSql = getCountHql(sql);
//        this.getUniqueBeanResultSql(countSql, properties);
        totalRecords = ((BigInteger) this.getUniqueBeanResultSql(countSql,
                properties)).intValue();
        Pager page = new Pager();
        List list = null;
        page.setTotal(totalRecords);
        page.setPageSize(pageSize);
        page.setCurrentPage(currentPage);
        list = this.queryListSql(sql, (currentPage - 1) * pageSize, pageSize,
                properties);
        page.setPageRecords(list);
        return page;
    }

    /**
     * find object's connection with sql class and param map
     * 
     * @param sql
     *            according sql if class param is null
     * @param startRecord
     *            Where from the beginning to show this record
     * @param pageSize
     *            the number of records per page
     * @param properties
     *            according param map
     * @return Object's connection
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    @SuppressWarnings("unchecked")
    public List queryListSql(final String sql, final int startRecord,
            final int pageSize, final Map<String, Object> properties)
            throws HibernateDaoSupportException {
        if (sql == null) {
            throw new HibernateDaoSupportException("Param(#sql#) is null");
        }
        try {
            return getHibernateTemplate().executeFind(new HibernateCallback() {
                public Object doInHibernate(Session session) {
                    Query query = session.createSQLQuery(sql);
                    if (!Validity.isEmpty(properties)) {
                        query.setProperties(properties);
                    }
                    if (startRecord >= 0 && pageSize >= 0) {
                        query.setFirstResult(startRecord).setMaxResults(
                                pageSize);
                    }
                    return query.list();
                }
            });
        } catch (DataAccessException e) {
            log.error("Error executing queryList ({}):{}", sql, e);
            throw new HibernateDaoSupportException(
                    "Error executing queryList (" + sql + "):" + e);
        }
    }

    /**
     * find page object's connection with hql class and param map
     * 
     * @param hql
     *            according hql
     * @param currentPage
     *            current page
     * @param pageSize
     *            the number of records per page
     * @param clazz
     *            according class
     * @param properties
     *            according param map
     * @return Object's connection
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    private Pager<T> findPager(String hql, int currentPage, int pageSize,
            Class<T> clazz, Map<String, Object> properties)
            throws HibernateDaoSupportException {
        log.debug("hql:{},currentPage:{},pageSize:{},clazz:{},propertie:{}",
                new Object[] { hql, currentPage, pageSize, clazz, properties });
        boolean tempCacheQueries = isCacheQueries;
        if (currentPage <= 0) {
//            throw new HibernateDaoSupportException(
//                    "Param(#currentPage#) value : { " + currentPage + " }");
            currentPage = 1;
        }
        int totalRecords = 0;
        if (clazz != null) {
            totalRecords = (int)this.getRecordCount(clazz);//TODO long to int?
        } else {
            totalRecords = this.getRecordCount(hql, properties);
        }
        if (!tempCacheQueries) {
            isCacheQueries = false;
        }
        Pager<T> page = new Pager<T>();
        List<T> list = null;
        page.setTotal(totalRecords);
        page.setPageSize(pageSize);
        list = this.queryList(hql, (currentPage - 1) * pageSize, pageSize,
                clazz, properties);
        //直到找到有数据的页码为止
        while(list.size() == 0 && currentPage > 1){
        	currentPage= currentPage -1;
        	list = this.queryList(hql, (currentPage - 1) * pageSize, pageSize,
                    clazz, properties);
        }
        page.setCurrentPage(currentPage);
        page.setPageRecords(list);
        return page;
    }

    /**
     * find object's connection with hql
     * 
     * @param hql
     *            according hql
     * @return Object's connection
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    public List<T> getObjects(String hql) throws HibernateDaoSupportException {
        return getObjects(hql, new HashMap<String, Object>(0));
    }

    /**
     * find object's connection with hql and param map
     * 
     * @param hql
     *            according hql
     * @param properties
     *            according param map
     * @return Object's connection
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    @SuppressWarnings("unchecked")
    public List<T> getObjects(final String hql,
            final Map<String, Object> properties)
            throws HibernateDaoSupportException {
        log.debug("hql:{}, properties:{}", hql, properties);

        try {
            return getHibernateTemplate().executeFind(new HibernateCallback() {
                public Object doInHibernate(Session session) {
                    Query query = session.createQuery(hql);
                    if (isCacheQueries) {
                        query.setCacheable(true);
                    } else {
                        isCacheQueries = true;
                        query.setCacheable(false);
                    }
                    if (!Validity.isEmpty(properties)) {
                        query.setProperties(properties);
                    }
                    List<T> list = query.list();
                    return list;
                }
            });
        } catch (DataAccessException e) {
            log.error("Error getObjects:{}", e);
            throw new HibernateDaoSupportException("Error getObjects (#"
                    + this.getClass().getName() + "#):" + e);
        }
    }

    /**
     * find object with hql and param map
     * 
     * @param hql
     *            according hql
     * @param properties
     *            according param map
     * @return Object which find
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    public Object getUniqueBeanResult(final String hql,
            final Map<String, Object> properties)
            throws HibernateDaoSupportException {
        log.debug("hql:{}, properties:{}", hql, properties);

        try {
            return getHibernateTemplate().execute(new HibernateCallback() {
                public Object doInHibernate(Session session) {
                    Query query = session.createQuery(hql);
                    if (isCacheQueries) {
                        query.setCacheable(true);
                    } else {
                        isCacheQueries = true;
                        query.setCacheable(false);
                    }
                    if (!Validity.isEmpty(properties)) {
                        query.setProperties(properties);
                    }
                    Object object = query.uniqueResult();
                    return object;
                }
            });
        } catch (DataAccessException e) {
            log.error("Error getUniqueBeanResult:{}", e);
            throw new HibernateDaoSupportException(
                    "Error getUniqueBeanResult (#" + this.getClass().getName()
                            + "#):" + e);
        }
    }

    /**
     * find object with sql and param map
     * 
     * @param sql
     *            according sql
     * @param properties
     *            according param map
     * @return Object which find
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    public Object getUniqueBeanResultSql(final String sql,
            final Map<String, Object> properties)
            throws HibernateDaoSupportException {
        log.debug("sql:{}, properties:{}", sql, properties);
        try {
            return getHibernateTemplate().execute(new HibernateCallback() {
                public Object doInHibernate(Session session) {
                    Query query = session.createSQLQuery(sql);
                    if (!Validity.isEmpty(properties)) {
                        query.setProperties(properties);
                    }
                    Object object = query.uniqueResult();
                    return object;
                }
            });
        } catch (DataAccessException e) {
            log.error("Error getUniqueBeanResult:{}", e);
            throw new HibernateDaoSupportException(
                    "Error getUniqueBeanResult (#" + this.getClass().getName()
                            + "#):" + e);
        }
    }
    
    /**
     * execute with sql and param arrary
     * 
     * @param sql
     *            according sql
     * @param values
     *            according param arrary
     * @return the count of success record
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    public int executeSql(final String sql, final Map<String, Object> values)
            throws HibernateDaoSupportException {
        log.debug("hql:{}, params:{}", sql, values);
        try {
            return (Integer) getHibernateTemplate().execute(
                    new HibernateCallback() {
                        public Object doInHibernate(Session session) {
                            Query query = session.createSQLQuery(sql);
                            if (!Validity.isEmpty(values)) {
                                query.setProperties(values);
                            }
                            int i = query.executeUpdate();
                            return i;
                        }
                    });
        } catch (DataAccessException e) {
            log.error("Error executeUpdate:{}", e);
            throw new HibernateDaoSupportException("Error executeUpdate (#"
                    + this.getClass().getName() + "#):" + e);
        }
    }

    /**
     * find object with hql
     * 
     * @param hql
     *            according hql
     * @return Object which find
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    public Object getUniqueBeanResult(String hql)
            throws HibernateDaoSupportException {
        return getUniqueBeanResult(hql, new HashMap<String, Object>(0));
    }

    /**
     * update entity with hql and param map
     * 
     * @param hql
     *            according hql
     * @param properties
     *            according param map
     * @return the count of success record
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    public int executeUpdate(final String hql,
            final Map<String, Object> properties)
            throws HibernateDaoSupportException {
        log.debug("hql:{}, properties:{}", hql, properties);

        try {
            return (Integer) getHibernateTemplate().execute(
                    new HibernateCallback() {
                        public Object doInHibernate(Session session) {
                            Query query = session.createQuery(hql);
                            if (!Validity.isEmpty(properties)) {
                                query.setProperties(properties);
                            }
                            int i = query.executeUpdate();
                            return i;
                        }
                    });
        } catch (DataAccessException e) {
            log.error("Error executeUpdate:{}", e);
            throw new HibernateDaoSupportException("Error executeUpdate (#"
                    + this.getClass().getName() + "#):" + e);
        }
    }

    /**
     * update entity with hql and param arrary
     * 
     * @param hql
     *            according hql
     * @param values
     *            according param arrary
     * @return the count of success record
     * @throws HibernateDaoSupportException
     *             when accessing and manipulating database happen exception
     */
    public int executeUpdate(final String hql, final Object[] values)
            throws HibernateDaoSupportException {
        String params = converArrayToString(values);
        log.debug("hql:{}, params:{}", hql, params);

        try {
            return (Integer) getHibernateTemplate().execute(
                    new HibernateCallback() {
                        public Object doInHibernate(Session session) {
                            Query query = session.createQuery(hql);
                            setQueryParam(query, values);
                            int i = query.executeUpdate();
                            return i;
                        }
                    });
        } catch (DataAccessException e) {
            log.error("Error executeUpdate:{}", e);
            throw new HibernateDaoSupportException("Error executeUpdate (#"
                    + this.getClass().getName() + "#):" + e);
        }
    }

    /**
     * group array to string like this (a,b,c)
     * 
     * @param params
     *            array param
     * @return String like this (a,b,c)
     */
    protected String groupInParam(String[] params) {
        StringBuffer inParam = new StringBuffer();
        inParam.append(" (");
        for (int i = 0; i < params.length; i++) {
            inParam.append(params[i]);
            if (i != params.length - 1) {
                inParam.append(",");
            } else {
                inParam.append(") ");
            }
        }
        return inParam.toString();
    }

    /**
     * convert special char
     * 
     * @param value
     *            string which need to convert
     * @return converted string
     */
    protected String convertSpecialChar(String value) {
        String s = null;
        if (value != null) {
            s = value.replace("[", "\\\\[").replace("]", "\\\\]").replace("%",
                    "\\\\%").replace("_", "\\\\_").replace("^", "\\\\^")
                    .replace("\\", "").replace("'", "");
        }
        return s;
    }

    /**
     * get count hql with select hql
     * 
     * @param hql
     *            select hql
     * @return count hql
     */
    protected String getCountHql(String hql) {
        if (Validity.isEmpty(hql)) {
            log.error("Error getHqlBean because hql is empty");
            return "";
        }

        return "select count(*) "
                + hql
                        .substring(hql.indexOf("from"))
                        .replace("fetch", "")
                        .replaceAll(
                                "\\s((?mi)(left|right|inner)?\\s+join)\\s+[^\\s]*Set\\b",
                                " ").split("order by")[0];
    }

    /**
     * set param in query
     * 
     * @param query
     *            db query
     * @param values
     *            param value
     */
    private void setQueryParam(Query query, Object[] values) {
        if (values != null) {
            for (int i = 0; i < values.length; i++) {
                query.setParameter(i, values[i]);
            }
        }
    }

    /**
     * conver array to string
     * 
     * @param values
     *            array value
     * @return string value
     */
    private String converArrayToString(Object[] values) {
        if (values == null) {
            return "";
        }
        StringBuffer formatValues = new StringBuffer();
        for (Object value : values) {
            formatValues.append("{" + value + "}");
        }
        return formatValues.toString();
    }
    
    public Date getCurrentTime(){
    	String hql = "select current_timestamp() from BaseObject";
    	return null;
    }


    /**删除某一个会议下相关联分组和自定义菜单信息**/
    public void deleteMeetingRelationInfo(Long meetingId)  throws HibernateDaoSupportException{
    	String sql = "delete From GroupPlanDetail where  planId in (select id From GroupPlan where meetingId="+meetingId+" )";
    	log.info("删除会议相关的分组详情信息:"+sql);
    	executeUpdate(sql, new HashMap());
    	
    	sql = "delete From GroupPlanMember where  meetingId="+meetingId;
    	log.info("删除会议相关的分组成员信息:"+sql);
    	executeUpdate(sql, new HashMap());
    	
    	sql = "delete From MeetingGroup where  planId in (select id From GroupPlan where meetingId="+meetingId+" )";
    	log.info("删除会议相关的议程分组信息:"+sql);
    	executeUpdate(sql, new HashMap());
    	
    	sql = "delete From GroupPlan where  meetingId="+meetingId;
    	log.info("删除会议相关的分组计划信息:"+sql);
    	executeUpdate(sql, new HashMap());
    	
    	/* dinnerTable 不再维护 john 20111221
    	sql = "delete From DinnerTable where  meetingId="+meetingId;
    	log.info("删除会议相关的用餐分组信息"+sql);
    	executeUpdate(sql, new HashMap());
    	*/
    	
    	sql = "delete From MeetingDinner where  meetingId="+meetingId;
    	log.info("删除会议相关的用餐信息"+sql);
    	executeUpdate(sql, new HashMap());
    	
    	sql = "delete From MeetingContent where  meetingId="+meetingId;
    	log.info("删除会议相关的自定义菜单信息"+sql);
    	executeUpdate(sql, new HashMap());
    	
    	// add by zhoujian删除会场座位相关信息
    	sql = "delete From MeetingSeat where  meetingId="+meetingId;
    	log.info("删除会议相关的会场座位安排信息"+sql);
    	executeUpdate(sql, new HashMap());
    }
    
    /**删除某一个会议下用户相关联的信息，如groupPlanMember, dinnerTable**/
    public void deleteUserRelationInfo(Long userId,Long meetingId)  throws HibernateDaoSupportException{
    	//限定在某个会议下
    	String sql = "delete From GroupPlanMember where memberId = " + userId+" and meetingId="+meetingId;
    	log.info("议程分组-删除某一个会议下用户相关联的信息:"+sql);
    	executeUpdate(sql, new HashMap());
    	
    	/* dinnerTable 不再维护 john 20111221
    	sql = "delete From DinnerTable where memberId = " + userId+" and meetingId="+meetingId;
    	log.info("分桌分组-删除某一个会议下用户相关联的信息"+sql);
    	executeUpdate(sql, new HashMap());
    	*/
    }
    
	/**
	 * 删除此住宿信息
	 * @param meetingId
	 * @param userId
	 * @throws HibernateDaoSupportException 
	 */
	public void deleteHotemRoomUserByUserId(Long meetingId, Long userId) throws HibernateDaoSupportException {
		String sql = "DELETE FROM hotel_room_user WHERE user_id ="
				+ userId
				+ " AND hotel_room_id IN (SELECT room.id FROM hotel_room room WHERE room.meeting_id = "
				+ meetingId + ")";

		executeSql(sql, new HashMap());
		
	}
    
    /**
     * 根据参数查询该用户是否有权限可以查看该议程或用餐的全部分组
     * @param meetingId
     * @param type 分组类型：议程或用餐
     * @param userId 
     * @param relationId 议程或用餐ID
     */
    public GroupPlan getGroupPlanByUserRights(Long meetingId,Integer type,Long userId,Long relationId) throws HibernateDaoSupportException{
    	String sql = "select gp.plan_id,gp.plan_name,gp.plan_type,gp.plan_desc,gp.is_open,gp.import_file from group_plan gp where gp.plan_id in ( select mg.plan_id from meeting_group mg where mg.relation_id = "
    		+ relationId + " and mg.type = " + type + " )";
    	List list = this.queryListSql(sql, -1, -1, new HashMap());
    	if (list.size() > 0) {
    		Object[] obj = (Object[])list.get(0);
    		//已分组是否有权限查看
    		GroupPlan groupPlan= new GroupPlan();
    		int i = 0;
    		groupPlan.setId(Long.valueOf(""+ obj[i++]));
    		groupPlan.setPlanName(""+ obj[i++]);
    		groupPlan.setPlanType(Integer.valueOf(""+ obj[i++]));
    		groupPlan.setPlanDesc(""+ obj[i++]);
    		groupPlan.setIsOpen(""+ obj[i++]);
    		groupPlan.setImportFile(""+obj[i++]);
    		
    		String sqlUserLeverl = "select member_level from meeting_member where meeting_id = "+meetingId+" and user_Id = "+userId;
    		String userLevel = String.valueOf( getUniqueBeanResultSql(sqlUserLeverl,new HashMap()));
    		String isOpen = groupPlan.getIsOpen() == null ? Constants.GROUP_PLAN_STATE.CLOSE
    				: groupPlan.getIsOpen().contains(String.valueOf(userLevel)) ? Constants.GROUP_PLAN_STATE.OPEN
    						: Constants.GROUP_PLAN_STATE.CLOSE;
    		log.debug("groupPlan : = {}",groupPlan);
    		if(Constants.GROUP_PLAN_STATE.OPEN.equals(isOpen)){//无分组有权限
    			return groupPlan;
    		}
    	}
    	return null;
    }
    
    /**
     * 根据参数查询该议程或用餐的全部分组
     * @param meetingId
     * @param type 分组类型：议程或用餐
     * @param userId 
     * @param relationId 议程或用餐ID
     */
    public GroupPlan getGroupPlanByUserRights(Integer type,Long relationId) throws HibernateDaoSupportException{
    	String sql = "select gp.plan_id,gp.plan_name,gp.plan_type,gp.plan_desc,gp.is_open,gp.import_file from group_plan gp where gp.plan_id in ( select mg.plan_id from meeting_group mg where mg.relation_id = "
			+ relationId + " and mg.type = " + type + " )";
		List list = this.queryListSql(sql, -1, -1, new HashMap());
		if (list.size() > 0) {
			Object[] obj = (Object[])list.get(0);
			//已分组是否有权限查看
			GroupPlan groupPlan= new GroupPlan();
			int i = 0;
			groupPlan.setId(Long.valueOf(""+ obj[i++]));
			groupPlan.setPlanName(""+ obj[i++]);
			groupPlan.setPlanType(Integer.valueOf(""+ obj[i++]));
			groupPlan.setPlanDesc(""+ obj[i++]);
			groupPlan.setIsOpen(""+ obj[i++]);
			groupPlan.setImportFile(""+obj[i++]);
			
			return groupPlan;
		}
		return null;
    }
}
