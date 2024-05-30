package ma.ensaf.controller;

import ma.ensaf.model.User;
import ma.ensaf.service.RandomUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/users")
public class UserController {

    @Autowired
    private RandomUserService randomUserService;

    @GetMapping("/random")
    public User getRandomUser() {
        return randomUserService.generateRandomUser();
    }

    @GetMapping("/random/{count}")
    public List<User> getRandomUsers(@PathVariable int count) {
        return randomUserService.generateRandomUsers(count);
    }
}

