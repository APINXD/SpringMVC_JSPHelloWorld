package com.searchdishes.springMVC.controller;

import DBControllers.DatabaseHandler;
import com.searchdishes.springMVC.model.Recipe;
import com.searchdishes.springMVC.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@SessionAttributes(value = "Recipe") //или @SessionAttributes("user")
@Controller
public class MainController {

    public User logUser = new User();
    public boolean logged = false;

    /*First method on start application*/
    /*Попадаем сюда на старте приложения (см. параметры аннтоции и настройки пути после деплоя) */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView main() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userJSP", new User());
        modelAndView.addObject("Recipe", new Recipe());
        modelAndView.setViewName("searchPage");
        return modelAndView;
    }

    /*как только на index.jsp подтвердится форма
    <spring:form method="post"  modelAttribute="userJSP" action="check-user">,
    то попадем вот сюда
     */
    @RequestMapping(value = "/check-user")
    public ModelAndView checkUser(@ModelAttribute("userJSP") User user) {
        ModelAndView modelAndView = new ModelAndView();

        //имя представления, куда нужно будет перейти
        modelAndView.setViewName("secondPage");

        //записываем в атрибут userJSP (используется на странице *.jsp объект user
        modelAndView.addObject("userJSP", user);

        return modelAndView; //после уйдем на представление, указанное чуть выше, если оно будет найдено.
    }

    @RequestMapping(value = "/search-page")
    public ModelAndView searchPage(@ModelAttribute("userJSP") User user) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("searchPage");
        modelAndView.addObject("userJSP", user);
        modelAndView.addObject("Recipe", new Recipe());
        return modelAndView;
    }

    @RequestMapping(value = "/signingIn")
    public ModelAndView signingIn(@ModelAttribute("userJSP") User user) {
        DatabaseHandler dbHandler = new DatabaseHandler();
        ResultSet result = dbHandler.getUser(user);
        String firstName = "";
        try {
            while (result.next()) {
                firstName = result.getString(2);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ModelAndView modelAndView = new ModelAndView();
        if (firstName.length() <= 0) {
            modelAndView.setViewName("signin");
            modelAndView.addObject("userJSP", user);
        } else {
            modelAndView.setViewName("myprofile");
            modelAndView.addObject("userJSP", user);
            logUser = user;
            logged = true;
        }
        return modelAndView;
    }


    @RequestMapping(value = "/generate-recipe")
    public ModelAndView generateRecipe(@ModelAttribute("Recipe") Recipe recipe) {
        DatabaseHandler dbHandler = new DatabaseHandler();
        Recipe outRecipe = dbHandler.searchRecipe(recipe);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("recipe");
        modelAndView.addObject("Recipe", outRecipe);
        return modelAndView;
    }

    @RequestMapping(value = "/all-recipes")
    public ModelAndView allRecipes(@ModelAttribute("userJSP") User user) {
//        response.setHeader("Set-Cookie", "test=value; Path=/");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("allRecipes");
        modelAndView.addObject("userJSP", user);
        DatabaseHandler dbHandler = new DatabaseHandler();
        List<Recipe> recipes = dbHandler.getRecipes();
        modelAndView.addObject("Recipes", recipes);
        modelAndView.addObject("Recipe", new Recipe());
        return modelAndView;
    }

    @RequestMapping(value = "/searchRecipes")
    public ModelAndView searchAllRecipes(@ModelAttribute("Recipe") Recipe recipe) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("allRecipes");
        DatabaseHandler dbHandler = new DatabaseHandler();
        String output = "";
        modelAndView.addObject("Recipes", dbHandler.searchRecipes(recipe));
        return modelAndView;
    }

    @RequestMapping(value = "/sign-upping")
    public ModelAndView signUpping(@ModelAttribute("userJSP") User user) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("signup");
        modelAndView.addObject("userJSP", user);
        return modelAndView;
    }

    @RequestMapping(value = "/signUp")
    public ModelAndView signUp(@ModelAttribute("userJSP") User user) {
        String temp = "@";
//        if (firstName.length()>2&& lastName.length()>2&&email.contains(temp)&& password.length()>3){
            DatabaseHandler dbHandler = new DatabaseHandler();
            dbHandler.signUpUser(user);
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setViewName("myprofile");
            modelAndView.addObject("userJSP", user);
            logged = true;
            logUser = user;
            return modelAndView;
//        }
//        else{
//            ModelAndView modelAndView = new ModelAndView();
//            modelAndView.setViewName("signup");
//            return modelAndView;
//        }
    }

//    @Bean
//    @Scope(
//            value = WebApplicationContext.SCOPE_SESSION,
//            proxyMode = ScopedProxyMode.TARGET_CLASS)
//    public TodoList todos() {
//        return new TodoList();
//    }

//    @Controller
//    @RequestMapping("/scopedproxy")
//    public class TodoControllerWithScopedProxy {
//
//        private TodoList todos;
//
//        // constructor and request mappings
//    }


    @RequestMapping(value = "/new-recipe")
    public ModelAndView newRecipe() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("newrecipe");
        modelAndView.addObject("Recipe", new Recipe());
        return modelAndView;
    }

    @RequestMapping(value = "/createRecipe")
    public ModelAndView createRecipe(@ModelAttribute("Recipe")Recipe recipe){
        DatabaseHandler dbHandler = new DatabaseHandler();
        dbHandler.newRecipe(recipe,logUser);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("recipe");
        modelAndView.addObject("Recipe", recipe);
        return modelAndView;
    }

    @RequestMapping(value = "/recipe", method = RequestMethod.POST)
    public ModelAndView Recipe(@ModelAttribute("Recipes")List<Recipe> recipes){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("recipe");
        Recipe recipe = recipes.get(0);
        modelAndView.addObject("Recipe", recipe);
        return modelAndView;
    }

    @RequestMapping(value = "/my-profile")
    public ModelAndView myProfile(@ModelAttribute("userJSP") User user) {
//        DatabaseHandler dbHandler = new DatabaseHandler();
//        ResultSet result = dbHandler.getUser(user);
//        String firstName="";
//        try {
//            while (result.next()) {
//                firstName = result.getString(2);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        if (firstName.length()<=0){
        if (!logged){
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setViewName("signin");
            modelAndView.addObject("userJSP", user);
            return modelAndView;
        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("myprofile");
        modelAndView.addObject("userJSP", logUser);
        return modelAndView;
    }
}
