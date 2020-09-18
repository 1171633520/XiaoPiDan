package com.yj.resume.dao.Impl;

import com.yj.resume.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Component
public class UserDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 受教育权
     * @return
     */
    public List<User> getUserInfo(String userName) {
        List<User> mResult = new ArrayList<User>();
        String sql="select * from user  ";
        if (!StringUtils.isEmpty(userName)) {
            sql += " where userName like %" + userName + "%";
        }
        mResult = jdbcTemplate.query(sql, new RowMapper<User>() {
            public User mapRow(ResultSet resultSet, int i) throws SQLException, SQLException {
                User bean = new User();
                bean.setId(resultSet.getLong("id"));
                bean.setUserName(resultSet.getString("userName"));
                bean.setPassword(resultSet.getString("password"));
                bean.setEmail(resultSet.getString("email"));
                return bean;
            }
        });
        return mResult;
    }

    /**
     * 受教育权
     * @return
     */
    public List<User> checkUser(String userName) {
        List<User> mResult = new ArrayList<User>();
        String sql="select * from user  ";
        if (!StringUtils.isEmpty(userName)) {
            sql += " where userName=?";
        }
        mResult = jdbcTemplate.query(sql, new Object[]{userName},new RowMapper<User>() {
            public User mapRow(ResultSet resultSet, int i) throws SQLException, SQLException {
                User bean = new User();
                bean.setId(resultSet.getLong("id"));
                bean.setUserName(resultSet.getString("userName"));
                bean.setPassword(resultSet.getString("password"));
                bean.setEmail(resultSet.getString("email"));
                return bean;
            }
        });
        return mResult;
    }

    /**
     * 新增用户
     * @param user
     * @return
     */
    public boolean insert(User user) {
        String sql = "INSERT INTO user (userName,password,email) values (?,?,?)";
        //执行新增
        int result = jdbcTemplate.update(sql,user.getUserName(),user.getPassword(),user.getEmail());
        return result > 0 ? true : false;
    }

    public boolean update(User user) {
        if (null != user) {
            StringBuffer sql = new StringBuffer("UPDATE user SET ");
            //参数
            List<Object> args = new ArrayList<>();
            if (!StringUtils.isEmpty(user.getUserName())) {
                sql.append("userName=?");
                args.add(user.getUserName());
            }

            if (!StringUtils.isEmpty(user.getPassword())) {
                sql.append(",password=?");
                args.add(user.getPassword());
            }

            if (!StringUtils.isEmpty(user.getEmail())) {
                sql.append(",email=?");
                args.add(user.getEmail());
            }

            //执行更新
            int result = jdbcTemplate.update(sql.toString(),args.toArray(new Object[]{}));
            return result > 0 ? true : false;
        }

        return false;
    }

    /**
     * 删除用户
     * @param id
     * @return
     */
    public boolean delete(Long id) {
        String sql = "DELETE FROM user WHERE id=?";
        //执行删除
        int result = jdbcTemplate.update(sql,id);
        return result > 0 ? true : false;
    }

    public List<User> getUserInfo(Long id) {
        List<User> mResult = new ArrayList<User>();
        String sql="select * from user where id = ? ";
        mResult = jdbcTemplate.query(sql, new Object[]{id},new RowMapper<User>() {
            public User mapRow(ResultSet resultSet, int i) throws SQLException, SQLException {
                User bean = new User();
                bean.setId(resultSet.getLong("id"));
                bean.setUserName(resultSet.getString("userName"));
                bean.setPassword(resultSet.getString("password"));
                bean.setEmail(resultSet.getString("email"));
                return bean;
            }
        });
        return mResult;
    }
}
