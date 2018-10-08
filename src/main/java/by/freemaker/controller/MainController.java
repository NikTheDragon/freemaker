package by.freemaker.controller;

import by.freemaker.beans.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
public class MainController {
    @RequestMapping(value = {"/", "/index", "/freemaker"}, method = RequestMethod.GET)
    public String index(@ModelAttribute(name = "userForm") User user) {

        return "index";
    }

    @RequestMapping(value = {"/index"}, method = RequestMethod.POST)
    public String reg(@Valid @ModelAttribute(name = "userForm") User user, BindingResult result) {

        System.out.println(result.hasErrors());
        System.out.println(user);

        return "index";
    }
}
