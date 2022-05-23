package DBControllers;
import com.searchdishes.springMVC.model.Recipe;
import com.searchdishes.springMVC.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DatabaseHandler extends DB {
    Connection dbConnection;

    public Connection getDbConnection() throws ClassNotFoundException, SQLException {
        String connectionString = "jdbc:mysql://" + db_host + ":" + db_port + "/" + db_name +
                "?characterEncoding=utf8&useConfigs=maxPerformance&";
        Class.forName("com.mysql.jdbc.Driver");
        dbConnection = DriverManager.getConnection(connectionString, db_user, db_pass);
        return dbConnection;
    }

    public void signUpUser(User user) {
        String insert = "INSERT INTO " + DBconst.USER + " ("
                 + DBconst.USER_FIRSTNAME + ","+ DBconst.USER_LASTNAME +"," +
                DBconst.USER_EMAIL + "," + DBconst.USER_PASSWORD + ")" +
                "VALUES(?,?,?,?)";
        try {
            PreparedStatement prSt = getDbConnection().prepareStatement(insert);
            prSt.setString(1, user.getFirstName());
            prSt.setString(2, user.getLastName());
            prSt.setString(3, user.getEmail());
            prSt.setString(4, user.getPassword());
            prSt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public ResultSet getUser(User user) {
        ResultSet resSet = null;
        String select = "SELECT * FROM " + DBconst.USER + " WHERE " +
                DBconst.USER_EMAIL + "=? AND " + DBconst.USER_PASSWORD + "=?";
        try {
            PreparedStatement prSt = getDbConnection().prepareStatement(select);
            prSt.setString(1, user.getEmail());
            prSt.setString(2, user.getPassword());
            resSet = prSt.executeQuery();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return resSet;
    }

    public int getUserID(User user){
        ResultSet result = getUser(user);
        int id = 0;
        try {
            while (result.next()) {
                id = result.getInt(1);
            }
            return id;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }

    public void newRecipe(Recipe recipe,User user){
        int id =getUserID(user);
        String insert = "INSERT INTO " + DBconst.RECIPE + " ("
                + DBconst.RECIPE_NAME + ","+ DBconst.RECIPE_CONTENT +"," +
                DBconst.RECIPE_INGREDIENTS + "," + DBconst.RECIPE_KITCHEN +
                ","+ DBconst.RECIPE_TIME + "," + DBconst.RECIPE_DIFFICULTY +
                ","+ DBconst.RECIPE_TYPE+ ","+ DBconst.RECIPE_USER_ID+" )" +
                "VALUES(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement prSt = getDbConnection().prepareStatement(insert);
            prSt.setString(1,recipe.getName());
            prSt.setString(2,recipe.getContent());
            prSt.setString(3,recipe.getIngredients());
            prSt.setString(4,recipe.getKitchen());
            prSt.setString(5,recipe.getTime());
            prSt.setString(6,recipe.getDifficulty());
            prSt.setString(7,recipe.getType());
            prSt.setInt(8,id);
            prSt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public List<Recipe> getRecipes(){
        String select = "SELECT * FROM " + DBconst.RECIPE;
        PreparedStatement prSt = null;
        List<Recipe> recipes = new ArrayList<Recipe>();
        try {
            prSt = getDbConnection().prepareStatement(select);
            ResultSet resSet = prSt.executeQuery();
            while (resSet.next()) {
                Recipe temp = new Recipe(resSet.getString(2),resSet.getString(3),
                        resSet.getString(4),resSet.getString(6),
                        resSet.getString(7),resSet.getString(8),
                        resSet.getString(9),"images/IMG_20170807_210458_987.jpg");
                recipes.add(temp);
            }
            return recipes;
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return recipes;
    }
}

